----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/03/2023 12:21:58 PM
-- Design Name: 
-- Module Name: fetch_stage_controller - Behavioral
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

entity fetch_stage_controller is
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
end fetch_stage_controller;

architecture Behavioral of fetch_stage_controller is
    component program_counter is
      generic (address_width: integer:=address_width;                                 --width of address lines (bits)
               instruction_width: integer:=4);                             --width of the instructions (bytes)
      Port (load_enable: in std_logic;                                     --line used to trigger the counter to load a specific address from address_in (enabled -> '1');
            address_in: in std_logic_vector(address_width-1 downto 0);     --input line used to set a specific value to the program counter
            address_out: out std_logic_vector(address_width-1 downto 0);   --output address from the program counter
            
            clk: in std_logic;                                             
            reset:in std_logic);                                           --syncronus reset (enable -> '0');
    end component program_counter;
    signal pc_address_out: std_logic_vector(address_width-1 downto 0);
    
    
    type state is (step_wait,instruction_fetch,instruction_load);
    signal current_state: state;
begin
    pc: program_counter port map (clk => clk, reset => reset, address_in=>address_in, address_out => pc_address_out, load_enable=>pipeline_step);
    process (clk) is
    begin 
        if (rising_edge(clk)) then 
            if (reset='0') then 
                current_state<= step_wait;
            else  
                if (current_state=step_wait) then 
                    if (pipeline_step='1') then 
                        current_state <= instruction_load;
                    end if;
                elsif (current_state = instruction_load) then
                    current_state <= instruction_fetch;
                elsif (current_state = instruction_fetch) then 
                    if (instruction_ready='1') then 
                        current_state <= step_wait;
                    end if;
                else 
                    current_state <= step_wait;
                end if;
            end if;
        end if;
    end process;
    process (current_state) is
    begin 
        case current_state is 
        when step_wait => 
            fetch_stage_ready <= '1';
            instruction_request <='0';
        when instruction_load =>
            instruction_request <='1';
            fetch_stage_ready <= '0';
        when instruction_fetch => 
            instruction_request <='0';
            fetch_stage_ready<='0';
            
        end case;
    end process;
    new_address <= pc_address_out;
    instruction_out <= instruction_in;
end Behavioral;
