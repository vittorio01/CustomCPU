----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/03/2023 04:46:18 PM
-- Design Name: 
-- Module Name: cpu_fetch_testbench - Behavioral
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

entity cpu_fetch_testbench is
  
end cpu_fetch_testbench;

architecture Behavioral of cpu_fetch_testbench is
    component CustomCPU_v1_0 is
         generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

        address_dimension: integer := 32;
        data_dimension: integer := 32;
        
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
    
            -- User ports ends
            clk: in std_logic;
            reset: in std_logic;
            memory_bus_aclk	: out std_logic;
            memory_bus_aresetn	: out std_logic;
            memory_bus_awid	: out std_logic_vector(7 downto 0);
            memory_bus_awaddr	: out std_logic_vector(31 downto 0);
            memory_bus_awlen	: out std_logic_vector(7 downto 0);
            memory_bus_awsize	: out std_logic_vector(2 downto 0);
            memory_bus_awburst	: out std_logic_vector(1 downto 0);
            memory_bus_awlock	: out std_logic;
            memory_bus_awcache	: out std_logic_vector(3 downto 0);
            memory_bus_awprot	: out std_logic_vector(2 downto 0);
            memory_bus_awqos	: out std_logic_vector(3 downto 0);
            memory_bus_awuser	: out std_logic_vector(-1 downto 0);
            memory_bus_awvalid	: out std_logic;
            memory_bus_awready	: in std_logic;
            memory_bus_wdata	: out std_logic_vector(31 downto 0);
            memory_bus_wstrb	: out std_logic_vector(3 downto 0);
            memory_bus_wlast	: out std_logic;
            memory_bus_wuser	: out std_logic_vector(-1 downto 0);
            memory_bus_wvalid	: out std_logic;
            memory_bus_wready	: in std_logic;
            memory_bus_bid	: in std_logic_vector(7 downto 0);
            memory_bus_bresp	: in std_logic_vector(1 downto 0);
            memory_bus_buser	: in std_logic_vector(-1 downto 0);
            memory_bus_bvalid	: in std_logic;
            memory_bus_bready	: out std_logic;
            memory_bus_arid	: out std_logic_vector(7 downto 0);
            memory_bus_araddr	: out std_logic_vector(31 downto 0);
            memory_bus_arlen	: out std_logic_vector(7 downto 0);
            memory_bus_arsize	: out std_logic_vector(2 downto 0);
            memory_bus_arburst	: out std_logic_vector(1 downto 0);
            memory_bus_arlock	: out std_logic;
            memory_bus_arcache	: out std_logic_vector(3 downto 0);
            memory_bus_arprot	: out std_logic_vector(2 downto 0);
            memory_bus_arqos	: out std_logic_vector(3 downto 0);
            memory_bus_aruser	: out std_logic_vector(-1 downto 0);
            memory_bus_arvalid	: out std_logic;
            memory_bus_arready	: in std_logic;
            memory_bus_rid	: in std_logic_vector(7 downto 0);
            memory_bus_rdata	: in std_logic_vector(31 downto 0);
            memory_bus_rresp	: in std_logic_vector(1 downto 0);
            memory_bus_rlast	: in std_logic;
            memory_bus_ruser	: in std_logic_vector(-1 downto 0);
            memory_bus_rvalid	: in std_logic;
            memory_bus_rready	: out std_logic
        );
    end component CustomCPU_v1_0;
    component blk_mem_gen_0 IS
      PORT (
        rsta_busy : OUT STD_LOGIC;
        rstb_busy : OUT STD_LOGIC;
        s_aclk : IN STD_LOGIC;
        s_aresetn : IN STD_LOGIC;
        s_axi_awid : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        s_axi_awvalid : IN STD_LOGIC;
        s_axi_awready : OUT STD_LOGIC;
        s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s_axi_wlast : IN STD_LOGIC;
        s_axi_wvalid : IN STD_LOGIC;
        s_axi_wready : OUT STD_LOGIC;
        s_axi_bid : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        s_axi_bvalid : OUT STD_LOGIC;
        s_axi_bready : IN STD_LOGIC;
        s_axi_arid : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        s_axi_arvalid : IN STD_LOGIC;
        s_axi_arready : OUT STD_LOGIC;
        s_axi_rid : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        s_axi_rlast : OUT STD_LOGIC;
        s_axi_rvalid : OUT STD_LOGIC;
        s_axi_rready : IN STD_LOGIC
      );
    end component blk_mem_gen_0;
    signal clk, reset: std_logic;

    signal memory_bus_aclk	: std_logic;
    signal memory_bus_aresetn	: std_logic;
    signal memory_bus_awid	: std_logic_vector(7 downto 0);
    signal memory_bus_awaddr	: std_logic_vector(31 downto 0);
    signal memory_bus_awlen	: std_logic_vector(7 downto 0);
    signal memory_bus_awsize	: std_logic_vector(2 downto 0);
    signal memory_bus_awburst	: std_logic_vector(1 downto 0);
    signal memory_bus_awlock	: std_logic;
    signal memory_bus_awcache	: std_logic_vector(3 downto 0);
    signal memory_bus_awprot	: std_logic_vector(2 downto 0);
    signal memory_bus_awqos	: std_logic_vector(3 downto 0);
    signal memory_bus_awuser	: std_logic_vector(-1 downto 0);
    signal memory_bus_awvalid	: std_logic;
    signal memory_bus_awready	: std_logic;
    signal memory_bus_wdata	: std_logic_vector(31 downto 0);
    signal memory_bus_wstrb	: std_logic_vector(3 downto 0);
    signal memory_bus_wlast	: std_logic;
    signal memory_bus_wuser	: std_logic_vector(-1 downto 0);
    signal memory_bus_wvalid	: std_logic;
    signal memory_bus_wready	: std_logic;
    signal memory_bus_bid	: std_logic_vector(7 downto 0);
    signal memory_bus_bresp	: std_logic_vector(1 downto 0);
    signal memory_bus_buser	: std_logic_vector(-1 downto 0);
    signal memory_bus_bvalid	: std_logic;
    signal memory_bus_bready	: std_logic;
    signal memory_bus_arid	: std_logic_vector(7 downto 0);
    signal memory_bus_araddr	: std_logic_vector(31 downto 0);
    signal memory_bus_arlen	: std_logic_vector(7 downto 0);
    signal memory_bus_arsize	: std_logic_vector(2 downto 0);
    signal memory_bus_arburst	: std_logic_vector(1 downto 0);
    signal memory_bus_arlock	: std_logic;
    signal memory_bus_arcache	: std_logic_vector(3 downto 0);
    signal memory_bus_arprot	: std_logic_vector(2 downto 0);
    signal memory_bus_arqos	: std_logic_vector(3 downto 0);
    signal memory_bus_aruser	: std_logic_vector(-1 downto 0);
    signal memory_bus_arvalid	: std_logic;
    signal memory_bus_arready	: std_logic;
    signal memory_bus_rid	: std_logic_vector(7 downto 0);
    signal memory_bus_rdata	: std_logic_vector(31 downto 0);
    signal memory_bus_rresp	: std_logic_vector(1 downto 0);
    signal memory_bus_rlast	: std_logic;
    signal memory_bus_ruser	: std_logic_vector(-1 downto 0);
    signal memory_bus_rvalid	: std_logic;
    signal memory_bus_rready	:std_logic;
    
    signal rsta_busy, rstb_busy: std_logic;
