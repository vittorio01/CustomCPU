----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/03/2023 02:09:01 PM
-- Design Name: 
-- Module Name: CPU - Behavioral
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

entity CPU is
  Generic (
    address_dimension: integer := 64;
    data_dimension: integer := 32
  );
  Port (
    clk: in std_logic;
    reset: in std_logic
  );
end CPU;

architecture Behavioral of CPU is
    component fetch_stage_controller is
      Generic (
        address_width: integer:= address_dimension;
        instruction_width: integer:= data_dimension
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
      Generic (
        address_dimension: integer := address_dimension;
        data_dimension: integer := data_dimension;
        cache_address_dimension: integer := 16;
        cache_data_dimension: integer := 32
      );
      Port (
        instruction_memory_request: in std_logic;
        instruction_memory_ready: out std_logic;
        instruction_memory_data: out std_logic_vector(data_dimension-1 downto 0);
        instruction_memory_address: in std_logic_vector (address_dimension-1 downto 0);
        
        data_memory_request: in std_logic;
        data_memory_ready: out std_logic;
        data_memory_data_in:   in std_logic_vector(data_dimension-1 downto 0); 
        data_memory_data_out:  out std_logic_vector(data_dimension-1 downto 0); 
        data_memory_address: in std_logic_vector(address_dimension-1 downto 0);
        data_memory_direction: in std_logic;
        
        clk: in std_logic;
        reset: in std_logic
      );
    end component memory_interface;
    component decode_stage is
      Port (
        instruction_in: in std_logic_vector(31 downto 0);
        register_a: out std_logic_vector(31 downto 0);
        register_b: out std_logic_vector(31 downto 0);
        register_dest: out std_logic_vector(4 downto 0);
        immediate_operand:  out std_logic_vector(31 downto 0);
        alu_control: out std_logic_vector(4 downto 0);
        instruction_type: out std_logic_vector(3 downto 0);
        
        decode_stage_ready: out std_logic; 
        pipeline_step: in std_logic;
        
        register_writeback_address: in std_logic_vector(4 downto 0);
        register_writeback_data: in std_logic_vector(31 downto 0);
        register_writeback_request: in std_logic;
        
        clk: in std_logic; 
        reset: in std_logic
      );
    end component decode_stage;
    signal instruction_memory_request: std_logic;
    signal instruction_memory_ready: std_logic;
    signal instruction_memory_data: std_logic_vector(data_dimension-1 downto 0);
    signal instruction_memory_address: std_logic_vector (address_dimension-1 downto 0);
        
    signal data_memory_request: std_logic;
    signal data_memory_ready: std_logic;
    signal data_memory_data_in: std_logic_vector(data_dimension-1 downto 0); 
    signal data_memory_data_out: std_logic_vector(data_dimension-1 downto 0); 
    signal data_memory_address: std_logic_vector(address_dimension-1 downto 0);
    signal data_memory_direction: std_logic;
    
    signal fetch_address_in: std_logic_vector(address_dimension-1 downto 0):=(others=>'0');
    signal fetch_pipeline_step: std_logic;
      
    signal fetch_instruction_request: std_logic;
    signal fetch_instruction_ready: std_logic;
      
    signal fetch_stage_ready: std_logic;
    signal fetch_instruction_in: std_logic_vector(data_dimension-1 downto 0);
      
    signal fetch_new_address: std_logic_Vector(address_dimension-1 downto 0);
    signal fetch_instruction_out: std_logic_vector(data_dimension-1 downto 0);
    
    signal decode_instruction_in: std_logic_vector(31 downto 0):=(others => '0');
    signal decode_register_a: std_logic_vector(31 downto 0);
    signal decode_register_b: std_logic_vector(31 downto 0);
    signal decode_register_dest: std_logic_vector(4 downto 0);
    signal decode_immediate_operand: std_logic_vector(31 downto 0);
    signal decode_alu_control: std_logic_vector(4 downto 0);
    signal decode_instruction_type: std_logic_vector(3 downto 0);
        
    signal decode_stage_ready: std_logic; 
    signal decode_pipeline_step: std_logic;
        
    signal decode_register_writeback_address: std_logic_vector(4 downto 0);
    signal decode_register_writeback_data: std_logic_vector(31 downto 0);
    signal decode_register_writeback_request: std_logic;
    
      
begin
    fetch_stage: fetch_stage_controller port map (
        clk => clk,
        reset => reset,
        address_in => fetch_address_in,
        pipeline_step => fetch_pipeline_step,
        instruction_request => fetch_instruction_request,
        instruction_ready => fetch_instruction_ready,
        fetch_stage_ready => fetch_stage_ready,
        instruction_in => fetch_instruction_in,
        new_address => fetch_new_address,
        instruction_out => fetch_instruction_out
    );
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
    decode: decode_stage port map (
        instruction_in =>decode_instruction_in,
        register_a=>decode_register_a,
        register_b=>decode_register_b,
        register_dest=>decode_register_dest,
        immediate_operand=>decode_immediate_operand,
        alu_control=>decode_alu_control,
        instruction_type=>decode_instruction_type,
        
        decode_stage_ready=>decode_stage_ready,
        pipeline_step=>decode_pipeline_step,
        
        register_writeback_address=>decode_register_writeback_address,
        register_writeback_data=>decode_register_writeback_data,
        register_writeback_request=>decode_register_writeback_request,
        
        clk=>clk,
        reset=>reset
    );
    
    fetch_address_in<=fetch_new_address;
    instruction_memory_request <= fetch_instruction_request;
    instruction_memory_address <= fetch_new_address;
    fetch_instruction_ready <= instruction_memory_ready;
    fetch_instruction_in <= instruction_memory_data;
    
    data_memory_request <= '0';
    data_memory_direction <= '0';
    decode_register_writeback_request<='0';
    decode_instruction_in <= fetch_instruction_out;
    
    process (clk) is 
    begin 
        if (rising_edge(clk)) then
            if (fetch_stage_ready='1' and decode_stage_ready='1') then
                fetch_pipeline_step <= '1';
                decode_pipeline_step <= '1';
            else 
                fetch_pipeline_step <= '0';
                decode_pipeline_step <= '0';
            end if;
        end if;
    end process;
end Behavioral;
