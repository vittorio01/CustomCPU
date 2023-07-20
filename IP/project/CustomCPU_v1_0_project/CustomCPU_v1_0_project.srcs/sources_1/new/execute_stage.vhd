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
    
    new_program_counter_out: out std_logic_vector (31 downto 0);
    register_output_address_in: in std_logic_vector(4 downto 0);
    
    instruction_type: in std_logic_vector(3 downto 0);
    alu_control: in std_logic_vector (4 downto 0);
    
    alu_output: out std_logic_vector (31 downto 0);
    register_output_address: out std_logic_vector (4 downto 0);
    register_writeback_enable: out std_logic;
    
    data_memory_address: out std_logic_vector(31 downto 0);
    memory_write_enable: out std_logic;
    memory_read_enable: out std_logic;
    
    branch_enable: out std_logic;
    
    pipeline_step: in std_logic;
    execute_stage_ready: out std_logic;
    output_mask: in std_logic;
    
    memory_access_mode: out std_logic_vector(2 downto 0);
    
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
    
    type state is (step_wait, other_instruction, branch_instruction, jalr_instruction, address_calculation, output_latch);
    signal current_state: state;

begin
    alu1: alu port map (
        a => alu_a,
        b => alu_b,
        data_out => alu_data_out,
        operation => alu_operation
    );
    process (clk) is 
    variable branch_check: std_logic;
    begin 
        if (rising_edge(clk)) then 
            if (reset='0') then
                branch_check := '0';
                
            else 
                if (output_mask = '0') then
                    if (current_state = step_wait) then 
                        
                        if (pipeline_step = '1') then
                            execute_stage_ready <= '0';
                            if (instruction_type = "0011") then 
                                current_state <= branch_instruction;
                            elsif (instruction_type = "0010") then 
                                current_state <= jalr_instruction;
                            else
                                current_state <= other_instruction;
                            end if;
                        else 
                            execute_stage_ready <= '1';
                            branch_check:='0';
                        end if;
                    elsif (current_state = branch_instruction) then 
                        execute_stage_ready <= '0';
                        
                        branch_check:='1';
                        alu_a <= register_a;
                        alu_b <= register_b;
                        case alu_control(2 downto 0) is 
                            when "000" => alu_operation <= "01000";     -- BEQ
                            when "001" => alu_operation <= "01000";     -- BNE
                            when "100" => alu_operation <= "00010";     -- BLT
                            when "101" => alu_operation <= "00010";     -- BGE
                            when "110" => alu_operation <= "00011";     -- BLTU
                            when "111" => alu_operation <= "00011";     -- BGEU
                            when others => alu_operation <= (others => '-');
                        end case;
                        current_state <= address_calculation;
                    elsif (current_state = jalr_instruction) then 
                        execute_stage_ready <= '0';
                        
                        branch_check:='0';
                        alu_a <= register_a;
                        alu_b <= immediate_operand;
                        alu_operation <= "00000";
                        current_state <= address_calculation;
                    elsif (current_state = address_calculation) then 
                        execute_stage_ready <= '0';
                        if (branch_check='1') then 
                            alu_a <= new_program_counter;
                            alu_b <= immediate_operand;
                            alu_operation <= "00000";
                            case alu_control (2 downto 0) is  
                                when "000" =>      -- BEQ
                                    if (not(alu_data_out = x"00000000")) then 
                                        branch_check:= '0';
                                    end if;
                                when "001" =>      -- BNE
                                    if (alu_data_out = x"00000000") then 
                                        branch_check := '1';
                                    end if;
                                when "100" =>      -- BLT
                                    if (alu_data_out = x"00000000") then 
                                        branch_check:= '0';
                                    end if;
                                when "101" =>      -- BGE
                                    if (alu_data_out = x"11111111") then 
                                        branch_check:='0';
                                    end if;
                                when "110" =>      -- BLTU
                                    if (alu_data_out = x"00000000") then 
                                        branch_check:= '0';
                                    end if;
                                when "111" =>      -- BGEU
                                    if (alu_data_out = x"11111111") then 
                                        branch_check:='0';
                                    end if;
                                when others =>
                                    branch_check:= '0';
                            end case;
                        else
                            alu_a <= new_program_counter;
                            alu_b <= alu_data_out;
                            alu_operation <= "00000";
                        end if;
                        current_state <= output_latch;
                    elsif (current_state = other_instruction) then
                        execute_stage_ready <= '0';
                        case instruction_type is 
                            when "0111" => alu_a <= register_a;             -- R arithmetic type
                            when "0000" => alu_a <= (others => '0');        -- U type LUI
                            when "1001" => alu_a <= new_program_counter;    -- U type AUIPC
                            when "0001" => alu_a <= new_program_counter;    -- J type
                            when "0100" => alu_a <= register_a;             -- I type load
                            when "1000" => alu_a <= register_a;             -- R type shift
                            when "0110" => alu_a <= register_a;             -- I type arithmetic
                            when "0101" => alu_a <= register_a;             -- S type store
                            when others => alu_a <= (others => '-');
                            
                        end case;
                        
                        case instruction_type is 
                            when "0111" => alu_b <= register_b;             -- R arithmetic type
                            when "0000" => alu_b <= immediate_operand;      -- U type LUI
                            when "1001" => alu_b <= immediate_operand;      -- U type AUIPC
                            when "0001" => alu_b <= immediate_operand;      -- J type
                            when "0100" => alu_b <= immediate_operand;      -- I type load
                            when "1000" => alu_b <= immediate_operand;      -- R type shift
                            when "0110" => alu_b <= immediate_operand;      -- I type arithmetic
                            when "0101" => alu_b <= immediate_operand;      -- S type store
                            when others => alu_b <= (others => '-');
                        end case;
                        
                        case instruction_type is 
                            when "0111" => alu_operation <= alu_control;      -- R arithmetic type
                            when "0000" => alu_operation <= "00000";          -- U type LUI
                            when "1001" => alu_operation <= "00000";          -- U type AUIPC
                            when "0001" => alu_operation <= "00000";          -- J type
                            when "0100" => alu_operation <= "00000";          -- I type load
                            when "1000" => alu_operation <= alu_control;      -- R type shift
                            when "0110" => alu_operation <= alu_control;      -- I type arithmetic
                            when "0101" => alu_operation <= "00000";          -- S type store
                            when others => alu_operation <= (others => '-');
                        end case;
                        current_state <= output_latch;
                    elsif (current_state <= output_latch) then
                        execute_stage_ready <= '0';
                        case instruction_type is 
                            when "0010" =>                                    -- JALR instruction
                                register_writeback_enable <= '1';
                                memory_write_enable <= '0';
                                memory_read_enable <= '0';
                                data_memory_address <= (others => '-');
                                new_program_counter_out <= alu_data_out;
                                alu_output <= new_program_counter;
                                register_output_address <= register_output_address_in;
                                memory_access_mode <= (others => '-');
                                branch_enable<='1';
                            when "0011" =>                                    -- branch 
                                register_writeback_enable <= '0';
                                memory_write_enable <= '0';
                                memory_read_enable <= '0';
                                data_memory_address <= (others => '-');
                                alu_output <= (others => '-');
                                register_output_address <= (others => '-');
                                new_program_counter_out <= alu_data_out;
                                memory_access_mode <= (others => '-');
                                branch_enable <=branch_check;
                            when "0111" =>     -- R arithmetic type
                                register_writeback_enable <= '1';
                                memory_write_enable <= '0';
                                memory_read_enable <= '0';
                                data_memory_address <= (others => '-');
                                alu_output <= alu_data_out;
                                register_output_address <= register_output_address_in;
                                new_program_counter_out <= new_program_counter;
                                memory_access_mode <= (others => '-');
                                branch_enable<='0';
                            when "0000" =>           -- U type AUI
                                register_writeback_enable <= '1';
                                memory_write_enable <= '0';
                                memory_read_enable <= '0';
                                data_memory_address <= (others => '-');
                                alu_output <= alu_data_out;
                                register_output_address <= register_output_address_in;
                                new_program_counter_out <= new_program_counter;
                                memory_access_mode <= (others => '-');
                                branch_enable<='0';
                            when "1001" =>           -- U type AUIPC
                                register_writeback_enable <= '1';
                                memory_write_enable <= '0';
                                memory_read_enable <= '0';
                                data_memory_address <= (others => '-');
                                alu_output <= alu_data_out;
                                register_output_address <= register_output_address_in;
                                new_program_counter_out <= new_program_counter;
                                memory_access_mode <= (others => '-');
                                branch_enable<='0';
                            when "0001" =>          -- J type
                                register_writeback_enable <= '0';
                                memory_write_enable <= '0';
                                memory_read_enable <= '0';
                                data_memory_address <= (others => '-');
                                alu_output <= (others => '-');
                                register_output_address <= (others => '-');
                                new_program_counter_out <= alu_data_out;
                                memory_access_mode <= (others => '-');
                                branch_enable<='1';
                            when "0100" =>          -- I type load
                                register_writeback_enable <= '1';
                                memory_write_enable <= '0';
                                memory_read_enable <= '1';
                                data_memory_address <= alu_data_out;
                                alu_output <= (others => '-');
                                register_output_address <= register_output_address_in;
                                new_program_counter_out <= new_program_counter;
                                memory_access_mode <= alu_operation(2 downto 0);
                                branch_enable<='0';
                            when "1000" =>       -- R type shift
                                register_writeback_enable <= '1';
                                memory_write_enable <= '0';
                                memory_read_enable <= '0';
                                data_memory_address <= (others => '-');
                                alu_output <= alu_data_out;
                                register_output_address <= register_output_address_in;
                                new_program_counter_out <= new_program_counter;
                                memory_access_mode <= (others => '-');
                                branch_enable<='0';
                            when "0110" =>       -- I type arithmetic
                                register_writeback_enable <= '1';
                                memory_write_enable <= '0';
                                memory_read_enable <= '0';
                                data_memory_address <= (others => '-');
                                alu_output <= alu_data_out;
                                register_output_address <= register_output_address_in;
                                new_program_counter_out <= new_program_counter;
                                memory_access_mode <= (others => '-');
                                branch_enable<='0';
                            when "0101" =>           -- S type store
                                register_writeback_enable <= '0';
                                memory_write_enable <= '1';
                                memory_read_enable <= '0';
                                data_memory_address <= alu_data_out;
                                alu_output <= register_b;
                                register_output_address <= (others => '-');
                                new_program_counter_out <= new_program_counter;
                                memory_access_mode <= alu_operation(2 downto 0);
                                branch_enable<='0';
                            when others => 
                                register_writeback_enable <= '0';
                                memory_write_enable <= '0';
                                memory_read_enable <= '0';
                                data_memory_address <= (others => '0');
                                alu_output <= (others => '-');
                                register_output_address <= (others => '-');
                                memory_access_mode <= (others => '-');
                                new_program_counter_out <= new_program_counter;
                                branch_enable<='0';
                            end case;
                        memory_access_mode <= alu_operation(2 downto 0);
                        current_state <= step_wait;
                    else 
                        current_state <= step_wait;
                    end if;
                else 
                    current_state<=step_wait;
                    register_writeback_enable <= '0';
                    memory_write_enable <= '0';
                    memory_read_enable <= '0';
                    data_memory_address <= (others => '-');
                    alu_output <= (others => '-');
                    register_output_address <= (others => '-');
                    new_program_counter_out <= x"00000000";
                    memory_access_mode <= (others => '-');
                    branch_enable <= '0';
                end if;
            end if;
        end if;
    end process;
end Behavioral;
