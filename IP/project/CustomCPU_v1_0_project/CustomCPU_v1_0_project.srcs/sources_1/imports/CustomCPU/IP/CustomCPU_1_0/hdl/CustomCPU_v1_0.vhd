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
    component pipeline_manager is
      Port (
        fetch_stage_ready: in std_logic;
        fetch_stage_step: out std_logic;
        fetch_stage_mask: out std_logic;
        
        decode_stage_ready: in std_logic; 
        decode_stage_step: out std_logic;
        decode_stage_mask: out std_logic;
        
        execute_stage_ready: in std_logic; 
        execute_stage_step: out std_logic;
        execute_stage_mask: out std_logic;
        
        access_stage_ready: in std_logic;
        access_stage_step: out std_logic;
        access_stage_mask: out std_logic;
        
        memory_step: out std_logic;
        
        decode_register_a_address: in std_logic_vector(4 downto 0);
        decode_register_b_address: in std_logic_vector(4 downto 0);
        access_register_writeback_address: in std_logic_vector(4 downto 0);
        access_register_writeback_enable: in std_logic;
        
        decode_instruction_type: in std_logic_vector(3 downto 0);
        access_branch_enable: in std_logic;
        
        
        clk: in std_logic; 
        reset: in std_logic
      );
    end component pipeline_manager;
    component fetch_stage_controller is
      Generic (
        address_width: integer:= 32;
        instruction_width: integer:= 32
      );
      
      Port ( 
      address_in: in std_logic_vector(address_width-1 downto 0);
      pipeline_step: in std_logic;
      address_load_enable: in std_logic;
      instruction_request: out std_logic;
      instruction_ready: in std_logic;
      
      fetch_stage_ready: out std_logic;
      instruction_in: in std_logic_vector(instruction_width-1 downto 0);
      
      new_address: out std_logic_Vector(address_width-1 downto 0);
      instruction_out: out std_logic_vector(instruction_width-1 downto 0);
      
      output_mask: in std_logic;
      clk: in std_logic;
      reset: in std_logic
      );
    end component fetch_stage_controller;
    component memory_interface is
      Generic (
        address_dimension: integer := 32;
        data_dimension: integer := 32;
        cache_page_address_dimension: integer := 25;
        cache_data_dimension: integer:= 128;
        cache_offset_address_dimension : integer := 4;
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
        
        data_memory_request: in std_logic;
        data_memory_ready: out std_logic;
        data_memory_data_in:   in std_logic_vector(data_dimension-1 downto 0); 
        data_memory_data_out:  out std_logic_vector(data_dimension-1 downto 0); 
        data_memory_address: in std_logic_vector(address_dimension-1 downto 0);
        data_memory_direction: in std_logic;
        data_memory_write_mode: in std_logic_vector(1 downto 0);
        step: in std_logic;
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
    end component memory_interface;
    component decode_stage is
      Port (
        new_program_counter_in: in std_logic_vector(31 downto 0);
        new_program_counter_out: out std_logic_vector(31 downto 0);      
      
        instruction_in: in std_logic_vector(31 downto 0);
        register_a: out std_logic_vector(31 downto 0);
        register_b: out std_logic_vector(31 downto 0);
        register_dest: out std_logic_vector(4 downto 0);
        immediate_operand:  out std_logic_vector(31 downto 0);
        alu_control: out std_logic_vector(4 downto 0);
        instruction_type: out std_logic_vector(3 downto 0);
        
        decode_stage_ready: out std_logic; 
        pipeline_step: in std_logic;
        output_mask: in std_logic;
        register_writeback_address: in std_logic_vector(4 downto 0);
        register_writeback_data: in std_logic_vector(31 downto 0);
        register_writeback_request: in std_logic;
        
        register_a_address_out: out std_logic_vector(4 downto 0);
        register_b_address_out: out std_logic_vector(4 downto 0);
        
        clk: in std_logic; 
        reset: in std_logic
      );
    end component decode_stage;
    component execute_stage is
      Port (
        register_a: in std_logic_vector(31 downto 0);
        register_b: in std_logic_vector(31 downto 0);
        immediate_operand: in std_logic_vector(31 downto 0);
        new_program_counter: in stD_logic_vector(31 downto 0);
        
        new_program_counter_out: out std_logic_vector (31 downto 0);
        register_output_address_in: in std_logic_vector(4 downto 0);
        
        instruction_type: in std_logic_vector(3 downto 0);
        alu_control: in std_logic_vector (4 downto 0);
        
        alu_output: out std_logic_vector (31 downto 0);
        register_output_address: out std_logic_vector (4 downto 0);
        register_writeback_enable: out std_logic;
        
        data_memory_address: out std_logic_vector(31 downto 0);
        memory_write_enable: out std_logic;
        memory_read_enable: out std_logic;
        
        pipeline_step: in std_logic;
        execute_stage_ready: out std_logic;
        output_mask: in std_logic;
        memory_access_mode: out std_logic_vector(2 downto 0);
        
        branch_enable: out std_logic;
        
        clk: in std_logic;
        reset: in std_logic
        
      );
    end component execute_stage;
    component memory_access_stage is
        Port (
        new_program_counter_in: in std_logic_vector(31 downto 0);
        new_program_counter_out: out std_logic_vector(31 downto 0);
        
        memory_write_enable: in std_logic;
        memory_read_enable: in std_logic;
        register_writeback_enable: in std_logic;
        
        branch_enable: in std_logic;
        pc_address_load_enable: out std_logic;
        
        data_in: in std_logic_vector(31 downto 0);
        register_writeback_address_in: in std_logic_vector(4 downto 0);
        register_writeback_address_out: out std_logic_vector(4 downto 0);
        register_writeback_enable_out: out std_logic;
        register_writeback_data_out: out std_logic_vector(31 downto 0);
        
        data_memory_address_in: in std_logic_vector(31 downto 0);
        data_memory_access_mode: in std_logic_vector(2 downto 0);
        
        data_memory_request: out std_logic;
        data_memory_ready: in std_logic;
        data_memory_data_in:   out std_logic_vector(31 downto 0); 
        data_memory_data_out:  in std_logic_vector(31 downto 0); 
        data_memory_address: out std_logic_vector(31 downto 0);
        data_memory_direction: out std_logic;
        data_memory_write_mode: out std_logic_vector(1 downto 0); 
        
        pipeline_step: in std_logic;
        memory_access_stage_ready: out std_logic;
        output_mask: in std_logic;
        clk: in std_logic;
        reset: in std_logic
        );
    end component memory_access_stage;
    
    
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
    signal data_memory_write_mode: std_logic_vector (1 downto 0);
    signal memory_step: std_logic;
    
    signal fetch_address_in: std_logic_vector(address_dimension-1 downto 0):=(others=>'0');
    signal fetch_pipeline_step: std_logic;
    signal fetch_load_enable: std_logic;
    signal fetch_stage_ready: std_logic;
      
    signal fetch_new_address: std_logic_Vector(address_dimension-1 downto 0);
    signal fetch_instruction_out: std_logic_vector(data_dimension-1 downto 0);
    signal fetch_output_mask: std_logic;
    signal decode_register_a: std_logic_vector(31 downto 0);
    signal decode_register_b: std_logic_vector(31 downto 0);
    signal decode_register_dest: std_logic_vector(4 downto 0);
    signal decode_immediate_operand: std_logic_vector(31 downto 0);
    signal decode_alu_control: std_logic_vector(4 downto 0);
    signal decode_instruction_type: std_logic_vector(3 downto 0);
    
    signal decode_register_a_address: std_logic_vector(4 downto 0);
    signal decode_register_b_address: std_logic_vector(4 downto 0);
    
    signal decode_stage_ready: std_logic; 
    signal decode_pipeline_step: std_logic;
    signal decode_output_mask: std_logic;
    signal decode_new_program_counter: std_logic_vector(31 downto 0);
        
    signal execute_new_program_counter: std_logic_vector (31 downto 0);
    signal execute_register_output_address_in: std_logic_vector(4 downto 0);    
        
    signal execute_alu_output: std_logic_vector (31 downto 0);
    signal execute_register_output_address: std_logic_vector (4 downto 0);
    signal execute_register_writeback_enable: std_logic;
        
    signal execute_data_memory_address: std_logic_vector(31 downto 0);
    signal execute_memory_write_enable: std_logic;
    signal execute_memory_read_enable: std_logic;
    signal execute_branch_enable: std_logic;
    
        
    signal execute_pipeline_step: std_logic;
    signal execute_stage_ready: std_logic;
    signal execute_output_mask: std_logic;
    signal execute_memory_access_mode: std_logic_vector(2 downto 0);
        
    signal access_register_writeback_address: std_logic_vector(4 downto 0);
    signal access_register_writeback_enable: std_logic;
    signal access_register_writeback_data: std_logic_vector(31 downto 0);
      
        
    signal access_pipeline_step: std_logic;
    signal access_stage_ready: std_logic;
    signal access_output_mask: std_logic;
    
begin
    fetch_stage: fetch_stage_controller port map (
        clk => clk,
        reset => reset,
        address_load_enable => fetch_load_enable,
        address_in => fetch_address_in,
        pipeline_step => fetch_pipeline_step,
        instruction_request => instruction_memory_request,
        instruction_ready => instruction_memory_ready,
        fetch_stage_ready => fetch_stage_ready,
        instruction_in => instruction_memory_data,
        new_address => fetch_new_address,
        instruction_out => fetch_instruction_out,
        output_mask => fetch_output_mask
    );
    instruction_memory_address <= fetch_new_address;
    memory: memory_interface port map (
        clk => clk,
        reset => reset,
        instruction_memory_request => instruction_memory_request,
        instruction_memory_ready => instruction_memory_ready,
        instruction_memory_data => instruction_memory_data,
        instruction_memory_address => instruction_memory_address,
        step => memory_step,
        data_memory_request => data_memory_request,
        data_memory_ready => data_memory_ready,
        data_memory_data_in => data_memory_data_in,
        data_memory_data_out => data_memory_data_out,
        data_memory_address => data_memory_address,
        data_memory_direction => data_memory_direction,
        data_memory_write_mode => data_memory_write_mode,
        memory_bus_aclk => clk,
        memory_bus_aresetn => reset,
        memory_bus_awid => memory_bus_awid,
        memory_bus_awaddr => memory_bus_awaddr,
        memory_bus_awlen => memory_bus_awlen,
        memory_bus_awsize => memory_bus_awsize,
        memory_bus_awburst => memory_bus_awburst,
        memory_bus_awlock => memory_bus_awlock,
        memory_bus_awcache => memory_bus_awcache,
        memory_bus_awprot => memory_bus_awprot,
        memory_bus_awqos => memory_bus_awqos,
        memory_bus_awuser => memory_bus_awuser,
        memory_bus_awvalid => memory_bus_awvalid,
        memory_bus_awready => memory_bus_awready,
        memory_bus_wdata => memory_bus_wdata,
        memory_bus_wstrb => memory_bus_wstrb,
        memory_bus_wlast => memory_bus_wlast,
        memory_bus_wuser => memory_bus_wuser,
        memory_bus_wvalid => memory_bus_wvalid,
        memory_bus_wready => memory_bus_wready,
        memory_bus_bid => memory_bus_bid,
        memory_bus_bresp => memory_bus_bresp,
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
        memory_bus_aruser => memory_bus_aruser,
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
    decode: decode_stage port map (
        new_program_counter_in => fetch_new_address,
        new_program_counter_out => decode_new_program_counter,
        instruction_in => fetch_instruction_out,
        register_a=>decode_register_a,
        register_b=>decode_register_b,
        register_dest=>decode_register_dest,
        immediate_operand=>decode_immediate_operand,
        alu_control=>decode_alu_control,
        instruction_type=>decode_instruction_type,
        
        decode_stage_ready=>decode_stage_ready,
        pipeline_step=>decode_pipeline_step,
        register_a_address_out => decode_register_a_address,
        register_b_address_out => decode_register_b_address,
        register_writeback_address=>access_register_writeback_address,
        register_writeback_data=>access_register_writeback_data,
        register_writeback_request=>access_register_writeback_enable,
        output_mask => decode_output_mask,
        clk=>clk,
        reset=>reset
    );
    execute: execute_stage port map (
        register_a => decode_register_a,
        register_b => decode_register_b,
        immediate_operand => decode_immediate_operand,
        new_program_counter => decode_new_program_counter,
        
        new_program_counter_out => execute_new_program_counter,
        register_output_address_in => decode_register_dest,
        
        instruction_type => decode_instruction_type,
        alu_control => decode_alu_control,
        
        alu_output => execute_alu_output,
        register_output_address => execute_register_output_address,
        register_writeback_enable => execute_register_writeback_enable,
        
        data_memory_address => execute_data_memory_address,
        memory_write_enable => execute_memory_write_enable,
        memory_read_enable => execute_memory_read_enable,
        
        pipeline_step => execute_pipeline_step,
        execute_stage_ready => execute_stage_ready,
        branch_enable => execute_branch_enable,
        memory_access_mode => execute_memory_access_mode,
        output_mask => execute_output_mask,
        clk => clk,
        reset => reset
    );
    memory_access: memory_access_stage port map (
        new_program_counter_in => execute_new_program_counter,
        new_program_counter_out => fetch_address_in,
        
        memory_write_enable => execute_memory_write_enable,
        memory_read_enable => execute_memory_read_enable,
        register_writeback_enable => execute_register_writeback_enable,
        branch_enable => execute_branch_enable,
        pc_address_load_enable => fetch_load_enable,
        
        data_in => execute_alu_output,
        register_writeback_address_in => execute_register_output_address,
        register_writeback_address_out => access_register_writeback_address,
        register_writeback_enable_out => access_register_writeback_enable,
        register_writeback_data_out => access_register_writeback_data,
        
        data_memory_address_in => execute_data_memory_address,
        data_memory_access_mode => execute_memory_access_mode,
        
        data_memory_request => data_memory_request,
        data_memory_ready => data_memory_ready,
        data_memory_data_in => data_memory_data_in,
        data_memory_data_out => data_memory_data_out,
        data_memory_address => data_memory_address,
        data_memory_direction => data_memory_direction,
        data_memory_write_mode => data_memory_write_mode,
        
        pipeline_step => access_pipeline_step,
        memory_access_stage_ready => access_stage_ready,
        output_mask => access_output_mask,
        clk => clk,
        reset => reset
    );
    memory_bus_aclk <= clk;
    memory_bus_aresetn <= reset;
    pipeline: pipeline_manager port map (
        fetch_stage_ready => fetch_stage_ready,
        fetch_stage_step => fetch_pipeline_step,
        fetch_stage_mask => fetch_output_mask,
        
        decode_stage_ready=>decode_stage_ready,
        decode_stage_step => decode_pipeline_step,
        decode_stage_mask => decode_output_mask,
        
        execute_stage_ready => execute_stage_ready,
        execute_stage_step => execute_pipeline_step,
        execute_stage_mask => execute_output_mask,
        
        access_stage_ready => access_stage_ready,
        access_stage_step => access_pipeline_step,
        access_stage_mask => access_output_mask,
        
        memory_step => memory_step,
        
        decode_register_a_address => decode_register_a_address,
        decode_register_b_address => decode_register_b_address,
        access_register_writeback_address => access_register_writeback_address,
        access_register_writeback_enable => access_register_writeback_enable,
        
        decode_instruction_type => decode_instruction_type,
        access_branch_enable => fetch_load_enable,
        
        
        clk => clk,
        reset => reset
      );
end arch_imp;
