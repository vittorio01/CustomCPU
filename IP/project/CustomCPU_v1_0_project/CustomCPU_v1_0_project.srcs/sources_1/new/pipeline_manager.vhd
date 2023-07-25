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
    
    decode_input_hold: out std_logic;
    decode_register_a_address: in std_logic_vector(4 downto 0);
    decode_register_b_address: in std_logic_vector(4 downto 0);
    execute_register_writeback_address: in std_logic_vector(4 downto 0);
    execute_register_writeback_enable: in std_logic;
    
    decode_instruction_type: in std_logic_vector(3 downto 0);
    execute_branch_enable: in std_logic;
    
    
    clk: in std_logic; 
    reset: in std_logic
  );
end pipeline_manager;
    
architecture Behavioral of pipeline_manager is
    type state is (initialize,wait_stages,step,step2,raw_stall, jump_stall, branch_stall);
    type raw_state is (step1,step2,step3,step4, step5, step6,step7,step8,step9);
    signal current_state: state;
    
    
begin
    process(clk) is 
        variable control_step_state: raw_state;
    begin
        if (rising_edge(clk)) then 
            if (reset='0') then
                current_state <= initialize;
                
            else
                if (current_state = initialize) then 
                    decode_input_hold<='0';
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
                    decode_input_hold <= '0';
                    fetch_stage_mask <= '0';
                    decode_stage_mask <= '0';
                    access_stage_mask <= '0';
                    execute_stage_mask <= '0';
                    fetch_stage_step <= '0';
                    decode_stage_step <= '0';
                    access_stage_step <= '0';
                    execute_stage_step <= '0';
                    if (fetch_stage_ready='1' and decode_stage_ready = '1' and access_stage_ready = '1' and execute_stage_ready='1') then
                        
                        case decode_instruction_type is 
                            when "0001" =>  -- J type
                                control_step_state:=step1;
                                current_state <= jump_stall;
                            when "0010" =>  -- JALR
                                control_step_state:=step1;
                                current_state <= jump_stall;
                            when "0011" =>  -- B type
                                control_step_state:=step1;
                                current_state <= branch_stall;
                            when "0100" =>  -- I type load
                                if (execute_register_writeback_enable='1' and (decode_register_a_address = execute_register_writeback_address)) then 
                                    control_step_state:=step1;
                                    current_state <= raw_stall;
                                else 
                                    current_state <= step;
                                end if;
                            when "0101" =>  -- S type
                                if (execute_register_writeback_enable='1' and (decode_register_a_address = execute_register_writeback_address)) then 
                                    control_step_state:=step1;
                                    current_state <= raw_stall;
                                else 
                                    current_state <= step;
                                end if;
                            when "0110" =>  -- I type
                                if (execute_register_writeback_enable='1' and (decode_register_a_address = execute_register_writeback_address)) then 
                                    control_step_state:=step1;
                                    current_state <= raw_stall;
                                else 
                                    current_state <= step;
                                end if;
                            when "1000" =>  -- R type shifts
                                if (execute_register_writeback_enable='1' and (decode_register_a_address = execute_register_writeback_address)) then 
                                    control_step_state:=step1;
                                    current_state <= raw_stall;
                                else 
                                    current_state <= step;
                                end if;
                            when "0111" =>  -- R type 
                                if (execute_register_writeback_enable='1' and (decode_register_a_address = execute_register_writeback_address or decode_register_b_address=execute_register_writeback_address)) then 
                                    control_step_state:=step1;
                                    current_state <= raw_stall;
                                else 
                                    current_state <= step;
                                end if;
                            when others => 
                                current_state <= step;
                        end case;
                    end if;  
                elsif (current_state = raw_stall) then 
                    case control_step_state is 
                        when step1 => 
                            access_stage_step<='1';
                            execute_stage_step<='1';
                            decode_stage_step<= '1';

                            control_step_state:=step2;
                        when step2 => 
                            access_stage_step <= '0';
                            execute_stage_step <= '0';
                            decode_stage_step <= '0';
                            control_step_state:=step3;
                        when step3 => 
                            if (access_stage_ready='1' and execute_stage_ready='1' and decode_stage_ready='1') then 
                                access_stage_step<='1';
                                decode_stage_step<= '1';
                                control_step_state:=step4;
                            end if;
                        when step4 => 
                            access_stage_step <= '0';
                            decode_stage_step <= '0';
                            control_step_state:=step5;
                            
                        when step5 => 
                            
                            if (access_stage_ready='1' and decode_stage_ready='1') then 
                                execute_stage_mask<='1';
                                decode_stage_mask<= '1';
                                access_stage_mask<='1';
                                control_step_state:=step6;
                            end if;
                        when step6 =>
                            access_stage_mask<='0';
                            execute_stage_mask <= '0';
                            decode_stage_mask <= '0';
                            if (execute_stage_ready='1' and decode_stage_ready='1' and access_stage_ready ='1') then 
                                
                                current_state <= step;
                            end if;
                        when others => 
                            current_state <= step;
                    end case;
                elsif (current_state = jump_stall) then 
                    case control_step_state is 
                        when step1 => 
                            access_stage_step<='1';
                            execute_stage_step<='1';
                            decode_stage_step<= '1';
                            control_step_state:=step2;
                        when step2 => 
                            access_stage_step <= '0';
                            execute_stage_step <= '0';
                            decode_stage_step <= '0';
                            control_step_state:=step3;
                        when step3 => 
                            if (access_stage_ready='1' and execute_stage_ready='1' and decode_stage_ready='1') then 
                                access_stage_step<='1';
                                decode_stage_step<= '1';
                                control_step_state:=step4;
                            end if;
                        when step4 => 
                            access_stage_step <= '0';
                            decode_stage_step <= '0';
                            control_step_state:=step5;
                            
                        when step5 => 
                            
                            if (access_stage_ready='1' and decode_stage_ready='1') then 
                                execute_stage_mask<='1';
                                decode_stage_mask<= '1';
                                access_stage_mask<='1';
                                control_step_state:=step6;
                            end if;
                        when step6 =>
                            access_stage_mask<='0';
                            execute_stage_mask <= '0';
                            decode_stage_mask <= '0';
                            if (execute_stage_ready='1' and decode_stage_ready='1' and access_stage_ready ='1') then 
                                current_state <= step;
                            end if;
                        when others => 
                            current_state <= step;
                         
                    end case;
                elsif (current_state = branch_stall) then 
                    case control_step_state is 
                        when step1 => 
                            decode_stage_step <= '1';
                            access_stage_step <= '1';
                            execute_stage_step <= '1';
                            decode_input_hold <= '1';
                            control_step_state := step2;
                        when step2 => 
                            decode_stage_step <= '0';
                            access_stage_step <= '0';
                            execute_stage_step <= '0';
                            execute_stage_mask <= '1';
                            
                            control_step_state := step3;
                        when step3 =>
                            execute_stage_mask <= '0';
                            if (decode_stage_ready='1' and access_stage_ready='1' and execute_stage_ready='1') then 
                                decode_stage_step<= '1';
                                access_stage_step<='1';
                                execute_stage_Step<='1';
                                control_step_state := step4;
                            end if;
                        when step4 => 
                            execute_stage_step <='0';
                            decode_stage_step <= '0';
                            access_stage_step <= '0';
                            control_step_state := step5;
                        when step5 =>
                            execute_stage_mask <= '0';
                            if (decode_stage_ready='1' and access_stage_ready='1' and execute_stage_ready='1') then 
                                execute_stage_Step<='1';
                                control_step_state := step6;
                            end if;
                        when step6 => 
                            execute_stage_step <='0';
                            control_step_state := step7;
                        when step7 => 
                            if (execute_stage_ready='1') then 
                                if (execute_branch_enable = '0') then
                                    decode_stage_mask<='1';
                                    access_stage_mask<='1';
                                    execute_stage_mask<='1';
                                    current_state <= step;
                                else 
                                    access_stage_step <= '1';
                                    control_step_state:=step8;
                                end if;
                            end if;
                        when step8 =>
                            access_stage_step <= '0';
                            if (not(access_stage_ready = '1' and fetch_stage_ready='1')) then 
                                control_step_state:=step9;
                            end if;
                        when step9 => 
                            if (access_stage_ready = '1' and fetch_stage_ready='1') then
                                access_stage_mask <= '1';
                                execute_stage_mask <= '1';
                                decode_stage_mask <= '1';
                                current_state <= step;
                            end if;
                    end case;
                    
                elsif (current_state = step) then 
                    if (decode_stage_ready='1' and execute_stage_ready =  '1' and access_stage_ready = '1' and fetch_stage_ready='1') then
                        decode_input_hold <= '0';
                        fetch_stage_mask <= '0';
                        decode_stage_mask <= '0';
                        access_stage_mask <= '0';
                        execute_stage_mask <= '0';
                        fetch_stage_step <= '1';
                        decode_stage_step <= '1';
                        access_stage_step <= '1';
                        execute_stage_step <= '1';
                        current_state <= step2;    
                    end if;
                                            
                elsif (current_state = step2) then
                    fetch_stage_step <= '1';  
                    fetch_stage_step <= '1';        
                    decode_stage_step <= '1';       
                    access_stage_step <= '1';       
                    execute_stage_step <= '1';              
                    current_state <= wait_stages;         
                end if;
            end if;  
        end if;        
    end process;    

end Behavioral;
