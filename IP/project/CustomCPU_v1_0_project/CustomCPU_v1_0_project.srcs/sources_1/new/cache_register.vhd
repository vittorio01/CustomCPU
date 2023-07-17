----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/07/2023 06:25:31 PM
-- Design Name: 
-- Module Name: cache_register - Behavioral
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

entity cache_register is
  Generic ( page_dimension: integer:= 256;
            data_address_dimension: integer:= 5
  );
  Port (
    page_in: in std_logic_vector(page_dimension-1 downto 0);
    page_out: out std_logic_vector(page_dimension-1 downto 0);
    
    page_number: in std_logic;
    page_access: in std_logic;
    write_enable: in std_logic;
    
    data_out: out std_logic_vector(31 downto 0);
    data_in: in std_logic_vector(31 downto 0);
    data_write: in std_logic;
    data_access: in std_logic;
    data_address: in std_logic_vector(data_address_dimension-1 downto 0);
    data_write_mode:in std_logic_Vector (1 downto 0);
    
    clk: in std_logic;
    reset: in std_logic
    
    );
end cache_register;

architecture Behavioral of cache_register is
    signal data: std_logic_vector((page_dimension*2)-1 downto 0);
begin
    process (clk) is 
        variable index: integer:=0;
    begin 
        if (rising_edge(clk)) then 
            if (reset <= '0') then
                data <= (others => '0');
            elsif (page_access='1') then 
                if (write_enable ='1') then
                    if (page_number = '0') then
                        data(page_dimension-1 downto 0)<=page_in(page_dimension-1 downto 0);
                    else 
                        data((page_dimension*2)-1 downto page_dimension)<=page_in(page_dimension-1 downto 0);
                    end if;
                elsif (write_enable = '0') then 
                    if (page_number = '0') then 
                        page_out <= data(page_dimension-1 downto 0);
                    else 
                        page_out <= data((page_dimension*2)-1 downto page_dimension);
                    end if;
                end if;
            elsif (data_access <= '1') then
                if (data_write = '0') then 
                    index:=to_integer(unsigned(data_address(data_address_dimension-1 downto 0)&"000"));
                    data_out(7 downto 0) <= data(index+7 downto index);
                    data_out(15 downto 7)<= data(index+15 downto index+7);
                    data_out(23 downto 15) <= data(index+23 downto index+15);
                    data_out(31 downto 23) <= data(index+31 downto index+23);
                else 
                    index:=to_integer(unsigned(data_address(data_address_dimension-1 downto 0)&"000"));
                    case data_write_mode is 
                        when "11" => -- write 32 bit word
                            data(index+7 downto index) <= data_in(7 downto 0);
                            data(index+15 downto index+7) <= data_in(15 downto 7);
                            data(index+23 downto index+15) <= data_in(23 downto 15);
                            data(index+31 downto index+23) <= data_in(31 downto 23);
                        when "01" => -- write 16 bit word
                            data(index+7 downto index) <= data_in(7 downto 0);
                            data(index+15 downto index+7) <= data_in(15 downto 7);                         
                        when others => -- write byte
                            data(index+7 downto index) <= data_in(7 downto 0);
                    end case;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
