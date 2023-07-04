----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/04/2023 10:54:50 AM
-- Design Name: 
-- Module Name: register_file_testbench - Behavioral
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

entity register_file_testbench is
--  Port ( );
end register_file_testbench;

architecture Behavioral of register_file_testbench is
    component register_file is
      Port (
        clk: in std_logic;
        reset: in std_logic;
        
        address_a: in std_logic_vector (5 downto 0);
        address_b: in std_logic_vector (5 downto 0);
        address_write: in std_logic_vector (5 downto 0);
        
        register_a_output: out std_logic_vector (31 downto 0);
        register_b_output: out std_logic_vector (31 downto 0);
        register_input: in std_logic_vector (31 downto 0);
        
        read_request: in std_logic;
        write_request: in std_logic;
        ready: out std_logic
      );
    end component register_file;
    signal clk: std_logic;
    signal reset: std_logic;
        
    signal address_a: std_logic_vector (5 downto 0):= (others => '0');
    signal address_b: std_logic_vector (5 downto 0):= (others => '0');
    signal address_write: std_logic_vector (5 downto 0);
        
    signal register_a_output: std_logic_vector (31 downto 0);
    signal register_b_output: std_logic_vector (31 downto 0);
    signal register_input: std_logic_vector (31 downto 0);
        
    signal read_request: std_logic;
    signal write_request: std_logic;
    signal ready: std_logic;
begin
    registers: register_file port map (
        clk=>clk,
        reset=>reset,
        
        address_a=>address_a,
        address_b=>address_b,
        address_write=>address_write,
        
        register_a_output=>register_a_output,
        register_b_output=>register_b_output,
        register_input=>register_input,
        
        read_request=>read_request,
        write_request=>write_request,
        ready=>ready
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
        reset <= '0';
        write_request<='0';
        read_request<='0';
        wait for 40ns;
        reset <= '1';
        wait for 40ns;
        write_request <= '1';
        address_write <= "001001";
        register_input <= "00010010000100100001001000010010";
        wait for 20ns;
        write_request <= '0';
        wait for 40ns;
        read_request <= '1';
        address_a <= "001001";
        address_b <= "000000";
        wait for 20ns;
        read_request <= '0';
        wait for 20ns;
        write_request <= '1';
        read_request <= '1';
        address_write <= "000000";
        register_input <= "00000000000000000000000000000001";
        address_a <= "000000";
        address_b <= "001001";
        wait for 40ns;
        write_request <= '0';
        read_request <= '0';
        wait for 200ns;
    end process;
end Behavioral;
