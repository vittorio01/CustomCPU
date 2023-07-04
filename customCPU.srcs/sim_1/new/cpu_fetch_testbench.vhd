----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/03/2023 04:46:18 PM
-- Design Name: 
-- Module Name: cpu_fetch_testbench - Behavioral
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

entity cpu_fetch_testbench is
--  Port ( );
end cpu_fetch_testbench;

architecture Behavioral of cpu_fetch_testbench is
    component CPU is
      Port (
        clk: in std_logic;
        reset: in std_logic
      );
    end component CPU;
    signal clk, reset,pipeline: std_logic;
    signal instruction: std_logic_vector(31 downto 0);
    signal address: std_logic_vector(63 downto 0);
    
begin
    cpu1: CPU port map (
        clk => clk,
        reset => reset
        
    );
    process is
    begin 
        clk <= '0';
        wait for 10ns;
        clk <= '1';
        wait for 10ns;
    end process;
    process is 
    begin 
        reset <= '0';
        wait for 40ns;
        reset <= '1';
        wait for 1000ns;
        
    end process;
end Behavioral;
