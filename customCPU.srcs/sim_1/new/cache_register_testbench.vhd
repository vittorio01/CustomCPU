----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/08/2023 10:42:51 AM
-- Design Name: 
-- Module Name: cache_register_testbench - Behavioral
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

entity cache_register_testbench is
--  Port ( );
end cache_register_testbench;

architecture Behavioral of cache_register_testbench is
    component cache_register is
      Port (
        page_in: in std_logic_vector(255 downto 0);
        page_out: out std_logic_vector(255 downto 0);
        
        page_number: in std_logic;
        page_access: in std_logic;
        write_enable: in std_logic;
        
        data_out: out std_logic_vector(31 downto 0);
        data_in: in std_logic_vector(31 downto 0);
        data_write: in std_logic;
        data_access: in std_logic;
        data_address: in std_logic_vector(4 downto 0);
        data_write_mode: in std_logic_vector(1 downto 0);
        clk: in std_logic;
        reset: in std_logic
        
        );
    end component cache_register;
    signal page_in: std_logic_vector(255 downto 0);
    signal page_out: std_logic_vector(255 downto 0);
        
    signal page_number: std_logic;
    signal page_access: std_logic;
    signal write_enable: std_logic;
        
    signal data_out: std_logic_vector(31 downto 0);
    signal data_in: std_logic_vector(31 downto 0);
    signal data_write: std_logic;
    signal data_access: std_logic;
    signal data_address: std_logic_vector(4 downto 0);
    signal data_write_mode: std_logic_vector(1 downto 0);
    signal clk: std_logic;
    signal reset: std_logic;
begin
    reg: cache_register port map (
        page_in => page_in,
        page_out => page_out,
        
        page_number => page_number,
        page_access => page_access,
        write_enable => write_enable,
        
        data_out => data_out,
        data_in => data_in,
        data_write => data_write,
        data_access => data_access,
        data_address => data_address,
        data_write_mode => data_write_mode,
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
        reset<='0';
        wait for 40ns;
        reset<='1';
        data_access <= '0';
        page_access <= '0';
        wait for 40ns;
        page_in<=x"0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef";
        page_number <= '0';
        page_access <= '1';
        write_enable <= '1';
        wait for 20ns;
        page_in<=x"aaaabbbbccccddddeeeeffff0000111122223333444455556666777788889999";
        page_number <= '1';
        page_access <= '1';
        write_enable <= '1';
        wait for 20ns;
        page_access <= '0';
        write_enable <= '0';
        data_access <= '1';
        data_write<='0';
        data_address <= "00001";
        wait for 20ns;
        data_access <= '0';
        wait for 20ns;
        data_address <= "00100";
        data_in <= x"11001100";
        data_write_mode <= "01";
        data_access <='1';
        data_write <= '1';
        wait for 20ns;
        data_access <= '0';
        page_access <= '1';
        write_enable <= '0';
        page_number <= '0';
        wait for 20ns;
        data_access <= '0';
        page_access <= '1';
        writE_enable <= '0';
        page_number <= '1';
        wait for 20ns;
        page_access <= '0';
        wait for 200ns;
    end process;

end Behavioral;
