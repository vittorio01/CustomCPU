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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memory_interface is
  Port (
    instruction_memory_request: in std_logic;
    instruction_memory_ready: out std_logic;
    instruction_memory_data: out std_logic_vector(7 downto 0);
    instruction_memory_address: in std_logic_vector (63 downto 0);
    
    data_memory_request: in std_logic;
    data_memory_ready: out std_logic;
    data_memory_data_in:   in std_logic_vector(7 downto 0); 
    data_memory_data_out:  out std_logic_vector(7 downto 0); 
    data_memory_address: in std_logic_vector(63 downto 0);
    data_memory_direction: in std_logic;
    
    clk: in std_logic;
    reset: in std_logic
  );
end memory_interface;

architecture Behavioral of memory_interface is
    component blk_mem_gen_0 is
      PORT (
        clka : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    end component;
    
    type state is (wait_request, instruction_fetch_request, instruction_fetch_wait, instruction_ready, data_fetch_RDrequest, data_fetch_WRrequest,data_fetch_RDwait, data_fetch_WRwait,data_ready);
     
    signal cache_we: std_logic_vector (0 downto 0);
    signal cache_en: std_logic;
    signal cache_address: std_logic_vector(15 downto 0);
    signal cache_data_in: std_logic_vector(7 downto 0);
    signal cache_data_out: std_logic_vector (7 downto 0);
    signal current_state: state:= wait_request;
begin
    cache: blk_mem_gen_0 port map (ena => cache_en,clka => clk, wea => cache_we , addra => cache_address, dina => cache_data_in, douta => cache_data_out);
    
    process (clk) is 
        begin 
        if (rising_edge(clk)) then
            if (reset='0') then 
                current_state<=wait_request;
            else 
                if (current_state = wait_request) then 
                    if (data_memory_request = '1') then
                        if (data_memory_direction='1') then
                            current_state <= data_fetch_WRrequest;
                        else 
                            current_state <= data_fetch_RDrequest;
                        end if;
                    elsif (instruction_memory_request = '1') then 
                        current_state <= instruction_fetch_request;
                    end if;
                elsif (current_state = instruction_fetch_request) then
                    current_state <= instruction_fetch_wait;
                elsif (current_state = data_fetch_RDrequest) then 
                    current_state <= data_fetch_RDwait;
                elsif (current_state = data_fetch_WRrequest) then 
                    current_state <= data_fetch_WRwait;
                elsif (current_state = instruction_fetch_wait) then
                    current_state <= instruction_ready;
                elsif (current_state = data_fetch_RDwait) then
                    current_state <= data_ready;
                elsif (current_state = data_fetch_WRwait) then
                    current_state <= data_ready;
                elsif (current_state = instruction_ready) then
                    if (instruction_memory_request = '0') then 
                        current_state <= wait_request;
                    end if;
                elsif (current_state = data_ready) then
                    if (data_memory_request = '0') then 
                        if (instruction_memory_request = '1') then 
                            current_state <= instruction_fetch_request;
                        else  
                            current_state <= wait_request;
                        end if;
                    end if;
                else 
                    current_state<=wait_request;
                end if; 
            end if;
        end if;
    end process;
    
    process (current_state) is 
        begin
        case current_state is 
            when wait_request=>
                instruction_memory_ready <= '0';
                data_memory_ready <= '0';
                cache_en <= '0';
                cache_we <= "0";
          
         
            when instruction_fetch_request =>
                instruction_memory_ready <= '0';
                data_memory_ready <= '0';
                cache_en <= '1';
                cache_we <= "1";
                cache_address <= instruction_memory_address(15 downto 0);
 
            when instruction_fetch_wait =>
                instruction_memory_ready <= '0';
                data_memory_ready <= '0';
                cache_en <= '1';
                cache_we <= "1";
                cache_address <= instruction_memory_address(15 downto 0);

                
            when data_fetch_RDrequest =>
                instruction_memory_ready <= '0';
                data_memory_ready <= '0';
                cache_en <= '1';
                cache_we <= "1";
                cache_address <= data_memory_address(15 downto 0);

                
            when data_fetch_WRrequest =>
                instruction_memory_ready <= '0';
                data_memory_ready <= '0';
                cache_en <= '1';
                cache_we <= "0";
                cache_address <= data_memory_address(15 downto 0);
                cache_data_in <= data_memory_data_in;

                
            when data_fetch_RDwait => 
                instruction_memory_ready <= '0';
                data_memory_ready <= '0';
                cache_en <= '1';
                cache_we <= "1";
                cache_address <= data_memory_address(15 downto 0);

                
            when data_fetch_WRwait => 
                instruction_memory_ready <= '0';
                data_memory_ready <= '0';
                cache_en <= '1';
                cache_we <= "0";
                cache_address <= data_memory_address(15 downto 0);
                cache_data_in <= data_memory_data_in;
                
            when instruction_ready =>
                instruction_memory_ready <= '1';
                data_memory_ready <= '0';
                cache_en <= '0';
                instruction_memory_data <= cache_data_out;

                
            when data_ready =>
                instruction_memory_ready <= '0';
                data_memory_ready <= '1';
                cache_en <= '0';
                data_memory_data_out <= cache_data_out;
        end case;
    end process;
end Behavioral;
