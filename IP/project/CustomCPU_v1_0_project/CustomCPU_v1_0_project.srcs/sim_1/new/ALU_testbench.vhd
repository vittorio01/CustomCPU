----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/06/2023 05:40:55 PM
-- Design Name: 
-- Module Name: ALU_testbench - Behavioral
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

entity ALU_testbench is
--  Port ( );
end ALU_testbench;

architecture Behavioral of ALU_testbench is
    component ALU is
      Port (
      a: in std_logic_vector(31 downto 0);
      b: in std_logic_vector(31 downto 0);
      data_out: out std_logic_vector(31 downto 0);
      operation: in std_logic_vector (4 downto 0)
      );
    end component ALU;
    signal a,b,data_out: std_logic_vector(31 downto 0);
    signal operation: std_logic_vector(4 downto 0);
    signal be: std_logic;
begin
    alu_t: alu port map (
        a => a,
        b => b,
        data_out => data_out,
        operation => operation
    );
    process is 
    begin 
        a <= "11111111111111111111111111111000";
        b <= "00000000000000000000000000000011";
        operation <= "00010";
        wait for 100ns;
        a <= "11111111111111111111111110000000";
        b <= "00000000000000000000000001111111";
        operation <= "00000";
        wait for 100ns;
        a <= "11111111111111111111111111111000";
        b <= "00000000000000000000000000000011";
        operation <= "00101";
        wait for 100ns;
        a <= "11111111111111111111111110000000";
        b <= "00000000000000000000000000000100";
        operation <= "01101";
        wait for 100ns;
        a <= "10000000000000000000000000000000";
        b <= "00000000000000000000000000000001";
        operation <= "00010";
        wait for 100ns;
        a <= "10000000000000000000000000000000";
        b <= "00000000000000000000000000000001";
        operation <= "00100";
        wait for 100ns;
        a <= "11110000000000000000000000000000";
        b <= "00000000000000000000000000000001";
        operation <= "00110";
        wait for 100ns;
        a <= "11110000000000000000000000000000";
        b <= "00000000000000000000000000000001";
        operation <= "00111";
        wait for 100ns;
    end process;

end Behavioral;
