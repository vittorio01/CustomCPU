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
  operation: in std_logic_vector (4 downto 0);
  clk: in std_logic;
  reset: in std_logic;
  execute: in std_logic;
  ready: out std_logic
  );
  
end ALU;

architecture Behavioral of ALU is
    signal a_signal: unsigned(31 downto 0);
    signal b_signal: unsigned(31 downto 0);
    signal result: unsigned (31 downto 0);
    
    type state is (execute_wait, shift, other);
    signal current_state: state;
    type shift_type is (left,aright,uright);
begin
    a_signal <= unsigned(a);
    b_signal <= unsigned(b);
    data_out <= std_logic_Vector(result(31 downto 0));
    
    process (clk) is 
        variable tshift: shift_type;
        variable shift_count: unsigned(4 downto 0);
        variable shift_number: unsigned(31 downto 0);
    begin 
        if (rising_edge(clk)) then 
            if (reset='0') then     
                current_state <= execute_wait;
                ready<='0';
            elsif (current_state = execute_wait) then
                if (execute='1') then 
                    ready<='0';
                    if (operation = "00001" or operation="00101" or operation="01101") then 
                        if (operation = "00001") then
                            if (b_signal >32) then 
                                result <= (others => '0');
                            else
                                tshift:= left;
                                shift_number:=a_signal; 
                                shift_count:=b_signal(4 downto 0);
                                current_state <= shift;
                            end if;
                        elsif (operation = "00101") then 
                            if (b_signal >32) then 
                                result <= (others => '0');
                            else
                                tshift:= uright;
                                shift_number:=a_signal; 
                                shift_count:=b_signal(4 downto 0);
                                current_state <= shift;
                            end if;
                        else 
                            if (b_signal >32) then 
                                result <= (others => b_signal(31));
                            else
                                tshift:= aright;
                                shift_number:=a_signal; 
                                shift_count:=b_signal(4 downto 0);
                                current_state <= shift;
                            end if;
                        end if;
                        
                    else
                        current_state <= other;
                    end if;
                else 
                    ready<='1';
                end if;
            elsif (current_state = shift) then 
                ready<='0';
                if (shift_count=0) then 
                    result <= shift_number;
                    current_state <= execute_wait;
                else 
                    case tshift is
                        when left => 
                            shift_number := shift_left(shift_number,1);
                        when uright => 
                            shift_number := shift_right(shift_number,1);
                        when aright => 
                            shift_number := shift_right(shift_number,1);
                            shift_number(31):=shift_number(30);
                    end case;
                    shift_count:=shift_count-1;
                end if;
            elsif (current_state = other) then 
                ready<='0';
                case operation is 
                    when "00000" =>
                        result <= (a_signal + b_signal);        --sum
                    when "01000" => 
                        result <= (a_signal - b_signal);        --sub
                    when "00011"=>  
                        if (a_signal<b_signal) then             -- unsigned lower than
                            result <= (others => '1'); 
                        else 
                            result <= (others => '0');
                        end if;
                    when "00010" =>                             -- signed lower than 
                        if (signed(a_signal)<signed(b_signal)) then
                            result <= (others => '1'); 
                        else 
                            result <= (others => '0');
                        end if;
                    when "00110" =>                             -- or
                        result <= (a_signal or b_signal);
                    when "00111" =>                             -- and 
                        result <= (a_signal and b_signal);  
                    when "00100" =>                             -- xor
                        result <= (a_signal xor b_signal);
                    when others => 
                        result <= (others => '-');
                end case;
                current_state <= execute_wait;
            end if;
        end if;
    end process;
end Behavioral;
