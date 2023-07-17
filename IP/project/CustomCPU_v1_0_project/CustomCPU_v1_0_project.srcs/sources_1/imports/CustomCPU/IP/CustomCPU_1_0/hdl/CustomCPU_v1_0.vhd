library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CustomCPU_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

        address_dimension: integer := 32;
        data_dimension: integer := 32;
        
		-- Parameters of Axi Master Bus Interface memory_bus
		C_memory_bus_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_memory_bus_BURST_LEN	: integer	:= 4;
		C_memory_bus_ID_WIDTH	: integer	:= 4;
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


		-- Ports of Axi Master Bus Interface memory_bus
		memory_bus_init_axi_txn	: in std_logic;
		memory_bus_txn_done	: out std_logic;
		memory_bus_error	: out std_logic;
		memory_bus_aclk	: in std_logic;
		memory_bus_aresetn	: in std_logic;
		memory_bus_awid	: out std_logic_vector(C_memory_bus_ID_WIDTH-1 downto 0);
		memory_bus_awaddr	: out std_logic_vector(C_memory_bus_ADDR_WIDTH-1 downto 0);
		memory_bus_awlen	: out std_logic_vector(7 downto 0);
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
		memory_bus_arlen	: out std_logic_vector(7 downto 0);
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
end CustomCPU_v1_0;

architecture arch_imp of CustomCPU_v1_0 is
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
            if (reset = '0') then 
                fetch_pipeline_step <= '0';
                decode_pipeline_step <= '0';
            else 
                if (fetch_stage_ready = '1' and decode_stage_ready = '1') then 
                    fetch_pipeline_step <= '1';
                    decode_pipeline_step <= '1';
                else 
                    fetch_pipeline_step <= '0';
                    decode_pipeline_step <= '0';
                end if;
            end if;
        end if;
    end process;
end arch_imp;
