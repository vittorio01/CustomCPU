----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2023 06:25:12 PM
-- Design Name: 
-- Module Name: memory_interface - Behavioral
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

entity memory_interface is
  Generic (
    address_dimension: integer := 32;
    data_dimension: integer := 32;
    cache_page_address_dimension: integer := 24;
    cache_data_dimension: integer:= 256;
    cache_offset_address_dimension : integer := 5;
    
    C_memory_bus_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
    C_memory_bus_BURST_LEN	: integer	:= 8;
    C_memory_bus_ID_WIDTH	: integer	:= 8;
    C_memory_bus_ADDR_WIDTH	: integer	:= 32;
    C_memory_bus_DATA_WIDTH	: integer	:= 32;
    C_memory_bus_AWUSER_WIDTH	: integer	:= 0;
    C_memory_bus_ARUSER_WIDTH	: integer	:= 0;
    C_memory_bus_WUSER_WIDTH	: integer	:= 0;
    C_memory_bus_RUSER_WIDTH	: integer	:= 0;
    C_memory_bus_BUSER_WIDTH	: integer	:= 0
  );
  Port (
    instruction_memory_request: in std_logic;
    instruction_memory_ready: out std_logic;
    instruction_memory_data: out std_logic_vector(data_dimension-1 downto 0);
    instruction_memory_address: in std_logic_vector (address_dimension-1 downto 0);
    step: in std_logic;

    data_memory_request: in std_logic;
    data_memory_ready: out std_logic;
    data_memory_data_in:   in std_logic_vector(data_dimension-1 downto 0); 
    data_memory_data_out:  out std_logic_vector(data_dimension-1 downto 0); 
    data_memory_address: in std_logic_vector(address_dimension-1 downto 0);
    data_memory_direction: in std_logic;
    data_memory_write_mode: in std_logic_vector(1 downto 0); 
    clk: in std_logic;
    reset: in std_logic;
    
    memory_bus_aclk	: in std_logic;
    memory_bus_aresetn	: in std_logic;
    memory_bus_awid	: out std_logic_vector(C_memory_bus_ID_WIDTH-1 downto 0);
    memory_bus_awaddr	: out std_logic_vector(C_memory_bus_ADDR_WIDTH-1 downto 0);
    memory_bus_awlen	: out std_logic_vector(C_memory_bus_BURST_LEN-1 downto 0);
    memory_bus_awsize	: out std_logic_vector(2 downto 0);
    memory_bus_awburst	: out std_logic_vector(1 downto 0);
    memory_bus_awlock	: out std_logic;
    memory_bus_awcache	: out std_logic_vector(3 downto 0);
    memory_bus_awprot	: out std_logic_vector(2 downto 0);
    memory_bus_awqos	: out std_logic_vector(3 downto 0);
    memory_bus_awuser	: out std_logic_vector(C_memory_bus_AWUSER_WIDTH-1 downto 0);
    memory_bus_awvalid	: out std_logic;
    memory_bus_awready	: in std_logic;
    memory_bus_wdata	: out std_logic_vector(C_memory_bus_DATA_WIDTH-1 downto 0);
    memory_bus_wstrb	: out std_logic_vector(C_memory_bus_DATA_WIDTH/8-1 downto 0);
    memory_bus_wlast	: out std_logic;
    memory_bus_wuser	: out std_logic_vector(C_memory_bus_WUSER_WIDTH-1 downto 0);
    memory_bus_wvalid	: out std_logic;
    memory_bus_wready	: in std_logic;
    memory_bus_bid	: in std_logic_vector(C_memory_bus_ID_WIDTH-1 downto 0);
    memory_bus_bresp	: in std_logic_vector(1 downto 0);
    memory_bus_buser	: in std_logic_vector(C_memory_bus_BUSER_WIDTH-1 downto 0);
    memory_bus_bvalid	: in std_logic;
    memory_bus_bready	: out std_logic;
    memory_bus_arid	: out std_logic_vector(C_memory_bus_ID_WIDTH-1 downto 0);
    memory_bus_araddr	: out std_logic_vector(C_memory_bus_ADDR_WIDTH-1 downto 0);
    memory_bus_arlen	: out std_logic_vector(C_memory_bus_BURST_LEN-1 downto 0);
    memory_bus_arsize	: out std_logic_vector(2 downto 0);
    memory_bus_arburst	: out std_logic_vector(1 downto 0);
    memory_bus_arlock	: out std_logic;
    memory_bus_arcache	: out std_logic_vector(3 downto 0);
    memory_bus_arprot	: out std_logic_vector(2 downto 0);
    memory_bus_arqos	: out std_logic_vector(3 downto 0);
    memory_bus_aruser	: out std_logic_vector(C_memory_bus_ARUSER_WIDTH-1 downto 0);
    memory_bus_arvalid	: out std_logic;
    memory_bus_arready	: in std_logic;
    memory_bus_rid	: in std_logic_vector(C_memory_bus_ID_WIDTH-1 downto 0);
    memory_bus_rdata	: in std_logic_vector(C_memory_bus_DATA_WIDTH-1 downto 0);
    memory_bus_rresp	: in std_logic_vector(1 downto 0);
    memory_bus_rlast	: in std_logic;
    memory_bus_ruser	: in std_logic_vector(C_memory_bus_RUSER_WIDTH-1 downto 0);
    memory_bus_rvalid	: in std_logic;
    memory_bus_rready	: out std_logic
  );
