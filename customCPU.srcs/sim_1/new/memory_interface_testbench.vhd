----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2023 04:30:45 PM
-- Design Name: 
-- Module Name: memory_interface_testbench - Behavioral
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

entity memory_interface_testbench is
--  Port ( );
end memory_interface_testbench;

architecture Behavioral of memory_interface_testbench is
    component memory_interface is
      Port (
        instruction_memory_request: in std_logic;
        instruction_memory_ready: out std_logic;
        instruction_memory_data: out std_logic_vector(7 downto 0);
        instruction_memory_address: in std_logic_vector (63 downto 0);
        
        data_memory_request: in std_logic;
        data_memory_ready: out std_logic;
        data_memory_data_in:   in std_logic_vector(7 downto 0); 
        data_memory_data_out:   out std_logic_vector(7 downto 0); 
        data_memory_address: in std_logic_vector(63 downto 0);
        data_memory_direction: in std_logic;
        
        clk: in std_logic;
        reset: in std_logic
      );
    end component;
    signal clk,reset, instruction_memory_request,instruction_memory_ready,data_memory_request,data_memory_ready, data_memory_direction: std_logic;
    signal instruction_memory_data: std_logic_vector (7 downto 0);
    signal instruction_memory_address: std_logic_vector (63 downto 0);
    signal data_memory_data_in: std_logic_vector (7 downto 0);
    signal data_memory_data_out: std_logic_vector (7 downto 0);
    signal data_memory_address: std_logic_vector (63 downto 0);
begin
    cache: memory_interface port map (
        instruction_memory_request => instruction_memory_request,
        instruction_memory_ready => instruction_memory_ready,
        instruction_memory_data => instruction_memory_data,
        instruction_memory_address => instruction_memory_address,
        data_memory_request => data_memory_request,
        data_memory_ready => data_memory_ready,
        data_memory_data_in => data_memory_data_in,
        data_memory_data_out => data_memory_data_out,
        data_memory_address => data_memory_address,
        data_memory_direction => data_memory_direction,
        clk => clk,
        reset => reset
    );
    process is 
    begin
        clk <= '0';
        wait for 10ns;
        clk <= '1';
        wait for 10ns;
    end process;
    
    process is 
    begin 
        reset <= '0';
        instruction_memory_request <= '0';
        data_memory_request <= '0';
        wait for 40ns;
        reset <= '1';
        wait for 20ns;
        data_memory_request <= '1';
        data_memory_address <= (4 => '1',others =>'0');
        data_memory_direction <= '1';
        data_memory_data_in <= "00010011";
        wait for 80ns;
        data_memory_request <= '0';
        wait for 200ns;
        instruction_memory_request <= '1';
        instruction_memory_address <= (3 => '1',others =>'0');
        wait for 80ns;
        instruction_memory_request <= '0';
        wait for 200ns;
        data_memory_request <= '1';
        data_memory_address <= (4 => '1',others =>'0');
        data_memory_direction <= '0';
        wait for 80ns;
        data_memory_request <= '0';
        wait for 200ns;
    end process;

end Behavioral;
