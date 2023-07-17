----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/06/2023 07:14:33 PM
-- Design Name: 
-- Module Name: execute_stage - Behavioral
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

entity execute_stage is
  Port (
    register_a: in std_logic_vector(31 downto 0);
    register_b: in std_logic_vector(31 downto 0);
    immediate_operand: in std_logic_vector(31 downto 0);
    new_program_counter: in stD_logic_vector(31 downto 0);
    instruction_type: in std_logic_vector(3 downto 0);
    alu_control: in std_logic_vector (4 downto 0);
    
    branch_enable: out std_logic;
    register_output: out std_logic_vector (31 downto 0);
    
    data_memory_address: out std_logic_vector(31 downto 0);
    writeback_enable: out std_logic;
    memory_write_enable: out std_logic;
    memory_read_enable: out std_logic;
    
    pipeline_step: in std_logic;
    execute_stage_ready: out std_logic;
    
    clk: in std_logic;
    reset: in std_logic
    
  );
end execute_stage;

architecture Behavioral of execute_stage is
    component ALU is
      Port (
      a: in std_logic_vector(31 downto 0);
      b: in std_logic_vector(31 downto 0);
      data_out: out std_logic_vector(31 downto 0);
      operation: in std_logic_vector (4 downto 0)
      );
    end component ALU;
    signal alu_a, alu_b, alu_data_out: std_logic_vector(31 downto 0);
    signal alu_operation: std_logic_vector(4 downto 0);
    
    type state is (step_wait, other_instruction, branch_instruction, store_instruction, jalr_instruction, address_calculation);
    signal current_state: state;
    signal branch_check: std_logic;
    
    signal memory_write: std_logic:='0';
    signal register_write: std_logic:='0';
    signal memory_read: std_logic:='0';
    signal register_out: std_logic_vector(31 downto 0);
    signal memory_address: std_logic_vector(31 downto 0);
begin
    alu1: alu port map (
        a => alu_a,
        b => alu_b,
        data_out => alu_data_out,
        operation => alu_operation
    );
    process (clk) is 
    begin 
        if (rising_edge(clk)) then 
            if (reset='0') then
                current_state<=step_wait;
            else 
                if (current_state = step_wait) then 
                    if (pipeline_step = '1') then
                        if (instruction_type = "0011") then 
                            current_state <= branch_instruction;
                        elsif (instruction_type = "0101") then
                            current_state <= store_instruction;
                        elsif (instruction_type = "0010") then 
                            current_state <= jalr_instruction;
                        else
                            current_state <= other_instruction;
                        end if;
                    end if;
                
                elsif (current_state = branch_instruction and branch_check = '1') then 
                    current_state <= address_calculation;
                elsif (current_state = address_calculation) then 
                    current_state <= step_wait;
                elsif (current_state = other_instruction) then
                    current_state <= step_wait;
                else 
                    current_state <= step_wait;
                end if;
            end if;
        end if;
    end process;
    
    process (current_state) is 
    begin 
        case current_state is 
            when step_wait => 
                execute_stage_ready <= '1';
                branch_check <= '0';
                writeback_enable <= register_write; 
                memory_write_enable <= memory_write;
                memory_read_enable <= memory_read;
                register_output <= register_out; 
                data_memory_address <= memory_address;
                
            when other_instruction => 
                execute_stage_ready <= '0';
                branch_check <= '0';
                
                case instruction_type is 
                    when "0111" => alu_a <= register_a;             -- R arithmetic type
                    when "0000" => alu_a <= (others => '0');        -- U type
                    when "0001" => alu_a <= new_program_counter;    -- J type
                    when "0100" => alu_a <= register_a;             -- I type load
                    when "1000" => alu_a <= register_a;             -- R type shift
                    when "0110" => alu_a <= register_a;             -- I type arithmetic
                    when others => alu_a <= (others => '-');
                    
                end case;
                 case instruction_type is 
                    when "0111" => alu_b <= register_b;             -- R arithmetic type
                    when "0000" => alu_b <= immediate_operand;      -- U type
                    when "0001" => alu_b <= immediate_operand;      -- J type
                    when "0100" => alu_b <= immediate_operand;      -- I type load
                    when "1000" => alu_b <= immediate_operand;      -- R type shift
                    when "0110" => alu_b <= immediate_operand;      -- I type arithmetic
                    when others => alu_b <= (others => '-');
                    
                end case;
                memory_write <= '0';
                register_write <= '1';
                if (instruction_type = "0100") then 
                    memory_read <= '1'; 
                else 
                    memory_read <= '0';
                end if;
                
                case instruction_type is 
                    when "0111" => alu_operation <= alu_control;      -- R arithmetic type
                    when "0000" => alu_operation <= "00000";          -- U type
                    when "0001" => alu_operation <= "00000";          -- J type
                    when "0100" => alu_operation <= "00000";          -- I type load
                    when "1000" => alu_operation <= alu_control;      -- R type shift
                    when "0110" => alu_operation <= alu_control;      -- I type arithmetic
                    when others => alu_operation <= (others => '-');
                end case;
                register_out <= alu_data_out;
                
        when jalr_instruction => 
                execute_stage_ready <= '0';
                register_out <= new_program_counter;
                branch_check <= '1';
                register_write <= '1';
                memory_write <= '0';
                memory_read <= '0';
        
        when store_instruction => 
                
                
                
                
        when branch_instruction => 
                execute_stage_ready <= '1';
                
                
                
                
                
                
        end case;
    end process;
    
    

end Behavioral;