end memory_interface;

architecture Behavioral of memory_interface is
    component cache is
    generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line
        cache_address_dimension : integer := 6;
        memory_address_dimension: integer := 24;
        cache_data_dimension: integer:= 256;
        transmission_data_dimension: integer := 32;
        
        cache_offset_address_dimension: integer:= 8;
        
		-- Parameters of Axi Master Bus Interface memory_bus
		C_memory_bus_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_memory_bus_BURST_LEN	: integer	:= 8;
		C_memory_bus_ID_WIDTH	: integer	:= 8;
		C_memory_bus_ADDR_WIDTH	: integer	:= 32;
		C_memory_bus_DATA_WIDTH	: integer	:= 32;
		C_memory_bus_AWUSER_WIDTH	: integer	:= 0;
		C_memory_bus_ARUSER_WIDTH	: integer	:= 0;
		C_memory_bus_WUSER_WIDTH	: integer	:= 0;
		C_memory_bus_RUSER_WIDTH	: integer	:= 0;
		C_memory_bus_BUSER_WIDTH	: integer	:= 0
	);
	port (
		-- Users to add ports here
        address_in: in std_logic_vector(memory_address_dimension-1 downto 0);
        data_in: in std_logic_vector(cache_data_dimension-1 downto 0);
        data_out: out std_logic_vector(cache_data_dimension-1 downto 0);
        ready: out std_logic;
        write_enable: in std_logic;
        enable: in std_logic;
        clk: in std_logic;
        reset: in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Master Bus Interface memory_bus
        
       
		memory_bus_aclk	: in std_logic;
		memory_bus_aresetn	: in std_logic;
		memory_bus_awid	: out std_logic_vector(C_memory_bus_ID_WIDTH-1 downto 0);
		memory_bus_awaddr	: out std_logic_vector(C_memory_bus_ADDR_WIDTH-1 downto 0);
		memory_bus_awlen	: out std_logic_vector(C_memory_bus_BURST_LEN-1 downto 0);
		memory_bus_awsize	: out std_logic_vector(2 downto 0);
		memory_bus_awburst	: out std_logic_vector(1 downto 0);
		memory_bus_awlock	: out std_logic;
		memory_bus_awcache	: out std_logic_vector(3 downto 0);
		memory_bus_awprot	: out std_logic_vector(2 downto 0);
		memory_bus_awqos	: out std_logic_vector(3 downto 0);
		memory_bus_awuser	: out std_logic_vector(C_memory_bus_AWUSER_WIDTH-1 downto 0);
		memory_bus_awvalid	: out std_logic;
		memory_bus_awready	: in std_logic;
		memory_bus_wdata	: out std_logic_vector(C_memory_bus_DATA_WIDTH-1 downto 0);
		memory_bus_wstrb	: out std_logic_vector(C_memory_bus_DATA_WIDTH/8-1 downto 0);
		memory_bus_wlast	: out std_logic;
		memory_bus_wuser	: out std_logic_vector(C_memory_bus_WUSER_WIDTH-1 downto 0);
		memory_bus_wvalid	: out std_logic;
		memory_bus_wready	: in std_logic;
		memory_bus_bid	: in std_logic_vector(C_memory_bus_ID_WIDTH-1 downto 0);
		memory_bus_bresp	: in std_logic_vector(1 downto 0);
		memory_bus_buser	: in std_logic_vector(C_memory_bus_BUSER_WIDTH-1 downto 0);
		memory_bus_bvalid	: in std_logic;
		memory_bus_bready	: out std_logic;
		memory_bus_arid	: out std_logic_vector(C_memory_bus_ID_WIDTH-1 downto 0);
		memory_bus_araddr	: out std_logic_vector(C_memory_bus_ADDR_WIDTH-1 downto 0);
		memory_bus_arlen	: out std_logic_vector(C_memory_bus_BURST_LEN-1 downto 0);
		memory_bus_arsize	: out std_logic_vector(2 downto 0);
		memory_bus_arburst	: out std_logic_vector(1 downto 0);
		memory_bus_arlock	: out std_logic;
		memory_bus_arcache	: out std_logic_vector(3 downto 0);
		memory_bus_arprot	: out std_logic_vector(2 downto 0);
		memory_bus_arqos	: out std_logic_vector(3 downto 0);
		memory_bus_aruser	: out std_logic_vector(C_memory_bus_ARUSER_WIDTH-1 downto 0);
		memory_bus_arvalid	: out std_logic;
		memory_bus_arready	: in std_logic;
		memory_bus_rid	: in std_logic_vector(C_memory_bus_ID_WIDTH-1 downto 0);
		memory_bus_rdata	: in std_logic_vector(C_memory_bus_DATA_WIDTH-1 downto 0);
		memory_bus_rresp	: in std_logic_vector(1 downto 0);
		memory_bus_rlast	: in std_logic;
		memory_bus_ruser	: in std_logic_vector(C_memory_bus_RUSER_WIDTH-1 downto 0);
		memory_bus_rvalid	: in std_logic;
		memory_bus_rready	: out std_logic
	);
    end component cache;
    component cache_register is
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
        data_write_mode: in std_logic_vector(1 downto 0);
        
        clk: in std_logic;
        reset: in std_logic
        
        );
    end component cache_register;
    
    signal cache_write_enable: std_logic;
    signal cache_enable: std_logic;
    signal cache_address_in: std_logic_vector (cache_page_address_dimension-1 downto 0);
    signal cache_data_in: std_logic_vector(cache_data_dimension-1 downto 0);
    signal cache_data_out: std_logic_vector (cache_data_dimension-1 downto 0);
    signal cache_ready: std_logic;
    
    signal register_page_in: std_logic_vector(cache_data_dimension-1 downto 0);
    signal register_page_out: std_logic_vector(cache_data_dimension-1 downto 0);
        
    signal register_page_number: std_logic;
    signal register_page_access: std_logic;
    signal register_write_enable: std_logic;
        
    signal register_data_out: std_logic_vector(31 downto 0);
    signal register_data_in: std_logic_vector(31 downto 0);
    signal register_data_write: std_logic;
    signal register_data_access: std_logic;
    signal register_data_address: std_logic_vector(cache_offset_address_dimension-1 downto 0);
    
    signal loaded_page1: std_logic_vector(cache_page_address_dimension-1 downto 0) := (others => '0');
    signal loaded_page2: std_logic_vector(cache_page_address_dimension-1 downto 0) := (others => '0');
    signal page1_loaded: std_logic;
    signal page2_loaded: std_logic;
    signal offset_overflow: std_logic;
    
    type state is (wait_request, 
                    data_page1_request,
                    data_page1_load,
                    data_page2_request,
                    data_page2_load,
                    write_data,
                    write_page1_send, 
                    write_page2_send,
                    read_data,
                    data_latch,
                    instruction_page1_request,
                    instruction_page1_load,
                    instruction_page2_request,
                    instruction_page2_load,
                    instruction_read,
                    instruction_latch);
    signal current_state: state;
    
