----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2023 06:25:12 PM
-- Design Name: 
-- Module Name: memory_interface - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memory_interface is
  Generic (
    address_dimension: integer := 32;
    data_dimension: integer := 32;
    cache_page_address_dimension: integer := 6;
    cache_data_dimension: integer:= 256;
    cache_offset_address_dimension : integer := 5
  );
  Port (
    instruction_memory_request: in std_logic;
    instruction_memory_ready: out std_logic;
    instruction_memory_data: out std_logic_vector(data_dimension-1 downto 0);
    instruction_memory_address: in std_logic_vector (address_dimension-1 downto 0);
    

    data_memory_request: in std_logic;
    data_memory_ready: out std_logic;
    data_memory_data_in:   in std_logic_vector(data_dimension-1 downto 0); 
    data_memory_data_out:  out std_logic_vector(data_dimension-1 downto 0); 
    data_memory_address: in std_logic_vector(address_dimension-1 downto 0);
    data_memory_direction: in std_logic;
    data_memory_write_mode: in std_logic_vector(1 downto 0); 
    clk: in std_logic;
    reset: in std_logic
  );
end memory_interface;

architecture Behavioral of memory_interface is
    component cache_memory is
      PORT (
        a : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        d : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
        clk : IN STD_LOGIC;
        we : IN STD_LOGIC;
        i_ce : IN STD_LOGIC;
        spo : OUT STD_LOGIC_VECTOR(255 DOWNTO 0)
      );
    end component cache_memory;
    component cache_register is
      Generic ( page_dimension: integer:= 256;
                data_address_dimension: integer:= 5
      );
      Port (
        page_in: in std_logic_vector(page_dimension-1 downto 0);
        page_out: out std_logic_vector(page_dimension-1 downto 0);
        
        page_number: in std_logic;
        page_access: in std_logic;
        write_enable: in std_logic;
        
        data_out: out std_logic_vector(31 downto 0);
        data_in: in std_logic_vector(31 downto 0);
        data_write: in std_logic;
        data_access: in std_logic;
        data_address: in std_logic_vector(data_address_dimension-1 downto 0);
        data_write_mode: in std_logic_vector(1 downto 0);
        
        clk: in std_logic;
        reset: in std_logic
        
        );
    end component cache_register;

    signal cache_we: std_logic;
    signal cache_en: std_logic;
    signal cache_address: std_logic_vector (cache_page_address_dimension-1 downto 0);
    signal cache_data_in: std_logic_vector(cache_data_dimension-1 downto 0);
    signal cache_data_out: std_logic_vector (cache_data_dimension-1 downto 0);
   
    
    signal register_page_in: std_logic_vector(cache_data_dimension-1 downto 0);
    signal register_page_out: std_logic_vector(cache_data_dimension-1 downto 0);
        
    signal register_page_number: std_logic;
    signal register_page_access: std_logic;
    signal register_write_enable: std_logic;
        
    signal register_data_out: std_logic_vector(31 downto 0);
    signal register_data_in: std_logic_vector(31 downto 0);
    signal register_data_write: std_logic;
    signal register_data_access: std_logic;
    signal register_data_address: std_logic_vector(cache_offset_address_dimension-1 downto 0);
    
    signal loaded_page1: std_logic_vector(cache_page_address_dimension-1 downto 0) := (others => '0');
    signal loaded_page2: std_logic_vector(cache_page_address_dimension-1 downto 0) := (others => '0');
    signal page1_loaded: std_logic;
    signal page2_loaded: std_logic;
    signal offset_overflow: std_logic;
    
    type state is (wait_request, 
                    data_page1_request,
                    data_page1_load,
                    data_page2_request,
                    data_page2_load,
                    write_data,
                    write_page1_send, 
                    write_page2_send,
                    read_data,
                    data_latch,
                    instruction_page1_request,
                    instruction_page1_load,
                    instruction_page2_request,
                    instruction_page2_load,
                    instruction_read,
                    instruction_latch);
    signal current_state: state;
    
