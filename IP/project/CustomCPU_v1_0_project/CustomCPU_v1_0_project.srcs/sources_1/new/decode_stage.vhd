----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/05/2023 10:53:09 AM
-- Design Name: 
-- Module Name: decode_stage - Behavioral
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

entity decode_stage is
  Port (
    new_program_counter_in: in std_logic_vector(31 downto 0);
    new_program_counter_out: out std_logic_vector(31 downto 0);
      
    instruction_in: in std_logic_vector(31 downto 0);
    register_a: out std_logic_vector(31 downto 0);
    register_b: out std_logic_vector(31 downto 0);
    register_dest: out std_logic_vector(4 downto 0);
    immediate_operand:  out std_logic_vector(31 downto 0);
    alu_control: out std_logic_vector(4 downto 0);
    instruction_type: out std_logic_vector(3 downto 0);
    
    decode_stage_ready: out std_logic; 
    pipeline_step: in std_logic;
    output_mask: in std_logic;
    input_hold: in std_logic;
    
    register_writeback_address: in std_logic_vector(4 downto 0);
    register_writeback_data: in std_logic_vector(31 downto 0);
    register_writeback_request: in std_logic;
    
    register_a_address_out: out std_logic_vector(4 downto 0);
    register_b_address_out: out std_logic_vector(4 downto 0);
    
    clk: in std_logic; 
    reset: in std_logic
  );
end decode_stage;

architecture Behavioral of decode_stage is
    component decode is
    Port ( 
      instruction_in: in std_logic_vector(31 downto 0);
      register_address_a: out std_logic_vector(4 downto 0);
      register_address_b: out std_logic_vector(4 downto 0);
      register_address_dest: out std_logic_vector(4 downto 0);
      immediate_value: out std_logic_vector (31 downto 0);
      
      instruction_type: out std_logic_vector (3 downto 0);
      alu_control: out std_logic_vector (4 downto 0)
      );
    end component decode;
    component register_file is
      Port (
        clk: in std_logic;
        reset: in std_logic;
        
        address_a: in std_logic_vector (4 downto 0);
        address_b: in std_logic_vector (4 downto 0);
        address_write: in std_logic_vector (4 downto 0);
        
        register_a_output: out std_logic_vector (31 downto 0);
        register_b_output: out std_logic_vector (31 downto 0);
        register_input: in std_logic_vector (31 downto 0);
        
        enable: in std_logic;
        read_request: in std_logic;
        write_request: in std_logic;
        ready: out std_logic
      );
    end component register_file;
    signal decode_instruction_in: std_logic_vector(31 downto 0);
    signal decode_register_a: std_logic_vector(4 downto 0);
    signal decode_register_b: std_logic_vector(4 downto 0);
    signal decode_register_dest: std_logic_vector(4 downto 0);
    signal decode_immediate: std_logic_vector(31 downto 0);
    signal decode_instruction_type: std_logic_vector(3 downto 0);
    signal decode_alu_control: std_logic_vector(4 downto 0);
    
    signal register_address_a: std_logic_vector(4 downto 0);
    signal register_address_b: std_logic_vector(4 downto 0);
    signal register_address_write: std_logic_vector(4 downto 0);
    signal register_a_data: std_logic_vector(31 downto 0);
    signal register_b_data: std_logic_vector(31 downto 0);
    signal register_write_data: std_logic_vector(31 downto 0);
    signal register_read_request: std_logic;
    signal register_write_request: std_logic;
    signal register_ready: std_logic;
    signal register_enable: std_logic;
    
    type state is (step_wait,register_data_request,register_data_receive);
    signal current_state: state:=step_wait;
begin
    decode_array: decode port map (
        instruction_in => decode_instruction_in,
        register_address_a => decode_register_a,
        register_address_b => decode_register_b,
        register_address_dest => decode_register_dest,
        immediate_value => decode_immediate,
        instruction_type => decode_instruction_type,
        alu_control => decode_alu_control
    );
    registers: register_file port map (
        clk => clk,
        reset => reset,
        address_a => register_address_a,
        address_b => register_address_b,
        address_write => register_address_write,
        register_a_output => register_a_data,
        register_b_output => register_b_data,
        register_input => register_write_data,
        read_request => register_read_request,
        write_request => register_write_request,
        ready => register_ready,
        enable => register_enable
    );
    
    register_address_a <= decode_register_a;
    register_address_b <= decode_register_b;
    
    process (clk) is 
    begin 
        if (rising_edge(clk)) then
            if (reset = '0') then 
                current_state <= step_wait;
                
            else
                if (output_mask = '0') then 
                    if (current_state = step_wait) then
                        if (pipeline_step = '1') then
                            register_write_request <= register_writeback_request;
                            register_address_write <= register_writeback_address;
                            register_write_data <= register_writeback_data;
                            register_write_request <= register_writeback_request;
                            if (input_hold='0') then 
                                decode_instruction_in <= instruction_in;
                                new_program_counter_out <= new_program_counter_in;
                            end if;
                            current_state <= register_data_request;
                            register_read_request <= '1';
                            register_enable <= '1';
                            decode_stage_ready <= '0';
                        else 
                            register_enable <= '0';
                            register_read_request <= '1';
                            decode_stage_ready <= '1';
                        end if;
                    elsif (current_state = register_data_request) then
                        
                        register_enable<='0';
                        current_state <= register_data_receive;
                    elsif (current_state = register_data_receive) then 
                        if (register_ready='1') then 
                            register_read_request <= '0';
                            register_a <= register_a_data;
                            register_b <= register_b_data;
                            register_a_address_out <= register_address_a;
                            register_b_address_out <= register_address_b;
                            register_dest <= decode_register_dest;
                            immediate_operand <= decode_immediate;
                            instruction_type <= decode_instruction_type;
                            alu_control <= decode_alu_control;
                            register_enable<='0';
                            register_read_request <= '0';
                            
                            current_state <= step_wait;
                        end if;  
                                                                                                   
                    else 
                        current_state <= step_wait;
                    end if;
                else 
                    current_state <= step_wait;
                    new_program_counter_out <= x"00000000";
                    register_a <= (others => '-');
                    register_b <= (others => '-');
                    register_a_address_out <= (others => '-');
                    register_b_address_out <= (others => '-');
                    register_dest <= (others => '0');
                    immediate_operand <= (others => '-');
                    alu_control <= "00000";
                    instruction_type <= "0111";
                end if;
            end if;
        end if;
    end process;
end Behavioral;