begin
    ram: blk_mem_gen_0
    
    port map (
        rsta_busy => rsta_busy,
        rstb_busy => rstb_busy,
        s_aclk=> memory_bus_aclk,
        s_aresetn => memory_bus_aresetn,
        s_axi_awid => memory_bus_awid,
        s_axi_awaddr => memory_bus_awaddr,
        s_axi_awlen => memory_bus_awlen,
        s_axi_awsize => memory_bus_awsize,
        s_axi_awburst =>memory_bus_awburst,
        s_axi_awvalid =>memory_bus_awvalid,
        s_axi_awready =>memory_bus_awready,
        s_axi_wdata =>memory_bus_wdata,
        s_axi_wstrb =>memory_bus_wstrb,
        s_axi_wlast =>memory_bus_wlast,
        s_axi_wvalid =>memory_bus_wvalid,
        s_axi_wready =>memory_bus_wready,
        s_axi_bid =>memory_bus_bid,
        s_axi_bresp =>memory_bus_bresp,
        s_axi_bvalid =>memory_bus_bvalid,
        s_axi_bready =>memory_bus_bready,
        s_axi_arid =>memory_bus_arid,
        s_axi_araddr =>memory_bus_araddr,
        s_axi_arlen=>memory_bus_arlen,
        s_axi_arsize =>memory_bus_arsize,
        s_axi_arburst =>memory_bus_arburst,
        s_axi_arvalid =>memory_bus_arvalid,
        s_axi_arready =>memory_bus_arready,
        s_axi_rid =>memory_bus_rid,
        s_axi_rdata =>memory_bus_rdata,
        s_axi_rresp =>memory_bus_rresp,
        s_axi_rlast=>memory_bus_rlast,
        s_axi_rvalid =>memory_bus_rvalid,
        s_axi_rready =>memory_bus_rready
    );
    cpu1: CustomCPU_v1_0 
    generic map (
        address_dimension=> 32,
        data_dimension=> 32,
        
		-- Parameters of Axi Master Bus Interface memory_bus
		C_memory_bus_TARGET_SLAVE_BASE_ADDR	=>x"40000000",
        C_memory_bus_BURST_LEN=> 8,
        C_memory_bus_ID_WIDTH=> 8,
        C_memory_bus_ADDR_WIDTH=>32,
        C_memory_bus_DATA_WIDTH=> 32,
        C_memory_bus_AWUSER_WIDTH=> 0,
        C_memory_bus_ARUSER_WIDTH=> 0,
        C_memory_bus_WUSER_WIDTH=>0,
        C_memory_bus_RUSER_WIDTH=> 0,
        C_memory_bus_BUSER_WIDTH=> 0
    )
    port map (
        clk => clk,
        reset => reset,
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
    process is
    begin 
        clk <= '0';
        wait for 5ns;
        clk <= '1';
        wait for 5ns;
    end process;
    process is 
    begin 
        reset <= '0';
        wait for 40ns;
        reset <= '1';
        wait for 15000ns;
        
    end process;
end Behavioral;
