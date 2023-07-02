----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2023 02:48:21 PM
-- Design Name: 
-- Module Name: program_counter_testbench - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity program_counter_testbench is
--  Port ( );
end program_counter_testbench;

architecture Behavioral of program_counter_testbench is
    component program_counter is 
      generic (address_width: integer:=64;
               instruction_width: integer:=4);
      Port (load_enable: in std_logic;
            address_in: in std_logic_vector(address_width-1 downto 0);
            address_out: out std_logic_vector(address_width-1 downto 0);
            ready:  in std_logic; 
            clk: in std_logic;
            reset:in std_logic);
    end component;
    signal clk,reset,load_enable,ready: std_logic;
    signal address_in: std_logic_vector(63 downto 0);
    signal address_out: std_logic_vector(63 downto 0);
begin
    prg: program_counter port map (ready => ready,load_enable=>load_enable,clk=>clk,reset=>reset,address_in => address_in,address_out=>address_out);
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
        ready <= '0';
        load_enable <='0';
        wait for 40ns; 
        reset <= '1';
        wait for 40ns;
        ready <='1';
        wait for 100ns;
        load_enable <='1';
        address_in <= "0000000000000000000000000000000000000000000000000000000000010000";
        wait for 20ns;
        load_enable <= '0';
        wait for 50ns;
        ready <='0';
        wait for 40ns;
        ready <='1';
        wait for 100ns;
        
    end process;
  
end Behavioral;
