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
    
    immediate_value <=  (instruction_in (31 downto 12) & "000000000000") when (op_code="0110111" or op_code="0010111") else  -- U type
                        (instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(19 downto 12) & "000000000000") when (op_code = "1101111") else  -- J type
                        (instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in (31 downto 20)) when (op_code="1100111") else  -- I type JALR
                        (instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(7) & instruction_in (30 downto 25) & "00000") when (op_code="1100011") else -- B type
                        (instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31) & instruction_in(31 downto 20)) when (op_code="0000011" or (op_code="0010011" and not(funct3 = "001" or funct3 = "101"))) else --I type
                        ("00000000000000000000" & instruction_in(31 downto 25) & instruction_in(11 downto 7)) when (op_code="0100011") else -- s type
                        ("000000000000000000000000000" & instruction_in(24 downto 20)) when (op_code="0010011" and (funct3 = "001" or funct3 = "101")) else -- R type shift
                        (others => '-');
 
    instruction_type <= "0000" when (op_code="0110111") else   -- U type LUI
                        "1001" when (op_code="0010111") else   -- U type AUIPC
                        "0001" when (op_code="1101111") else   -- J type
                        "0010" when (op_code="1100111") else   -- I type JALR
                        "0011" when (op_code="1100011") else   -- B type 
                        "0100" when (op_code="0000011") else   -- I type Load 
                        "0101" when (op_code="0100011") else   -- S type
                        "0110" when (op_code="0010011" and not(funct3 = "001" or funct3 = "101")) else   -- I type arithmetic
                        "1000" when (op_code="0010011" and (funct3 = "001" or funct3 = "101")) else      -- R type shift
                        "0111" when (op_code="0110011") else   -- R type
                        "----";
                        
    with funct7 select 
    alu_control <= "00" & funct3 when "0000000", 
                   "01" & funct3 when "0100000", 
                   "00" & funct3 when others;
    
 
end Behavioral;
