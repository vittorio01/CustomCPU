----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2023 11:43:18 AM
-- Design Name: 
-- Module Name: program_counter - Behavioral
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

-- the PC is a normal counter that increments automatically the internal address at even clock cycle. 
-- Load_enable can be used to load a specific address throught address_in line and counter can be paused with ready line

entity program_counter is
  generic (address_width: integer:=64;                                 --width of address lines (bits)
           instruction_width: integer:=1);                             --width of the instructions (bytes)
  Port (load_enable: in std_logic;                                     --line used to trigger the counter to load a specific address from address_in (enabled -> '1');
        address_in: in std_logic_vector(address_width-1 downto 0);     --input line used to set a specific value to the program counter
        address_out: out std_logic_vector(address_width-1 downto 0);   --output address from the program counter
        
        clk: in std_logic;                                             
        reset:in std_logic);                                           --syncronus reset (enable -> '0');
end program_counter;

architecture Behavioral of program_counter is
    signal current_address: unsigned(address_width-1 downto 0):=(others => '0');
    type state is (count_enable,count_wait);
    signal current_state: state;
begin
    process (clk, reset) begin
        if (rising_edge(clk)) then 
            if (reset = '0') then
                current_state <= count_wait;
                current_address <= (others => '0');
            elsif (current_state=count_wait and load_enable='1') then 
                current_address<=unsigned(address_in)+1;
                current_state<=count_enable;
            elsif (current_state=count_enable and load_enable='0') then
                current_state <=count_wait;
            end if;
        end if;
    end process;
    address_out <= std_logic_vector(current_address);
end Behavioral;
