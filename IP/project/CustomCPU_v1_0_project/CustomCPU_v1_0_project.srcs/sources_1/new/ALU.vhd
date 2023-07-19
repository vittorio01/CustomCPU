----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/06/2023 04:35:17 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
  Port (
  a: in std_logic_vector(31 downto 0);
  b: in std_logic_vector(31 downto 0);
  data_out: out std_logic_vector(31 downto 0);
  operation: in std_logic_vector (4 downto 0)
  
  );
  
end ALU;

architecture Behavioral of ALU is
    signal a_signal: unsigned(31 downto 0);
    signal b_signal: unsigned(31 downto 0);
    signal result: unsigned (31 downto 0);
    
    function shiftleft(a: unsigned(31 downto 0);b: unsigned(31 downto 0)) return unsigned is 
        variable i: integer :=0;
        variable aout: unsigned(31 downto 0):=a;
        begin
            for i in 0 to to_integer(b) loop
                aout:=shift_left(aout,1);
            end loop;
        return aout;
    end function shiftleft;
    function shiftright(a: unsigned(31 downto 0);b: unsigned(31 downto 0)) return unsigned is 
        variable i: integer :=0;
        variable aout: unsigned(31 downto 0):=a;
        begin
            for i in 0 to to_integer(b) loop
                aout:=shift_right(aout,1);
            end loop;
        return aout;
    end function shiftright;
    function shiftrighta(a: unsigned(31 downto 0);b: unsigned(31 downto 0)) return unsigned is 
        variable i: integer :=0;
        variable aout: unsigned(31 downto 0):=a;
        begin
            for i in 0 to to_integer(b) loop
         
                aout:=shift_right(aout,1);
                aout(31):=aout(30);
            end loop;
        return aout;
    end function shiftrighta;
begin
    a_signal <= unsigned(a);
    b_signal <= unsigned(b);
    
    result <= (a_signal + b_signal) when (operation = "00000") else                     -- sum
              (a_signal - b_signal) when (operation = "01000") else                     -- sub 
              shiftleft(a_signal,b_signal) when (operation="00001") else                -- shift left logic
              shiftright(a_signal,b_signal) when (operation="00101") else               -- shift right logic
              shiftrighta(a_signal,b_signal) when (operation="01101") else              -- shift right arithmetic
              (others => '1') when (operation="00011" and a_signal<b_signal) else       -- lower unsigned
              (others => '0') when (operation="00011" and a_signal>=b_signal) else 
              (others => '1') when (operation="00010" and signed(a)<signed(b)) else     -- lower aritmetic signed
              (others => '0') when (operation="00010" and signed(a)>=signed(b)) else 
              (a_signal xor b_signal) when (operation="00100") else                     -- xor
              (a_signal or b_signal) when (operation="00110") else                      -- or
              (a_signal and b_signal) when (operation="00111") else                     -- and 
              (others => '-');
    
    data_out <= std_logic_Vector(result(31 downto 0));
    
                

end Behavioral;
