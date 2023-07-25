----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/18/2023 02:44:14 PM
-- Design Name: 
-- Module Name: execute_stage_testbench - Behavioral
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

entity execute_stage_testbench is
--  Port ( );
end execute_stage_testbench;

architecture Behavioral of execute_stage_testbench is
    component execute_stage is
      Port (
        register_a: in std_logic_vector(31 downto 0);
        register_b: in std_logic_vector(31 downto 0);
        immediate_operand: in std_logic_vector(31 downto 0);
        new_program_counter: in stD_logic_vector(31 downto 0);
        
        new_program_counter_out: out std_logic_vector(31 downto 0);
        register_output_address_in: in std_logic_vector(4 downto 0);
        
        instruction_type: in std_logic_vector(3 downto 0);
        alu_control: in std_logic_vector (4 downto 0);
        
        branch_enable: out std_logic;
        
        alu_output: out std_logic_vector (31 downto 0);
        register_output_address: out std_logic_vector (4 downto 0);
        register_writeback_enable: out std_logic;
        
        data_memory_address: out std_logic_vector(31 downto 0);
        memory_write_enable: out std_logic;
        memory_read_enable: out std_logic;
        
        pipeline_step: in std_logic;
        execute_stage_ready: out std_logic;
        output_mask: in std_logic;
        clk: in std_logic;
        reset: in std_logic
        
      );
    end component execute_stage;
    signal register_a:  std_logic_vector(31 downto 0);
    signal register_b:  std_logic_vector(31 downto 0);
    signal immediate_operand:  std_logic_vector(31 downto 0);
    signal new_program_counter:  stD_logic_vector(31 downto 0);
    signal new_program_counter_out: std_logic_vector(31 downto 0);
    signal register_output_address_in:  std_logic_vector(4 downto 0);
    
    signal instruction_type:  std_logic_vector(3 downto 0);
    signal alu_control:  std_logic_vector (4 downto 0);
    
    signal branch_enable: std_logic;
    
    signal alu_output: std_logic_vector (31 downto 0);
    signal register_output_address:  std_logic_vector (4 downto 0);
    signal register_writeback_enable: std_logic;
    
    signal data_memory_address: std_logic_vector(31 downto 0);
    signal memory_write_enable: std_logic;
    signal memory_read_enable: std_logic;
    
    signal pipeline_step: std_logic;
    signal execute_stage_ready: std_logic;
    
    signal clk:  std_logic;
    signal reset:  std_logic;
    signal output_mask: std_logic;
begin
    execute: execute_stage port map (
        register_a => register_a,
        register_b => register_b,
        immediate_operand => immediate_operand,
        new_program_counter => new_program_counter,
        new_program_counter_out => new_program_counter_out,
        register_output_address_in => register_output_address_in,
        output_mask => output_mask,
        instruction_type => instruction_type,
        alu_control => alu_control,
        
        branch_enable => branch_enable,
        
        alu_output => alu_output,
        register_output_address => register_output_address,
        register_writeback_enable => register_writeback_enable,
        
        data_memory_address => data_memory_address,
        memory_write_enable => memory_write_enable,
        memory_read_enable => memory_read_enable,
        
        pipeline_step => pipeline_step,
        execute_stage_ready => execute_stage_ready,
        
        clk => clk,
        reset => reset
    );
    output_mask <='0';
    process is 
    begin 
        clk <= '1';
        wait for 10ns;
        clk <= '0';
        wait for 10ns;
    end process;
    process is 
    begin 
        reset <= '0';
        wait for 20ns;
        reset <= '1';
        register_a <= (others => '0');
        register_b <= (others => '0');
        immediate_operand <= (others => '0');
        new_program_counter <= (others => '0');
        register_output_address_in <= (others => '0');
        instruction_type <= (others => '0');
        alu_control <= (others => '0');
        pipeline_step <= '0';
        wait for 40ns;
        pipeline_step <='1';
        register_a <= x"00001111";
        register_b <= x"11110000";
        register_output_address_in <= "00010";      
        instruction_type <= "0111";
        alu_control <= "00000";                 --R type 
        wait for 20ns;
        pipeline_step <= '0';
        wait for 150ns;
        pipeline_step <='1';
        register_a <= x"00001111";
        register_b <= x"11110000";
        register_output_address_in <= "00010";
        instruction_type <= "0110";
        alu_control <= "01000";                 -- I type arithmetic
        wait for 20ns;
        pipeline_step <= '0';
        wait for 150ns;
        pipeline_step <='1';
        register_a <= x"00000001";
        register_b <= x"11110000";
        immediate_operand <= x"00000004";
        new_program_counter <= x"0000000a";
        register_output_address_in <= "00010";
        instruction_type <= "0101";             -- S type store
        alu_control <= "00001";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 150ns;
        pipeline_step <='1';
        register_a <= x"0000000A";
        register_b <= x"11110000";
        immediate_operand <= x"00000002";
        register_output_address_in <= "10010";
        instruction_type <= "0100";             -- L type load
        alu_control <= "00001";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 150ns;
        pipeline_step <='1';
        register_a <= x"00001111";
        register_b <= x"11110000";
        immediate_operand <= x"00000004";
        new_program_counter <= x"0000000a";
        register_output_address_in <= "00010";
        instruction_type <= "0011";             -- branch BEQ
        alu_control <= "00000";
        wait for 20ns;
        pipeline_step<= '0';
        wait for 200ns;
        pipeline_step <='1';
        register_a <= x"00000001";
        register_b <= x"11110000";
        immediate_operand <= x"00000004";
        new_program_counter <= x"0000000a";
        register_output_address_in <= "00010";
        instruction_type <= "0011";             -- branch BNEQ
        alu_control <= "00001";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 150ns;
        pipeline_step <='1';
        register_a <= x"00000001";
        register_b <= x"11110000";
        immediate_operand <= x"00000004";
        new_program_counter <= x"0000000c";
        register_output_address_in <= "00110";
        instruction_type <= "0010";             -- JALR
        alu_control <= "00000";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 150ns;
        pipeline_step <='1';
        register_a <= x"00000001";
        register_b <= x"11110000";
        immediate_operand <= x"00000004";
        new_program_counter <= x"0000000a";
        register_output_address_in <= "10010";
        instruction_type <= "0001";             -- JAL
        alu_control <= "00001";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 150ns;
        pipeline_step <='1';
        register_a <= x"00000001";
        register_b <= x"11110000";
        immediate_operand <= x"1A000000";
        new_program_counter <= x"0000000a";
        register_output_address_in <= "01010";
        instruction_type <= "1001";             -- AUIPC
        alu_control <= "00001";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 200ns;
    end process;
end Behavioral;
