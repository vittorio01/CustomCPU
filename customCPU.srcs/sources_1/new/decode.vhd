----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/04/2023 02:19:22 PM
-- Design Name: 
-- Module Name: decode - Behavioral
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

entity decode is
  Port ( 
  instruction_in: in std_logic_vector(31 downto 0);
  register_address_a: out std_logic_vector(4 downto 0);
  register_address_b: out std_logic_vector(4 downto 0);
  register_address_dest: out std_logic_vector(4 downto 0);
  immediate_value: out std_logic_vector (31 downto 0);
  
  instruction_type: out std_logic_vector (3 downto 0);
  alu_control: out std_logic_vector (4 downto 0)
  );
end decode;

architecture Behavioral of decode is
    signal op_code: std_logic_vector (6 downto 0);
    signal funct3: std_logic_vector(2 downto 0);
    signal funct7: std_logic_vector(6 downto 0);
  
begin
    op_code<=instruction_in(6 downto 0);
    funct3<=instruction_in(14 downto 12);
    funct7<=instruction_in(31 downto 25);
    
    register_address_dest <= instruction_in(11 downto 7);
    register_address_a <= instruction_in(19 downto 15);
    register_address_b <= instruction_in(24 downto 20);
    
    with op_code select
    immediate_value <=  (instruction_in (31 downto 12) & "000000000000") when "0110111",  -- U type
                        (instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(19 downto 12) & "000000000000") when "1101111",  -- J type
                        (instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in (31 downto 20)) when "1100111",  -- I type JALR
                        (instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(7) & instruction_in (30 downto 25) & "00000") when "1100011", -- B type
                        (instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31 downto 20)) when ("0000011" or "0010011"), --I type
                        (others => '-') when others;
    with op_code select 
    instruction_type <= "0000" when "0110111",   -- U type
                        "0001" when "1101111",   -- J type
                        "0010" when "1100111",   -- I type JALR
                        "0011" when "1100011",   -- B type 
                        "0100" when "0000011",   -- I type Load 
                        "0101" when "0100011",   -- S type
                        "0110" when "0010011",   -- I type arithmetic / R type shift
                        "0111" when "0110011",   -- R type
                        "----" when others;
                        
    with funct7 select 
    alu_control <= "00" & funct3 when "0100000", 
                   "01" & funct3 when "0000000", 
                   "--" & funct3 when others;
    
 
end Behavioral;