begin
    cache: cache_memory port map ( 
        clk => clk,
        i_ce => cache_en,
        we => cache_we,
        a => cache_address,
        d => cache_data_in,
        spo => cache_data_out
    );
    
    reg: cache_register port map (
    
        page_in => register_page_in,
        page_out => register_page_out,
        
        page_number => register_page_number,
        page_access => register_page_access,
        write_enable => register_write_enable,
        
        data_out => register_data_out,
        data_in => register_data_in,
        data_write => register_data_write,
        data_access => register_data_access,
        data_address => register_data_address,
        data_write_mode => data_memory_write_mode,
        clk => clk,
        reset => reset
    );
    
    process (clk) is 
        constant address_range: integer:=cache_offset_address_dimension+cache_page_address_dimension;
        variable data_address: std_logic_vector((cache_offset_address_dimension+cache_page_address_dimension-1) downto 0);
        
        variable offset1,offset2: std_logic_vector(address_range-1 downto 0);
        begin 
        if (rising_edge(clk)) then
            if (reset='0') then 
                page1_loaded<='0';
                page2_loaded<='0';
                current_state<=wait_request;
            else 
                case current_state is 
                    when wait_request =>
                        offset_overflow<='0';
                        if (data_memory_request = '1') then 
                            data_address(address_range-1 downto 0):=data_memory_address(address_range-1 downto 0);
                            offset1:= std_logic_vector(unsigned(data_address));
                            offset2:= std_logic_vector(unsigned(data_address)+3);
                                if (loaded_page1 = offset1(address_range-1 downto cache_offset_address_dimension) and page1_loaded='1') then -- page 1 verify
                                    if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then --verify offset
                                        offset_overflow<='0';
                                        if (data_memory_direction = '1') then 
                                            current_state<=write_data;
                                        else 
                                            current_state<=read_data;
                                        end if;
                                    else 
                                        offset_overflow<='1';
                                        if (loaded_page2=offset2(address_range-1 downto cache_offset_address_dimension) and page2_loaded='1') then 
                                            if (data_memory_direction = '1') then 
                                                current_state<=write_data;
                                            else 
                                                current_state<=read_data;
                                            end if;
                                        else 
                                            current_state<=data_page2_request;
                                        end if;
                                    end if;
                                else
                                    if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then 
                                        offset_overflow<='0';
                                        current_state<=data_page1_request;
                                    else 
                                        offset_overflow<='1';
                                        current_state<=data_page1_request;
                                    end if;
                                end if;
                         
                        elsif (instruction_memory_request = '1') then
                            data_address(address_range-1 downto 0):=instruction_memory_address(address_range-1 downto 0);
                            offset1:= std_logic_vector(unsigned(data_address));
                            offset2:= std_logic_vector(unsigned(data_address)+3);
                            if (loaded_page1 = offset1(address_range-1 downto cache_offset_address_dimension) and page1_loaded='1') then -- page 1 verify
                                if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then --verify offset
                                    offset_overflow<='0';
                                    current_state<=instruction_read;
                                else 
                                    offset_overflow<='1';
                                    if (loaded_page2=offset2(address_range-1 downto cache_offset_address_dimension) and page2_loaded='1') then 
                                        current_state<=instruction_read;
                                    else 
                                        current_state<=instruction_page2_request;
                                    end if;
                                end if;
                            else
                                if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then 
                                    offset_overflow<='0';
                                    current_state<=instruction_page1_request;
                                else 
                                    offset_overflow<='1';
                                    current_state<=instruction_page1_request;
                                end if;
                            end if;
                        end if;
                    when data_page1_request =>
                        current_state <= data_page1_load;
                        page1_loaded<='1';
                    when data_page1_load => 
                        if (offset_overflow='1') then
                            current_state <= data_page2_request;
                        else 
                            if (data_memory_direction = '1') then
                                current_state <= write_data;
                            else 
                                current_state <= read_data;
                            end if;
                        end if;
                    when data_page2_request =>
                        current_state <= data_page2_load;
                        page2_loaded<='1';
                    when data_page2_load => 
                        if (data_memory_direction = '1') then
                            current_state <= write_data;
                        else 
                            current_state <= read_data;
                        end if;
                    when write_data => 
                        current_state <= write_page1_send;
                    when write_page1_send => 
                        if (offset_overflow = '1') then 
                            current_state <= write_page2_send;
                        elsif (instruction_memory_request = '1') then
                            data_address(address_range-1 downto 0):=instruction_memory_address(address_range-1 downto 0);
                            offset1:= std_logic_vector(unsigned(data_address));
                            offset2:= std_logic_vector(unsigned(data_address)+3);
                            if (loaded_page1 = offset1(address_range-1 downto cache_offset_address_dimension) and page1_loaded='1') then -- page 1 verify
                                if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then --verify offset
                                    offset_overflow<='0';
                                    current_state<=instruction_read;
                                else 
                                    offset_overflow<='1';
                                    if (loaded_page2=offset2(address_range-1 downto cache_offset_address_dimension) and page2_loaded='1') then 
                                        current_state<=instruction_read;
                                    else 
                                        current_state<=instruction_page2_request;
                                    end if;
                                end if;
                            else
                                if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then 
                                    offset_overflow<='0';
                                    current_state<=instruction_page1_request;
                                else 
                                    offset_overflow<='1';
                                    current_state<=instruction_page1_request;
                                end if;
                            end if;
                        else 
                            current_state <= wait_request;
                        end if;
                        
                    when write_page2_send =>
                        
                        if (instruction_memory_request = '1') then
                            data_address(address_range-1 downto 0):=instruction_memory_address(address_range-1 downto 0);
                            offset1:= std_logic_vector(unsigned(data_address));
                            offset2:= std_logic_vector(unsigned(data_address)+3);
                            if (loaded_page1 = offset1(address_range-1 downto cache_offset_address_dimension) and page1_loaded='1') then -- page 1 verify
                                if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then --verify offset
                                    offset_overflow<='0';
                                    current_state<=instruction_read;
                                else 
                                    offset_overflow<='1';
                                    if (loaded_page2=offset2(address_range-1 downto cache_offset_address_dimension) and page2_loaded='1') then 
                                        current_state<=instruction_read;
                                    else 
                                        current_state<=instruction_page2_request;
                                    end if;
                                end if;
                            else
                                if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then 
                                    offset_overflow<='0';
                                    current_state<=instruction_page1_request;
                                else 
                                    offset_overflow<='1';
                                    current_state<=instruction_page1_request;
                                end if;
                            end if;
                        else 
                            current_state <= wait_request;
                        end if;
                    when read_data =>
                        current_state <= data_latch;
                    when data_latch => 
                        if (instruction_memory_request = '1') then
                            data_address(address_range-1 downto 0):=instruction_memory_address(address_range-1 downto 0);
                            offset1:= std_logic_vector(unsigned(data_address));
                            offset2:= std_logic_vector(unsigned(data_address)+3);
                            if (loaded_page1 = offset1(address_range-1 downto cache_offset_address_dimension) and page1_loaded='1') then -- page 1 verify
                                if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then --verify offset
                                    offset_overflow<='0';
                                    current_state<=instruction_read;
                                else 
                                    offset_overflow<='1';
                                    if (loaded_page2=offset2(address_range-1 downto cache_offset_address_dimension) and page2_loaded='1') then 
                                        current_state<=instruction_read;
                                    else 
                                        current_state<=instruction_page2_request;
                                    end if;
                                end if;
                            else
                                if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then 
                                    offset_overflow<='0';
                                    current_state<=instruction_page1_request;
                                else 
                                    offset_overflow<='1';
                                    current_state<=instruction_page1_request;
                                end if;
                            end if;
                        else 
                            current_state <= wait_request;
                        end if;
                    when instruction_page1_request =>
                        current_state <= instruction_page1_load;
                        page1_loaded<='1';
                    when instruction_page1_load => 
                        if (offset_overflow='0') then 
                            current_state <= instruction_read;
                        else 
                            current_state <= instruction_page2_request;
                        end if;
                    when instruction_page2_request =>
                        current_state <= instruction_page2_load;
                        page2_loaded<='1';
                    when instruction_page2_load =>
                        current_state <= instruction_read;
                    when instruction_read =>
                        current_state <= instruction_latch;
                    when instruction_latch => 
                        current_state <= wait_request;
                end case;
            end if;
        end if;
        
        
    end process;
    
    
    process (current_state) is 
        begin
        
        case current_state is 
            when wait_request => 
                cache_en<='0';
                instruction_memory_ready<='1';
                data_memory_ready<='1';
                register_page_access <= '0';
                register_write_enable <='0';
                register_data_access <='0';
                register_data_write<='0';
                
            when data_page1_request => 
                cache_address <= data_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension);
                loaded_page1 <= data_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension);
                cache_we<='0';
                cache_en<='1';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_data_access <='0';
                register_data_write<='0';
                
            when data_page1_load => 
                cache_we<='0';
                cache_en<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                
                register_page_number<='0';
                register_page_access <= '1';
                register_write_enable <='1';
                register_data_access <='0';
                register_data_write<='0';
                
            when data_page2_request => 
            
                cache_we<='0';
                cache_en<='1';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                cache_address <= std_logic_vector(unsigned(data_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension))+1);
                loaded_page2 <= std_logic_vector(unsigned(data_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension))+1);
                register_page_access <= '0';
                register_write_enable <='0';
                register_page_number<='0';
                register_data_access <='0';
                register_data_write<='0';

            when data_page2_load => 
                cache_we<='0';
                cache_en<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '1';
                register_write_enable <='1';
                register_page_number<='1';
                register_data_access <='0';
                register_data_write<='0';
                
            when write_data => 
                register_data_address<=data_memory_address(cache_offset_address_dimension-1 downto 0);
                cache_we<='1';
                cache_en<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_data_access <='1';
                register_data_write<='1';
                
                register_data_in <= data_memory_data_in;
            when write_page1_send => 
                cache_we<='1';
                cache_en<='1';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '1';
                register_write_enable <='0';
                register_page_number<='0';
                register_data_access <='0';
                register_data_write<='0';

            when write_page2_send => 
                cache_we<='1';
                cache_en<='1';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '1';
                register_write_enable <='0';
                register_page_number<='1';
                register_data_access <='0';
                register_data_write<='0';
            when read_data => 
                register_data_address<=data_memory_address(cache_offset_address_dimension-1 downto 0);
                cache_we<='0';
                cache_en<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_page_number<='0';
                register_data_access <='1';
                register_data_write<='0';
                
            when data_latch =>
                cache_we<='0';
                cache_en<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_page_number<='0';
                register_data_access <='0';
                register_data_write<='0';
                data_memory_data_out<=register_data_out;
                
            when instruction_page1_request => 
                cache_address <= instruction_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension);
                loaded_page1 <= instruction_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension);
                cache_we<='0';
                cache_en<='1';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_data_access <='0';
                register_data_write<='0';
            when instruction_page1_load => 
                cache_we<='0';
                cache_en<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_number<='0';
                register_page_access <= '1';
                register_write_enable <='1';
                register_data_access <='0';
                register_data_write<='0';
            when instruction_page2_request => 
                cache_address <= std_logic_vector(unsigned(instruction_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension))+1);
                loaded_page2<= std_logic_vector(unsigned(instruction_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension))+1);
                cache_we<='0';
                cache_en<='1';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_data_access <='0';
                register_data_write<='0';
                
            when instruction_page2_load => 
                cache_we<='0';
                cache_en<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_number<='1';
                register_page_access <= '1';
                register_write_enable <='1';
                register_data_access <='0';
                register_data_write<='0';
                
            when instruction_read => 
                register_data_address<=instruction_memory_address(cache_offset_address_dimension-1 downto 0);
                cache_we<='0';
                cache_en<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_page_number<='0';
                register_data_access <='1';
                register_data_write<='0';
            
            when instruction_latch => 
                instruction_memory_data<=register_data_out;

        end case;
       
    end process;
    
    register_page_in <= cache_data_out;
    cache_data_in <= register_page_out;
end Behavioral;
