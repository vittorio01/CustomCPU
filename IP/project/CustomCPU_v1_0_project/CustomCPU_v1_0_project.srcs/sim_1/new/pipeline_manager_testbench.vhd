----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2023 06:11:33 PM
-- Design Name: 
-- Module Name: pipeline_manager_testbench - Behavioral
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

entity pipeline_manager_testbench is

end pipeline_manager_testbench;

architecture Behavioral of pipeline_manager_testbench is
    component pipeline_manager is
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
    end component pipeline_manager;
    signal fetch_stage_ready: std_logic;
    signal fetch_stage_step: std_logic;
    signal fetch_stage_mask: std_logic;
        
    signal decode_stage_ready: std_logic; 
    signal decode_stage_step: std_logic;
    signal decode_stage_mask: std_logic;
        
    signal execute_stage_ready: std_logic; 
    signal execute_stage_step: std_logic;
    signal execute_stage_mask: std_logic;
        
    signal access_stage_ready: std_logic;
    signal access_stage_step: std_logic;
    signal access_stage_mask: std_logic;
        
    signal memory_step: std_logic;
        
    signal decode_register_a_address: std_logic_vector(4 downto 0);
    signal decode_register_b_address: std_logic_vector(4 downto 0);
    signal access_register_writeback_address: std_logic_vector(4 downto 0);
    signal access_register_writeback_enable: std_logic;
        
    signal decode_instruction_type: std_logic_vector(3 downto 0);
    signal access_branch_enable: std_logic;
        
        
    signal clk: std_logic; 
    signal reset: std_logic;
begin
    pipeline:pipeline_manager port map (
        fetch_stage_ready => fetch_stage_ready,
        fetch_stage_step=> fetch_stage_step,
        fetch_stage_mask=> fetch_stage_mask,
        
        decode_stage_ready=> decode_stage_ready, 
        decode_stage_step=> decode_stage_step,
        decode_stage_mask=> decode_stage_mask,
        
        execute_stage_ready=> execute_stage_ready,
        execute_stage_step=> execute_stage_step,
        execute_stage_mask=> execute_stage_mask,
        
        access_stage_ready=> access_stage_ready,
        access_stage_step=> access_stage_step,
        access_stage_mask=> access_stage_mask,
        
        memory_step=> memory_step,
        
        decode_register_a_address=> decode_register_a_address,
        decode_register_b_address=> decode_register_b_address,
        access_register_writeback_address=> access_register_writeback_address,
        access_register_writeback_enable=> access_register_writeback_enable,
        
        decode_instruction_type=> decode_instruction_type,
        access_branch_enable=> access_branch_enable,
        
        clk=> clk,
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
        reset <='0';
        wait for 40ns; 
        reset <= '1';
        fetch_stage_ready<= '0';
        decode_stage_ready <= '0';
        execute_stage_ready <= '0';
        access_stage_ready <= '0';
        decode_instruction_type <="0111";
        decode_register_b_address<="10000";
        decode_register_a_address<="00001";
        access_register_writeback_address<="00001";
        access_register_writeback_enable<='1';
        wait for 20ns;
        fetch_stage_ready<= '1';
        decode_stage_ready <= '1';
        execute_stage_ready <= '1';
        access_stage_ready <= '1';
        wait for 40ns; 
        fetch_stage_ready<= '0';
        decode_stage_ready <= '0';
        execute_stage_ready <= '0';
        access_stage_ready <= '0';
        wait for 80ns;
        access_register_writeback_enable<='0';
        fetch_stage_ready<= '1';
        decode_stage_ready <= '1';
        execute_stage_ready <= '1';
        access_stage_ready <= '1';
        wait for 40ns; 
        fetch_stage_ready<= '0';
        decode_stage_ready <= '0';
        execute_stage_ready <= '0';
        access_stage_ready <= '0';
        wait for 100ns;
    end process;

end Behavioral;
