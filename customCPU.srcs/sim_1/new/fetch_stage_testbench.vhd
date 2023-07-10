----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/03/2023 02:44:00 PM
-- Design Name: 
-- Module Name: fetch_stage_testbench - Behavioral
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

entity fetch_stage_testbench is
--  Port ( );
end fetch_stage_testbench;

architecture Behavioral of fetch_stage_testbench is
    component fetch_stage_controller is
      Generic (
        address_width: integer:= 32;
        instruction_width: integer:= 32
      );
      
      Port ( 
      address_in: in std_logic_vector(address_width-1 downto 0);
      pipeline_step: in std_logic;
      
      instruction_request: out std_logic;
      instruction_ready: in std_logic;
      
      fetch_stage_ready: out std_logic;
      instruction_in: in std_logic_vector(instruction_width-1 downto 0);
      
      new_address: out std_logic_Vector(address_width-1 downto 0);
      instruction_out: out std_logic_vector(instruction_width-1 downto 0);
      
      clk: in std_logic;
      reset: in std_logic
      );
    end component fetch_stage_controller;
    component memory_interface is
      Port (
        instruction_memory_request: in std_logic;
        instruction_memory_ready: out std_logic;
        instruction_memory_data: out std_logic_vector(32-1 downto 0);
        instruction_memory_address: in std_logic_vector (32-1 downto 0);
        
        data_memory_request: in std_logic;
        data_memory_ready: out std_logic;
        data_memory_data_in:   in std_logic_vector(32-1 downto 0); 
        data_memory_data_out:  out std_logic_vector(32-1 downto 0); 
        data_memory_address: in std_logic_vector(32-1 downto 0);
        data_memory_direction: in std_logic;
        
        clk: in std_logic;
        reset: in std_logic
      );
    end component memory_interface;
    signal address_in: std_logic_vector(31 downto 0);
    signal pipeline_step: std_logic;
      
    signal instruction_request: std_logic;
    signal instruction_ready: std_logic;
      
    signal fetch_stage_ready: std_logic;
    signal instruction_in: std_logic_vector(31 downto 0);
      
    signal new_address: std_logic_Vector(31 downto 0);
    signal instruction_out: std_logic_vector(31 downto 0);
      
    signal clk: std_logic;
    signal reset: std_logic;
    
    signal instruction_memory_request: std_logic;
    signal instruction_memory_ready: std_logic;
    signal instruction_memory_data: std_logic_vector(32-1 downto 0);
    signal instruction_memory_address: std_logic_vector (32-1 downto 0);
        
    signal data_memory_request: std_logic;
    signal data_memory_ready: std_logic;
    signal data_memory_data_in: std_logic_vector(32-1 downto 0); 
    signal data_memory_data_out: std_logic_vector(32-1 downto 0); 
    signal data_memory_address: std_logic_vector(32-1 downto 0);
    signal data_memory_direction: std_logic;
    

begin
    fetch_stage: fetch_stage_controller port map (
        clk => clk,
        reset=>reset,
        address_in => address_in,
        pipeline_step => pipeline_step,
        instruction_request => instruction_request,
        instruction_ready => instruction_ready,
        fetch_stage_ready => fetch_stage_ready,
        instruction_in => instruction_in,
        new_address => new_address,
        instruction_out => instruction_out
    );
    address_in <= new_address;
    memory: memory_interface port map (
        clk => clk,
        reset => reset,
        instruction_memory_request => instruction_memory_request,
        instruction_memory_ready => instruction_memory_ready,
        instruction_memory_data => instruction_memory_data,
        instruction_memory_address => instruction_memory_address,
        
        data_memory_request => data_memory_request,
        data_memory_ready => data_memory_ready,
        data_memory_data_in => data_memory_data_in,
        data_memory_data_out => data_memory_data_out,
        data_memory_address => data_memory_address,
        data_memory_direction => data_memory_direction
    );
    instruction_memory_request <= instruction_request;
    instruction_ready <= instruction_memory_ready;
    instruction_in <= instruction_memory_data;
    instruction_memory_address <= address_in;
    
   data_memory_request <='0';

    process is
    begin
        clk <= '1';
        wait for 10ns;
        clk <= '0';
        wait for 10ns;
    end process;
    
    process is
    variable i: integer := 0;
    begin 
        reset <= '0';
        pipeline_step <='0';
        wait for 40ns;
        reset <= '1';
     
        for i in 0 to 15 loop 
            pipeline_step <='1';
            wait for 20ns;
            pipeline_step <= '0';
            wait for 200ns;
        end loop;
        
    end process;
end Behavioral;
