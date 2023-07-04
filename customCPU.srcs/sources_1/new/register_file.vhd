----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/04/2023 10:18:03 AM
-- Design Name: 
-- Module Name: register_file - Behavioral
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

entity register_file is
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
end register_file;

architecture Behavioral of register_file is
    
component register_array is
  PORT (
    a : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dpra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    spo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    dpo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
  end component register_array;
  signal register_array_enable: std_logic;
  signal register_array_address_a: std_logic_vector(5 downto 0):= (others => '0');
  signal register_array_address_b: std_logic_vector(5 downto 0):= (others => '0');
  signal register_array_data_in: std_logic_vector (31 downto 0):= (others => '0');
  signal register_array_write_enable: std_logic;
  
  signal register_array_data_out_a: std_logic_vector (31 downto 0);
  signal register_array_data_out_b: std_logic_vector (31 downto 0);
  
  type state is (wait_request,write_register,read_register);
  signal current_state: state:=wait_request;
  
begin
  registers: register_array port map (
    clk => clk,
    a => register_array_address_a,
    d => register_array_data_in,
    spo => register_array_data_out_a,
    dpra => register_array_address_b,
    dpo => register_array_data_out_b, 
    we => register_array_write_enable
  );
  process (clk) is 
  begin 
    if (rising_edge(clk)) then
        if (reset = '1') then 
            if (current_state=wait_request) then 
                if (write_request='1') then 
                    current_state<=write_register;
                elsif (read_request='1') then
                    current_state<=read_register;
                end if;
            elsif (current_state=write_register)  then 
                if (read_request='1') then 
                    current_state <= read_register;
                else 
                    current_state <= wait_request;
                end if;
            elsif (current_state=read_register) then
                current_state <= wait_request;
            else
                current_state <= wait_request;
            end if;
        else
            current_state <= wait_request;
        end if;
    
    end if;
  end process;
  process (current_state) is 
  begin 
    case current_state is 
        when wait_request => 
            ready <= '1';
            register_array_write_enable <= '0';
            register_a_output <= register_array_data_out_a;
            register_b_output <= register_array_data_out_b;
        when write_register => 
            ready <= '0';
            register_array_write_enable <= '1';
            register_array_data_in<=register_input;
            register_array_address_a <= address_write;
            
        when read_register => 
            ready <= '0';
            register_array_write_enable <= '0';
            register_array_address_a<=address_a;
            register_array_address_b<=address_b;
    end case;
    register_array_data_in <=register_input;
  end process;
  
end Behavioral;
