----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2023 05:36:42 PM
-- Design Name: 
-- Module Name: pipeline_manager - Behavioral
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

entity pipeline_manager is
  Port (
    fetch_stage_ready: in std_logic;
    fetch_stage_step: out std_logic;
    fetch_stage_mask: out std_logic;
    
    decode_stage_ready: in std_logic; 
    decode_stage_step: out std_logic;
    decode_stage_mask: out std_logic;
    
    execute_stage_ready: in std_logic; 
    execute_stage_step: out std_logic;
    execute_stage_mask: out std_logic;
    
    access_stage_ready: in std_logic;
    access_stage_step: out std_logic;
    access_stage_mask: out std_logic;
    
    memory_step: out std_logic;
    
    decode_register_a_address: in std_logic_vector(4 downto 0);
    decode_register_b_address: in std_logic_vector(4 downto 0);
    access_register_writeback_address: in std_logic_vector(4 downto 0);
    access_register_writeback_enable: in std_logic;
    
    decode_instruction_type: in std_logic_vector(3 downto 0);
    access_branch_enable: in std_logic;
    
    
    clk: in std_logic; 
    reset: in std_logic
  );
end pipeline_manager;
    
architecture Behavioral of pipeline_manager is
    type state is (initialize,wait_stages,step,raw_stall, branch_stall);
    type raw_state is (step1,step2,step3);
    signal current_state: state;
    
    
begin
    process(clk) is 
        variable raw_step_state: raw_state;
    begin
        if (rising_edge(clk)) then 
            if (reset='0') then
                current_state <= initialize;
                
            else
                if (current_state = initialize) then 
                    fetch_stage_mask <= '1';
                    decode_stage_mask <= '1';
                    access_stage_mask <= '1';
                    execute_stage_mask <= '1';
                    fetch_stage_step <= '0';
                    decode_stage_step <= '0';
                    access_stage_step <= '0';
                    execute_stage_step <= '0';
                    current_state <= wait_stages;
                    
                elsif (current_state = wait_stages) then
                    fetch_stage_mask <= '0';
                    decode_stage_mask <= '0';
                    access_stage_mask <= '0';
                    execute_stage_mask <= '0';
                    fetch_stage_step <= '0';
                    decode_stage_step <= '0';
                    access_stage_step <= '0';
                    execute_stage_step <= '0';
                    memory_step <= '0';
                    if (fetch_stage_ready='1' and decode_stage_ready = '1' and access_stage_ready = '1' and execute_stage_ready='1') then
                        case decode_instruction_type is 
                            when "0001" =>  -- J type
                                current_state <= step;
                            when "0010" =>  -- JALR
                                current_state <= step;
                            when "0011" =>  -- B type
                                current_state <= step;
                            when "0100" =>  -- I type load
                                if (access_register_writeback_enable='1' and (decode_register_a_address = access_register_writeback_address)) then 
                                    raw_step_state:=step1;
                                    current_state <= raw_stall;
                                else 
                                    current_state <= step;
                                end if;
                            when "0101" =>  -- S type
                                if (access_register_writeback_enable='1' and (decode_register_a_address = access_register_writeback_address)) then 
                                    raw_step_state:=step1;
                                    current_state <= raw_stall;
                                else 
                                    current_state <= step;
                                end if;
                            when "0110" =>  -- I type
                                if (access_register_writeback_enable='1' and (decode_register_a_address = access_register_writeback_address)) then 
                                    raw_step_state:=step1;
                                    current_state <= raw_stall;
                                else 
                                    current_state <= step;
                                end if;
                            when "1000" =>  -- R type shifts
                                if (access_register_writeback_enable='1' and (decode_register_a_address = access_register_writeback_address)) then 
                                    raw_step_state:=step1;
                                    current_state <= raw_stall;
                                else 
                                    current_state <= step;
                                end if;
                            when "0111" =>  -- R type 
                                if (access_register_writeback_enable='1' and (decode_register_a_address = access_register_writeback_address or decode_register_b_address=access_register_writeback_address)) then 
                                    raw_step_state:=step1;
                                    current_state <= raw_stall;
                                else 
                                    current_state <= step;
                                end if;
                            when others => 
                                current_state <= step;
                        end case;
                    end if;  
                elsif (current_state = raw_stall) then 
                    case raw_step_state is 
                        when step1 => 
                            access_stage_step<='1';
                            execute_stage_step<='1';
                            raw_step_state:=step2;
                        when step2 => 
                            access_stage_step <= '0';
                            execute_stage_step <= '0';
                            if (access_stage_ready='1' and execute_stage_ready='1') then 
                                raw_step_state:=step3;
                            end if;
                        when step3 => 
                            execute_stage_mask<='1';
                            if (execute_stage_ready='1') then 
                                current_state <= step;
                            end if;
                    end case;
                elsif (current_state = step) then 
                    fetch_stage_mask <= '0';
                    decode_stage_mask <= '0';
                    access_stage_mask <= '0';
                    execute_stage_mask <= '0';
                    fetch_stage_step <= '1';
                    decode_stage_step <= '1';
                    access_stage_step <= '1';
                    execute_stage_step <= '1';
                    memory_step <= '1';
                    if (access_stage_ready='0' and execute_stage_ready='0' and fetch_stage_ready='0' and decode_stage_ready='0') then 
                        current_state <= wait_stages; 
                    end if;                              
                end if;
            end if;
        end if;
    end process;

end Behavioral;
