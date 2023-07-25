----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/05/2023 11:39:23 AM
-- Design Name: 
-- Module Name: decode_stage_testbench - Behavioral
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

entity decode_stage_testbench is
--  Port ( );
end decode_stage_testbench;

architecture Behavioral of decode_stage_testbench is
    component decode_stage is
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
        
        register_writeback_address: in std_logic_vector(4 downto 0);
        register_writeback_data: in std_logic_vector(31 downto 0);
        register_writeback_request: in std_logic;
        
        register_a_address_out: out std_logic_vector(4 downto 0);
        register_b_address_out: out std_logic_vector(4 downto 0);
        input_hold: in std_logic;
        clk: in std_logic; 
        reset: in std_logic
      );
    end component decode_stage;
    
    signal instruction_in: std_logic_vector(31 downto 0);
    signal register_a: std_logic_vector(31 downto 0);
    signal register_b: std_logic_vector(31 downto 0);
    signal register_dest: std_logic_vector(4 downto 0);
    signal immediate_operand: std_logic_vector(31 downto 0);
    signal alu_control: std_logic_vector(4 downto 0);
    signal instruction_type: std_logic_vector(3 downto 0);
    signal register_a_address_out: std_logic_vector(4 downto 0);
    signal register_b_address_out: std_logic_vector(4 downto 0);
    signal input_hold: std_logic;
    signal output_mask: std_logic;
    signal decode_stage_ready: std_logic; 
    signal pipeline_step: std_logic;
    
    signal register_writeback_address: std_logic_vector(4 downto 0);
    signal register_writeback_data: std_logic_vector(31 downto 0);
    signal register_writeback_request: std_logic;
    signal new_program_counter_in: std_logic_vector(31 downto 0);
    signal new_program_counter_out: std_logic_vector(31 downto 0);
    signal clk: std_logic; 
    signal reset: std_logic;
begin
    decode: decode_stage port map (
        instruction_in => instruction_in,
        register_a => register_a,
        register_b => register_b,
        register_dest=>register_dest,
        immediate_operand=>immediate_operand,
        alu_control=>alu_control,
        instruction_type=>instruction_type,
        
        decode_stage_ready=>decode_stage_ready,
        pipeline_step=>pipeline_step,
        
        register_writeback_address => register_writeback_address,
        register_writeback_data => register_writeback_data,
        register_writeback_request => register_writeback_request,
        register_a_address_out => register_a_address_out,
        register_b_address_out =>register_b_address_out,
        input_hold => input_hold,
        output_mask => output_mask,
        new_program_counter_in => new_program_counter_in,
        new_program_counter_out => new_program_counter_out,
        clk => clk, 
        reset => reset
    );
    process is 
    begin 
        clk <= '1';
        wait for 10ns;
        clk <= '0';
        wait for 10ns;
    end process;
    
    process is 
    begin 
        output_mask <= '0';
        input_hold <= '0';
        reset <= '0';
        pipeline_step<='0';
        register_writeback_request <= '0';
        wait for 40ns;
        reset <= '1';
        wait for 40ns;
        pipeline_step <= '1';
        instruction_in <= x"3e800093";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 120ns;
        pipeline_step <= '1';
        instruction_in <= x"00100133";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 120ns;
        pipeline_step <= '1';
        instruction_in <= x"00c0006f";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 120ns;
        pipeline_step <= '1';
        instruction_in <= x"00208463";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 120ns;
        pipeline_step <= '1';
        instruction_in <= x"00208463";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 120ns;
        pipeline_step <= '1';
        instruction_in <= x"12345037";
        wait for 20ns;
        pipeline_step <= '0';
        wait for 200ns;
        
    end process;
    
end Behavioral;
