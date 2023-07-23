----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2023 04:38:30 PM
-- Design Name: 
-- Module Name: cache - Behavioral
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

entity cache is
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
end cache;

architecture Behavioral of cache is
    
	-- component declaration
	component CustomCPU_v1_0_memory_bus is
		generic (
		transmission_burst_number: integer:= cache_data_dimension/32;
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M_AXI_BURST_LEN	: integer	:= 8;
		C_M_AXI_ID_WIDTH	: integer	:= 8;
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_M_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_M_AXI_WUSER_WIDTH	: integer	:= 0;
		C_M_AXI_RUSER_WIDTH	: integer	:= 0;
		C_M_AXI_BUSER_WIDTH	: integer	:= 0
		);
		port (
		transmission_write_start: in std_logic;
        transmission_read_start: in std_logic;
        transmission_read_address: in std_logic_vector(31 downto 0);
        transmission_write_address: in std_logic_vector(31 downto 0);
        transmission_data_in: in std_logic_vector(31 downto 0);
        transmission_data_out: out std_logic_vector(31 downto 0);
        transmission_write_response: out std_logic_vector(1 downto 0);
        transmission_read_response: out std_logic_vector(1 downto 0);
        transmission_read_started: out std_logic;
        transmission_write_started: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_AWLEN	: out std_logic_vector(C_M_AXI_BURST_LEN-1 downto 0);
		M_AXI_AWSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_AWBURST	: out std_logic_vector(1 downto 0);
		M_AXI_AWLOCK	: out std_logic;
		M_AXI_AWCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWQOS	: out std_logic_vector(3 downto 0);
		M_AXI_AWUSER	: out std_logic_vector(C_M_AXI_AWUSER_WIDTH-1 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		M_AXI_WLAST	: out std_logic;
		M_AXI_WUSER	: out std_logic_vector(C_M_AXI_WUSER_WIDTH-1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		M_AXI_BUSER	: in std_logic_vector(C_M_AXI_BUSER_WIDTH-1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_ARLEN	: out std_logic_vector(C_M_AXI_BURST_LEN-1 downto 0);
		M_AXI_ARSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_ARBURST	: out std_logic_vector(1 downto 0);
		M_AXI_ARLOCK	: out std_logic;
		M_AXI_ARCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARQOS	: out std_logic_vector(3 downto 0);
		M_AXI_ARUSER	: out std_logic_vector(C_M_AXI_ARUSER_WIDTH-1 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RLAST	: in std_logic;
		M_AXI_RUSER	: in std_logic_vector(C_M_AXI_RUSER_WIDTH-1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic
		);
	end component CustomCPU_v1_0_memory_bus;
    component cache_block IS
      PORT (
        a : IN STD_LOGIC_VECTOR(cache_address_dimension-1 DOWNTO 0);
        d : IN STD_LOGIC_VECTOR(cache_data_dimension-1 DOWNTO 0);
        clk : IN STD_LOGIC;
        we : IN STD_LOGIC;
        i_ce : IN STD_LOGIC;
        spo : OUT STD_LOGIC_VECTOR(cache_data_dimension-1 DOWNTO 0)
      );
    end component cache_block;
    component page_list is 
      PORT (
        a : IN STD_LOGIC_VECTOR(cache_address_dimension-1 DOWNTO 0);
        d : IN STD_LOGIC_VECTOR(memory_address_dimension-cache_address_dimension DOWNTO 0);
        clk : IN STD_LOGIC;
        we : IN STD_LOGIC;
        spo : OUT STD_LOGIC_VECTOR(memory_address_dimension-cache_address_dimension DOWNTO 0)
      );
    end component page_list;
    
    signal transmission_write_start: std_logic:='0';
    signal transmission_read_start: std_logic:='0';
    signal transmission_read_address: std_logic_vector(31 downto 0);
    signal transmission_write_address: std_logic_vector(31 downto 0);
    signal transmission_data_in: std_logic_vector(31 downto 0);
    signal transmission_data_out: std_logic_vector(31 downto 0);
    signal transmission_write_response: std_logic_vector(1 downto 0);
    signal transmission_read_response: std_logic_vector(1 downto 0);
    signal transmission_read_started: std_logic;
    signal transmission_write_started: std_logic;
    
    signal cache_address: std_logic_vector(cache_address_dimension-1 downto 0);
    signal cache_data_in: std_logic_vector(cache_data_dimension-1 downto 0);
    signal cache_data_out: std_logic_vector(cache_data_dimension-1 downto 0);
    signal cache_write_enable: std_logic;
    signal cache_en: std_logic;
    
    signal list_address: std_logic_vector(cache_address_dimension-1 downto 0);
    signal list_data_in: std_logic_vector(memory_address_dimension-cache_address_dimension downto 0);
    signal list_data_out: std_logic_vector(memory_address_dimension-cache_address_dimension downto 0);
    signal list_write_enable: std_logic;
    
    type state is (wait_transfer,memory_read,cache_read,memory_writeback);
    signal current_state: state;
begin
    list: page_list port map (
        a => list_address,
        d => list_data_in,
        clk => clk,
        we => list_write_enable, 
        spo => list_data_out
        
    );
    cache: cache_block port map (
        a => cache_address,
        d => cache_data_in, 
        clk => clk,
        we => cache_write_enable,
        i_ce => cache_en,
        spo => cache_data_out
    );

CustomCPU_v1_0_memory_bus_inst : CustomCPU_v1_0_memory_bus
	generic map (
		C_M_TARGET_SLAVE_BASE_ADDR	=> C_memory_bus_TARGET_SLAVE_BASE_ADDR,
		C_M_AXI_BURST_LEN	=> C_memory_bus_BURST_LEN,
		C_M_AXI_ID_WIDTH	=> C_memory_bus_ID_WIDTH,
		C_M_AXI_ADDR_WIDTH	=> C_memory_bus_ADDR_WIDTH,
		C_M_AXI_DATA_WIDTH	=> C_memory_bus_DATA_WIDTH,
		C_M_AXI_AWUSER_WIDTH	=> C_memory_bus_AWUSER_WIDTH,
		C_M_AXI_ARUSER_WIDTH	=> C_memory_bus_ARUSER_WIDTH,
		C_M_AXI_WUSER_WIDTH	=> C_memory_bus_WUSER_WIDTH,
		C_M_AXI_RUSER_WIDTH	=> C_memory_bus_RUSER_WIDTH,
		C_M_AXI_BUSER_WIDTH	=> C_memory_bus_BUSER_WIDTH
	)
	port map (
		transmission_write_start => transmission_write_start,
        transmission_read_start => transmission_read_start,
        transmission_write_address => transmission_write_address,
        transmission_read_address => transmission_read_address,
        transmission_data_in => transmission_data_in,
        transmission_data_out => transmission_data_out,
        transmission_write_response => transmission_write_response,
        transmission_read_response => transmission_read_response,
        transmission_read_started => transmission_read_started,
        transmission_write_started => transmission_write_started,
		M_AXI_ACLK	=> memory_bus_aclk,
		M_AXI_ARESETN	=> memory_bus_aresetn,
		M_AXI_AWID	=> memory_bus_awid,
		M_AXI_AWADDR	=> memory_bus_awaddr,
		M_AXI_AWLEN	=> memory_bus_awlen,
		M_AXI_AWSIZE	=> memory_bus_awsize,
		M_AXI_AWBURST	=> memory_bus_awburst,
		M_AXI_AWLOCK	=> memory_bus_awlock,
		M_AXI_AWCACHE	=> memory_bus_awcache,
		M_AXI_AWPROT	=> memory_bus_awprot,
		M_AXI_AWQOS	=> memory_bus_awqos,
		M_AXI_AWUSER	=> memory_bus_awuser,
		M_AXI_AWVALID	=> memory_bus_awvalid,
		M_AXI_AWREADY	=> memory_bus_awready,
		M_AXI_WDATA	=> memory_bus_wdata,
		M_AXI_WSTRB	=> memory_bus_wstrb,
		M_AXI_WLAST	=> memory_bus_wlast,
		M_AXI_WUSER	=> memory_bus_wuser,
		M_AXI_WVALID	=> memory_bus_wvalid,
		M_AXI_WREADY	=> memory_bus_wready,
		M_AXI_BID	=> memory_bus_bid,
		M_AXI_BRESP	=> memory_bus_bresp,
		M_AXI_BUSER	=> memory_bus_buser,
		M_AXI_BVALID	=> memory_bus_bvalid,
		M_AXI_BREADY	=> memory_bus_bready,
		M_AXI_ARID	=> memory_bus_arid,
		M_AXI_ARADDR	=> memory_bus_araddr,
		M_AXI_ARLEN	=> memory_bus_arlen,
		M_AXI_ARSIZE	=> memory_bus_arsize,
		M_AXI_ARBURST	=> memory_bus_arburst,
		M_AXI_ARLOCK	=> memory_bus_arlock,
		M_AXI_ARCACHE	=> memory_bus_arcache,
		M_AXI_ARPROT	=> memory_bus_arprot,
		M_AXI_ARQOS	=> memory_bus_arqos,
		M_AXI_ARUSER	=> memory_bus_aruser,
		M_AXI_ARVALID	=> memory_bus_arvalid,
		M_AXI_ARREADY	=> memory_bus_arready,
		M_AXI_RID	=> memory_bus_rid,
		M_AXI_RDATA	=> memory_bus_rdata,
		M_AXI_RRESP	=> memory_bus_rresp,
		M_AXI_RLAST	=> memory_bus_rlast,
		M_AXI_RUSER	=> memory_bus_ruser,
		M_AXI_RVALID	=> memory_bus_rvalid,
		M_AXI_RREADY	=> memory_bus_rready
	);
    list_address <= address_in(cache_address_dimension-1 downto 0);
    cache_address <= address_in(cache_address_dimension-1 downto 0);
    cache_en <= '1';
	process (clk) is
	   variable memory_current_word_number: integer;

	   constant memory_transfer_number: integer:=cache_data_dimension/transmission_data_dimension;
	   constant memory_low_address: std_logic_vector(cache_offset_address_dimension-1 downto 0):=(others =>'0');
	   constant okay: std_logic_vector(1 downto 0):="00";
	   constant exokay: std_logic_vector(1 downto 0):="01";
	   constant svlerr: std_logic_vector(1 downto 0):="10";
	   constant decerr: std_logic_vector(1 downto 0):="11";
	   begin 
	   if (rising_edge(clk)) then 
	       if (reset='0') then 
	           current_state <= wait_transfer;
	           transmission_write_start <= '0';
               transmission_read_start <= '0';
               cache_write_enable <= '0';
	           list_write_enable <= '0';
	           
	       else 
	           if (current_state = wait_transfer) then 
	               cache_write_enable <= '0';
	               list_write_enable <= '0';
	               if (enable = '1') then 
	                   if (write_enable='1') then 
	                       ready <= '0';
	                       current_state <= memory_writeback;
	                   else 
	                       if (list_data_out(memory_address_dimension-cache_address_dimension)='1') then
                               if (list_data_out(memory_address_dimension-cache_address_dimension-1 downto 0)=address_in(memory_address_dimension-1 downto cache_address_dimension)) then 
                                    ready <= '0';
                                    current_state <= cache_read;
                               else
                                    ready <= '0';
                                    current_state <= memory_read;
                               end if;
                           else 
                                ready <= '0';
                                current_state <= memory_read;
                           end if;
	                   end if;
                       
                   else 
                        cache_write_enable <= '0';
                        ready <= '1';
                        transmission_write_start <= '0';
                        transmission_read_start <= '0';
	               end if;
	           elsif (current_state = memory_read) then
	               if (transmission_read_start='0') then
	                   transmission_read_start<='1';
                       transmission_read_address<=(address_in & memory_low_address);--memory_low_address);
	                   transmission_read_start <= '1'; 
	                   memory_current_word_number:=0;
	               else 
	                   if (transmission_read_started='1' and memory_current_word_number<memory_transfer_number) then
                           cache_data_in((memory_current_word_number*32)+31 downto (memory_current_word_number*32)) <= transmission_data_out;
                           data_out ((memory_current_word_number*32)+31 downto (memory_current_word_number*32)) <= transmission_data_out;
                           memory_current_word_number:=memory_current_word_number+1;
                       else 
                           if (memory_current_word_number>0) then 
                               transmission_read_start <='0';
                               list_write_enable <= '1';
                               list_data_in <= '1' & address_in(memory_address_dimension-1 downto cache_address_dimension);
                               cache_write_enable <= '1';
                               if (enable='0') then 
                                   current_state <= wait_transfer;
                               end if;
                           end if;
                       end if;
                   end if;
	           elsif (current_state = memory_writeback) then
	               if (transmission_write_start='0') then
	                   memory_current_word_number:=0;
	                   transmission_write_start<='1';
                       transmission_write_address<=(address_in & memory_low_address); --memory_low_address);
	                   transmission_write_start <= '1'; 
	               else 
	                   if (transmission_write_started='1' and memory_current_word_number < memory_transfer_number) then
                           transmission_data_in <= data_in((memory_current_word_number*32)+31 downto (memory_current_word_number*32));
                           memory_current_word_number:=memory_current_word_number+1;
                       else 
                           if (memory_current_word_number>0) then 
                               transmission_write_start <= '0';
                               list_write_enable <= '1';
                               list_data_in <= '1' & address_in(memory_address_dimension-1 downto cache_address_dimension);
                               cache_write_enable <= '1';
                               cache_data_in <= data_in;
                               if (enable='0') then
                                current_state <= wait_transfer;
                               end if;
                           end if;
                       end if;
                   end if;
	           elsif (current_state = cache_read) then 
	               ready <= '0';
	               data_out <= cache_data_out;
	               if (enable='0') then 
	                   current_state <= wait_transfer;
	               end if;
	           end if;
	       end if;
	   end if; 
    end process;
    
end Behavioral;
