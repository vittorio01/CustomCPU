----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/18/2023 06:05:16 PM
-- Design Name: 
-- Module Name: memory_access_stage - Behavioral
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

entity memory_access_stage is
    Port (
    new_program_counter_in: in std_logic_vector(31 downto 0);
    new_program_counter_out: out std_logic_vector(31 downto 0);
    
    memory_write_enable: in std_logic;
    memory_read_enable: in std_logic;
    register_writeback_enable: in std_logic;
    
    branch_enable: in std_logic;
    pc_address_load_enable: out std_logic;
    
    data_in: in std_logic_vector(31 downto 0);
    register_writeback_address_in: in std_logic_vector(4 downto 0);
    register_writeback_address_out: out std_logic_vector(4 downto 0);
    register_writeback_enable_out: out std_logic;
    register_writeback_data_out: out std_logic_vector(31 downto 0);
    
    data_memory_address_in: in std_logic_vector(31 downto 0);
    data_memory_access_mode: in std_logic_vector(2 downto 0);
    
    data_memory_request: out std_logic;
    data_memory_ready: in std_logic;
    data_memory_data_in:   out std_logic_vector(31 downto 0); 
    data_memory_data_out:  in std_logic_vector(31 downto 0); 
    data_memory_address: out std_logic_vector(31 downto 0);
    data_memory_direction: out std_logic;
    data_memory_write_mode: out std_logic_vector(1 downto 0); 
    
    pipeline_step: in std_logic;
    memory_access_stage_ready: out std_logic;
    output_mask: in std_logic;
    
    clk: in std_logic;
    reset: in std_logic
    );
end memory_access_stage;

architecture Behavioral of memory_access_stage is
    type state is (step_wait,data_memory_access,output_latch,nop);
    signal current_state: state;
begin
    process (clk) is 
    variable memory_access_started: std_logic;
    variable memory_access_direction: std_logic;
    
    variable current_new_program_counter_in: std_logic_vector(31 downto 0);
    
    variable current_memory_write_enable: std_logic;
    variable current_memory_read_enable: std_logic;
    variable current_register_writeback_enable: std_logic;
    
    variable current_branch_enable: std_logic;
    
    variable current_data_in: std_logic_vector(31 downto 0);
    variable current_register_writeback_address_in: std_logic_vector(4 downto 0);
    
    variable current_data_memory_address_in: std_logic_vector(31 downto 0);
    variable current_data_memory_access_mode: std_logic_vector(2 downto 0);
    
    begin 
        if (rising_edge(clk)) then 
            if (reset ='0') then
                current_state <= step_wait;
                
            else 
                if (output_mask ='0') then
                    if (current_state = step_wait) then 
                        memory_access_started:='0';
                        if (pipeline_step ='1') then 
                            current_new_program_counter_in:= new_program_counter_in;
                            current_memory_write_enable:= memory_write_enable;
                            current_memory_read_enable:= memory_read_enable;
                            current_register_writeback_enable:= register_writeback_enable;
                            current_branch_enable:= branch_enable;
                            current_data_in:= data_in;
                            current_register_writeback_address_in:= register_writeback_address_in;
                            current_data_memory_address_in:= data_memory_address_in;
                            current_data_memory_access_mode:= data_memory_access_mode;
                            
                                if (current_memory_write_enable = '1') then
                                    memory_access_started:='0';
                                    memory_access_direction:='1';
                                    data_memory_request<='1';
                                    data_memory_direction <='1';
                                    data_memory_write_mode <= current_data_memory_access_mode(1 downto 0);
                                    data_memory_data_in <= current_data_in;
                                    data_memory_address <= current_data_memory_address_in;
                                    memory_access_stage_ready <='0';
                                    current_state <= data_memory_access;
                                elsif (current_memory_read_enable = '1') then
                                    memory_access_started:='0';
                                    memory_access_direction:='0';
                                    data_memory_request<='1';
                                    data_memory_direction <='0';
                                    data_memory_address <= current_data_memory_address_in;
                                    current_state <= data_memory_access;
                                    memory_access_stage_ready <='0';
                                elsif (current_register_writeback_enable= '1') then
                                    current_state <= output_latch;
                                    memory_access_stage_ready <='0';
                                elsif (branch_enable = '1') then 
                                    current_state <= output_latch;
                                else 
                                    memory_access_stage_ready <= '0';
                                    current_state <= nop;
                                end if;
                            else 
                                data_memory_request <='0';
                                memory_access_stage_ready<='1';
                            end if;
                        elsif (current_state = data_memory_access) then
                            memory_access_stage_ready <= '0';
                            if (memory_access_direction = '1') then 
                                if (memory_access_started='0') then 
                                    memory_access_started:='1';
                                else 
                                    if (data_memory_ready = '1') then
                                        current_state <= output_latch;
                                    end if;
                                end if;
                            elsif (memory_access_direction= '0') then 
                                if (memory_access_started='0') then 
                                    
                                    memory_access_started:='1';
                                else 
                                    if (data_memory_ready = '1') then
                                        current_state <= output_latch;
                                    end if;
                                end if;
                            end if;
                        elsif (current_state = output_latch) then 
                            pc_address_load_enable <= current_branch_enable;
                            memory_access_stage_ready <= '0';
                            data_memory_request <= '0';
                            if (current_memory_read_enable='1') then 
                                case current_data_memory_access_mode is 
                                    when "000" => 
                                        register_writeback_data_out <= 
                                        data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out(7) & data_memory_data_out (7 downto 0);
                                    when "001" => 
                                        register_writeback_data_out <= 
                                        data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out(15) & data_memory_data_out (15 downto 0);
                                    when "010" => 
                                        register_writeback_data_out <= data_memory_data_out;
                                    when "100" => 
                                        register_writeback_data_out <= "000000000000000000000000" & data_memory_data_out(7 downto 0);
                                    when "101" => 
                                        register_writeback_data_out <= "0000000000000000" & data_memory_data_out(15 downto 0);
                                    when others => 
                                        register_writeback_data_out <= data_memory_data_out;
                                end case;
                            elsif (current_memory_write_enable = '0') then 
                                if (current_register_writeback_enable = '1') then
                                    register_writeback_enable_out<='1';
                                    register_writeback_data_out <= current_data_in;
                                    register_writeback_address_out <= current_register_writeback_address_in;
                                else 
                                    register_writeback_address_out <= (others => '-');
                                    register_writeback_data_out <= (others => '-');
                                    register_writeback_enable_out<='0';
                                end if;
                            else 
                                register_writeback_data_out <= (others => '-');
                            end if;
                            new_program_counter_out <= current_new_program_counter_in;
                            current_state <= step_wait;
                        elsif (current_state = nop) then
                        memory_access_stage_ready <= '0';
                        current_state <= step_wait;
                    end if;
                else 
                    data_memory_request <='0';
                    new_program_counter_out <= x"00000000";
                    pc_address_load_enable <= '0';
                    register_writeback_address_out <= (others => '-');
                    register_writeback_enable_out<= '0';
                    register_writeback_data_out <= (others => '-');
                    
                    data_memory_request <= '0';
                    data_memory_data_in<= (others => '-'); 
                    data_memory_address<= (others => '-');
                    data_memory_direction <= '-';
                    data_memory_write_mode <= (others => '-');
    
                end if;    
            end if;    
        end if;
    end process;
    
end Behavioral;