begin
    cache1: cache 
    port map ( 
            clk => clk,
            reset => reset,
            address_in => cache_address_in,
            data_in => cache_data_in,
            data_out => cache_data_out,
            ready => cache_ready,
            write_enable => cache_write_enable,
            enable => cache_enable,
                    
            memory_bus_aclk	 => memory_bus_aclk,
            memory_bus_aresetn => memory_bus_aresetn,
            memory_bus_awid => memory_bus_awid,
            memory_bus_awaddr => memory_bus_awaddr,
            memory_bus_awlen => memory_bus_awlen,
            memory_bus_awsize => memory_bus_awsize,
            memory_bus_awburst => memory_bus_awburst  ,
            memory_bus_awlock => memory_bus_awlock,
            memory_bus_awcache => memory_bus_awcache,
            memory_bus_awprot => memory_bus_awprot,
            memory_bus_awqos => memory_bus_awqos,
            memory_bus_awuser => memory_bus_awuser,
            memory_bus_awvalid => memory_bus_awvalid,
            memory_bus_awready => memory_bus_awready ,
            memory_bus_wdata => memory_bus_wdata,
            memory_bus_wstrb => memory_bus_wstrb,
            memory_bus_wlast => memory_bus_wlast,
            memory_bus_wuser => memory_bus_wuser,
            memory_bus_wvalid => memory_bus_wvalid,
            memory_bus_wready => memory_bus_wready,
            memory_bus_bid => memory_bus_bid,
            memory_bus_bresp =>  memory_bus_bresp,
            memory_bus_buser => memory_bus_buser,
            memory_bus_bvalid => memory_bus_bvalid,
            memory_bus_bready => memory_bus_bready,
            memory_bus_arid => memory_bus_arid,
            memory_bus_araddr => memory_bus_araddr,
            memory_bus_arlen => memory_bus_arlen,
            memory_bus_arsize => memory_bus_arsize,
            memory_bus_arburst => memory_bus_arburst,
            memory_bus_arlock => memory_bus_arlock,
            memory_bus_arcache => memory_bus_arcache,
            memory_bus_arprot => memory_bus_arprot,
            memory_bus_arqos => memory_bus_arqos,
            memory_bus_aruser =>  memory_bus_aruser,
            memory_bus_arvalid => memory_bus_arvalid,
            memory_bus_arready => memory_bus_arready,
            memory_bus_rid => memory_bus_rid,
            memory_bus_rdata => memory_bus_rdata,
            memory_bus_rresp => memory_bus_rresp,
            memory_bus_rlast => memory_bus_rlast,
            memory_bus_ruser => memory_bus_ruser,
            memory_bus_rvalid => memory_bus_rvalid,
            memory_bus_rready => memory_bus_rready
    );
    
    reg: cache_register port map (
    
        page_in => register_page_in,
        page_out => register_page_out,
        
        page_number => register_page_number,
        page_access => register_page_access,
        write_enable => register_write_enable,
        
        data_out => register_data_out,
        data_in => register_data_in,
        data_write => register_data_write,
        data_access => register_data_access,
        data_address => register_data_address,
        data_write_mode => data_memory_write_mode,
        clk => clk,
        reset => reset
    );
    
    process (clk) is 
        constant address_range: integer:=cache_offset_address_dimension+cache_page_address_dimension;
        variable data_address: std_logic_vector((cache_offset_address_dimension+cache_page_address_dimension-1) downto 0);
        variable offset1,offset2: std_logic_vector(address_range-1 downto 0);
        begin 
        if (rising_edge(clk)) then
            if (reset='0') then 
                page1_loaded<='0';
                page2_loaded<='0';
                current_state<=wait_request;
            else 
                case current_state is 
                    when wait_request =>
                        if (step='1') then
                            if (data_memory_request = '1') then 
                                data_address(address_range-1 downto 0):=data_memory_address(address_range-1 downto 0);
                                offset1:= std_logic_vector(unsigned(data_address));
                                offset2:= std_logic_vector(unsigned(data_address)+3);
                                    if (loaded_page1 = offset1(address_range-1 downto cache_offset_address_dimension) and page1_loaded='1') then -- page 1 verify
                                        if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then --verify offset
                                            
                                            if (data_memory_direction = '1') then 
                                                offset_overflow<='0';
                                                current_state<=write_data;
                                            else 
                                                offset_overflow<='0';
                                                current_state<=read_data;
                                            end if;
                                        else 
                                            
                                            if (loaded_page2=offset2(address_range-1 downto cache_offset_address_dimension) and page2_loaded='1') then 
                                                if (data_memory_direction = '1') then 
                                                    offset_overflow<='1';
                                                    current_state<=write_data;
                                                else 
                                                    offset_overflow<='1';
                                                    current_state<=read_data;
                                                end if;
                                            else 
                                                
                                                current_state<=data_page2_request;
                                            end if;
                                        end if;
                                    else
                                        if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then 
                                            offset_overflow<='0';
                                           
                                            current_state<=data_page1_request;
                                        else 
                                            offset_overflow<='1';
                                             
                                            current_state<=data_page1_request;
                                        end if;
                                    end if;
                             
                            elsif (instruction_memory_request = '1') then
                                data_address(address_range-1 downto 0):=instruction_memory_address(address_range-1 downto 0);
                                offset1:= std_logic_vector(unsigned(data_address));
                                offset2:= std_logic_vector(unsigned(data_address)+3);
                                if (loaded_page1 = offset1(address_range-1 downto cache_offset_address_dimension) and page1_loaded='1') then -- page 1 verify
                                    if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then --verify offset
                                        offset_overflow<='0';
                                        current_state<=instruction_read;
                                    else 
                                        
                                        if (loaded_page2=offset2(address_range-1 downto cache_offset_address_dimension) and page2_loaded='1') then 
                                            offset_overflow<='1';
                                            current_state<=instruction_read;
                                        else 
                                            offset_overflow<='1';
                                            current_state<=instruction_page2_request;
                                        end if;
                                    end if;
                                else
                                    if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then 
                                        offset_overflow<='0';
                                       
                                        current_state<=instruction_page1_request;
                                    else 
                                        offset_overflow<='1';
                                       
                                        current_state<=instruction_page1_request;
                                    end if;
                                end if;
                            end if;
                         end if;
                    when data_page1_request =>
                        current_state <= data_page1_load;
                        
                    when data_page1_load => 
                        page1_loaded<='1';
                        if (cache_ready='1') then 
                            if (offset_overflow='1') then
                                current_state <= data_page2_request;
                            else 
                                if (data_memory_direction = '1') then
                                    current_state <= write_data;
                                else 
                                    current_state <= read_data;
                                end if;
                            end if;
                        end if;
                    when data_page2_request =>
                        current_state <= data_page2_load; 
                    when data_page2_load =>
                        page2_loaded<='1';
                        if (cache_ready='1') then 
                            if (data_memory_direction = '1') then
                                current_state <= write_data;
                            else 
                                current_state <= read_data;
                            end if;
                        end if;
                    when write_data => 
                        current_state <= write_page1_send;
                    when write_page1_send => 
                        if (cache_ready='1') then 
                            if (offset_overflow = '1') then 
                                current_state <= write_page2_send;
                            elsif (instruction_memory_request = '1') then
                                data_address(address_range-1 downto 0):=instruction_memory_address(address_range-1 downto 0);
                                offset1:= std_logic_vector(unsigned(data_address));
                                offset2:= std_logic_vector(unsigned(data_address)+3);
                                if (loaded_page1 = offset1(address_range-1 downto cache_offset_address_dimension) and page1_loaded='1') then -- page 1 verify
                                    if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then --verify offset
                                        offset_overflow<='0';
                                        current_state<=instruction_read;
                                    else 
                                        offset_overflow<='1';
                                        if (loaded_page2=offset2(address_range-1 downto cache_offset_address_dimension) and page2_loaded='1') then 
                                            current_state<=instruction_read;
                                        else 
                                            current_state<=instruction_page2_request;
                                        end if;
                                    end if;
                                else
                                    if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then 
                                        offset_overflow<='0';
                                        current_state<=instruction_page1_request;
                                    else 
                                        offset_overflow<='1';
                                        current_state<=instruction_page1_request;
                                    end if;
                                end if;
                            else 
                                current_state <= wait_request;
                            end if;
                        end if;
                    when write_page2_send =>
                        if (cache_ready='1') then 
                            if (instruction_memory_request = '1') then
                                data_address(address_range-1 downto 0):=instruction_memory_address(address_range-1 downto 0);
                                offset1:= std_logic_vector(unsigned(data_address));
                                offset2:= std_logic_vector(unsigned(data_address)+3);
                                if (loaded_page1 = offset1(address_range-1 downto cache_offset_address_dimension) and page1_loaded='1') then -- page 1 verify
                                    if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then --verify offset
                                        offset_overflow<='0';
                                        current_state<=instruction_read;
                                    else 
                                        offset_overflow<='1';
                                        if (loaded_page2=offset2(address_range-1 downto cache_offset_address_dimension) and page2_loaded='1') then 
                                            current_state<=instruction_read;
                                        else 
                                            
                                            current_state<=instruction_page2_request;
                                        end if;
                                    end if;
                                else
                                    if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then 
                                        offset_overflow<='0';
                                        current_state<=instruction_page1_request;
                                    else 
                                        offset_overflow<='1';
                                        current_state<=instruction_page1_request;
                                    end if;
                                end if;
                            else 
                                current_state <= wait_request;
                            end if;
                        end if;
                    when read_data =>
                        current_state <= data_latch;
                    when data_latch => 
                        if (instruction_memory_request = '1') then
                            data_address(address_range-1 downto 0):=instruction_memory_address(address_range-1 downto 0);
                            offset1:= std_logic_vector(unsigned(data_address));
                            offset2:= std_logic_vector(unsigned(data_address)+3);
                            if (loaded_page1 = offset1(address_range-1 downto cache_offset_address_dimension) and page1_loaded='1') then -- page 1 verify
                                if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then --verify offset
                                    offset_overflow<='0';
                                    current_state<=instruction_read;
                                else 
                                    offset_overflow<='1';
                                    if (loaded_page2=offset2(address_range-1 downto cache_offset_address_dimension) and page2_loaded='1') then 
                                        current_state<=instruction_read;
                                    else 
                                        
                                        current_state<=instruction_page2_request;
                                    end if;
                                end if;
                            else
                                if (offset1(address_range-1 downto cache_offset_address_dimension) = offset2(address_range-1 downto cache_offset_address_dimension)) then 
                                    offset_overflow<='0';
                                    current_state<=instruction_page1_request;
                                else 
                                    offset_overflow<='1';
                                    current_state<=instruction_page1_request;
                                end if;
                            end if;
                        else 
                            if (step = '0') then
                                current_state <= wait_request;
                            end if;
                        end if;
                    when instruction_page1_request =>
                        current_state <= instruction_page1_load;
                        page1_loaded<='1';
                    when instruction_page1_load => 
                        if (cache_ready='1') then 
                            if (offset_overflow='0') then 
                                current_state <= instruction_read;
                            else 
                                current_state <= instruction_page2_request;
                            end if;
                        end if;
                    when instruction_page2_request =>
                        current_state <= instruction_page2_load;
                        page2_loaded<='1';
                    when instruction_page2_load =>
                        if (cache_ready='1') then 
                            current_state <= instruction_read;
                        end if;
                    when instruction_read =>
                        current_state <= instruction_latch;
                    when instruction_latch => 
                        if (step='0') then
                            current_state <= wait_request;
                        end if;
                end case;
            end if;
        end if;
        
        
    end process;
    
    register_page_in <= cache_data_out;
    cache_data_in <= register_page_out;
    process (current_state) is 
        begin
        
        case current_state is 
            when wait_request => 
                cache_enable<='0';
                cache_write_enable<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_data_access <='0';
                register_data_write<='0';
                instruction_memory_ready <= '1';
                data_memory_ready <= '1';
                
            when data_page1_request => 
                cache_address_in <= data_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension);
                loaded_page1 <= data_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension);
                cache_enable <= '1';
                cache_write_enable<='0';
                instruction_memory_ready<='0';
                data_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_data_access <='0';
                register_data_write<='0';
                register_page_number<='0';
                
                
            when data_page1_load => 
                cache_enable <= '0';
                cache_write_enable<='0';
                instruction_memory_ready<='0';
                data_memory_ready<='0';
                register_page_access <= '1';
                register_write_enable <='1';
                register_data_access <='0';
                register_data_write<='0';
                register_page_number<='0';
                
            when data_page2_request => 
                cache_address_in <= std_logic_vector(unsigned(data_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension))+1);
                loaded_page2<= std_logic_vector(unsigned(data_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension))+1);
                cache_enable <= '1';
                
                cache_write_enable<='0';
                instruction_memory_ready<='0';
                data_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_page_number<='0';
                register_data_access <='0';
                register_data_write<='0';
                
                
            
            when data_page2_load =>
                cache_enable <= '0';
                cache_write_enable<='0';
                instruction_memory_ready<='0';
                data_memory_ready<='0';
                register_page_access <= '1';
                register_write_enable <='1';
                register_page_number<='1';
                register_data_access <='0';
                register_data_write<='0';
                
            when write_data => 
                register_data_address<=data_memory_address(cache_offset_address_dimension-1 downto 0);
                cache_address_in <= loaded_page1;
                cache_write_enable<='1';
                cache_enable<='1';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_data_access <='1';
                register_data_write<='1';
                register_data_in <= data_memory_data_in;
            when write_page1_send => 
                cache_address_in <= loaded_page1;
                cache_write_enable<='1';
                cache_enable<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '1';
                register_write_enable <='0';
                register_page_number<='0';
                register_data_access <='0';
                register_data_write<='0';

            when write_page2_send => 
                cache_address_in <= loaded_page2;
                cache_write_enable<='1';
                cache_enable<='1';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '1';
                register_write_enable <='0';
                register_page_number<='1';
                register_data_access <='1';
                register_data_write<='0';
            when read_data =>
            
                register_data_address<=data_memory_address(cache_offset_address_dimension-1 downto 0);
                cache_write_enable<='0';
                cache_enable<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_page_number<='0';
                register_data_access <='1';
                register_data_write<='0';
                
                
            when data_latch =>
                data_memory_data_out<=register_data_out;
                
            when instruction_page1_request => 
                cache_address_in <= instruction_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension);
                loaded_page1 <= instruction_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension);
                cache_write_enable<='0';
                cache_enable<='1';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_data_access <='0';
                register_data_write<='0';
            when instruction_page1_load => 
                cache_write_enable<='0';
                cache_enable<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_number<='0';
                register_page_access <= '1';
                register_write_enable <='1';
                register_data_access <='0';
                register_data_write<='0';
            when instruction_page2_request => 
                cache_address_in <= std_logic_vector(unsigned(instruction_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension))+1);
                loaded_page2<= std_logic_vector(unsigned(instruction_memory_address(cache_offset_address_dimension+cache_page_address_dimension-1 downto cache_offset_address_dimension))+1);
                cache_write_enable<='0';
                cache_enable<='1';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_data_access <='0';
                register_data_write<='0';
                
            when instruction_page2_load => 
                cache_write_enable<='0';
                cache_enable<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_number<='1';
                register_page_access <= '1';
                register_write_enable <='1';
                register_data_access <='0';
                register_data_write<='0';
                
            when instruction_read => 
                register_data_address<=instruction_memory_address(cache_offset_address_dimension-1 downto 0);
                cache_write_enable<='0';
                cache_enable<='0';
                data_memory_ready<='0';
                instruction_memory_ready<='0';
                register_page_access <= '0';
                register_write_enable <='0';
                register_page_number<='0';
                register_data_access <='1';
                register_data_write<='0';
            
            when instruction_latch => 
                instruction_memory_data<=register_data_out;

        end case;
       
    end process;
    
    
end Behavioral;
