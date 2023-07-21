library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CustomCPU_v1_0_memory_bus is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Base address of targeted slave
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		-- Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
		C_M_AXI_BURST_LEN	: integer	:= 8;
		-- Thread ID Width
		C_M_AXI_ID_WIDTH	: integer	:= 8;
		-- Width of Address Bus
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		-- Width of Data Bus
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of User Write Address Bus
		C_M_AXI_AWUSER_WIDTH	: integer	:= 0;
		-- Width of User Read Address Bus
		C_M_AXI_ARUSER_WIDTH	: integer	:= 0;
		-- Width of User Write Data Bus
		C_M_AXI_WUSER_WIDTH	: integer	:= 0;
		-- Width of User Read Data Bus
		C_M_AXI_RUSER_WIDTH	: integer	:= 0;
		-- Width of User Response Bus
		C_M_AXI_BUSER_WIDTH	: integer	:= 0
	);
	port (
		-- Users to add ports here
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
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Initiate AXI transactions
		-- Global Clock Signal.
		M_AXI_ACLK	: in std_logic;
		-- Global Reset Singal. This Signal is Active Low
		M_AXI_ARESETN	: in std_logic;
		-- Master Interface Write Address ID
		M_AXI_AWID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		-- Master Interface Write Address
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		-- Burst length. The burst length gives the exact number of transfers in a burst
		M_AXI_AWLEN	: out std_logic_vector(C_M_AXI_BURST_LEN-1 downto 0);
		-- Burst size. This signal indicates the size of each transfer in the burst
		M_AXI_AWSIZE	: out std_logic_vector(2 downto 0);
		-- Burst type. The burst type and the size information, 
    -- determine how the address for each transfer within the burst is calculated.
		M_AXI_AWBURST	: out std_logic_vector(1 downto 0);
		-- Lock type. Provides additional information about the
    -- atomic characteristics of the transfer.
		M_AXI_AWLOCK	: out std_logic;
		-- Memory type. This signal indicates how transactions
    -- are required to progress through a system.
		M_AXI_AWCACHE	: out std_logic_vector(3 downto 0);
		-- Protection type. This signal indicates the privilege
    -- and security level of the transaction, and whether
    -- the transaction is a data access or an instruction access.
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		-- Quality of Service, QoS identifier sent for each write transaction.
		M_AXI_AWQOS	: out std_logic_vector(3 downto 0);
		-- Optional User-defined signal in the write address channel.
		M_AXI_AWUSER	: out std_logic_vector(C_M_AXI_AWUSER_WIDTH-1 downto 0);
		-- Write address valid. This signal indicates that
    -- the channel is signaling valid write address and control information.
		M_AXI_AWVALID	: out std_logic;
		-- Write address ready. This signal indicates that
    -- the slave is ready to accept an address and associated control signals
		M_AXI_AWREADY	: in std_logic;
		-- Master Interface Write Data.
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte
    -- lanes hold valid data. There is one write strobe
    -- bit for each eight bits of the write data bus.
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		-- Write last. This signal indicates the last transfer in a write burst.
		M_AXI_WLAST	: out std_logic;
		-- Optional User-defined signal in the write data channel.
		M_AXI_WUSER	: out std_logic_vector(C_M_AXI_WUSER_WIDTH-1 downto 0);
		-- Write valid. This signal indicates that valid write
    -- data and strobes are available
		M_AXI_WVALID	: out std_logic;
		-- Write ready. This signal indicates that the slave
    -- can accept the write data.
		M_AXI_WREADY	: in std_logic;
		-- Master Interface Write Response.
		M_AXI_BID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		-- Write response. This signal indicates the status of the write transaction.
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		-- Optional User-defined signal in the write response channel
		M_AXI_BUSER	: in std_logic_vector(C_M_AXI_BUSER_WIDTH-1 downto 0);
		-- Write response valid. This signal indicates that the
    -- channel is signaling a valid write response.
		M_AXI_BVALID	: in std_logic;
		-- Response ready. This signal indicates that the master
    -- can accept a write response.
		M_AXI_BREADY	: out std_logic;
		-- Master Interface Read Address.
		M_AXI_ARID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		-- Read address. This signal indicates the initial
    -- address of a read burst transaction.
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		-- Burst length. The burst length gives the exact number of transfers in a burst
		M_AXI_ARLEN	: out std_logic_vector(C_M_AXI_BURST_LEN-1 downto 0);
		-- Burst size. This signal indicates the size of each transfer in the burst
		M_AXI_ARSIZE	: out std_logic_vector(2 downto 0);
		-- Burst type. The burst type and the size information, 
    -- determine how the address for each transfer within the burst is calculated.
		M_AXI_ARBURST	: out std_logic_vector(1 downto 0);
		-- Lock type. Provides additional information about the
    -- atomic characteristics of the transfer.
		M_AXI_ARLOCK	: out std_logic;
		-- Memory type. This signal indicates how transactions
    -- are required to progress through a system.
		M_AXI_ARCACHE	: out std_logic_vector(3 downto 0);
		-- Protection type. This signal indicates the privilege
    -- and security level of the transaction, and whether
    -- the transaction is a data access or an instruction access.
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		-- Quality of Service, QoS identifier sent for each read transaction
		M_AXI_ARQOS	: out std_logic_vector(3 downto 0);
		-- Optional User-defined signal in the read address channel.
		M_AXI_ARUSER	: out std_logic_vector(C_M_AXI_ARUSER_WIDTH-1 downto 0);
		-- Write address valid. This signal indicates that
    -- the channel is signaling valid read address and control information
		M_AXI_ARVALID	: out std_logic;
		-- Read address ready. This signal indicates that
    -- the slave is ready to accept an address and associated control signals
		M_AXI_ARREADY	: in std_logic;
		-- Read ID tag. This signal is the identification tag
    -- for the read data group of signals generated by the slave.
		M_AXI_RID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		-- Master Read Data
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the read transfer
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		-- Read last. This signal indicates the last transfer in a read burst
		M_AXI_RLAST	: in std_logic;
		-- Optional User-defined signal in the read address channel.
		M_AXI_RUSER	: in std_logic_vector(C_M_AXI_RUSER_WIDTH-1 downto 0);
		-- Read valid. This signal indicates that the channel
    -- is signaling the required read data.
		M_AXI_RVALID	: in std_logic;
		-- Read ready. This signal indicates that the master can
    -- accept the read data and response information.
		M_AXI_RREADY	: out std_logic
	);
end CustomCPU_v1_0_memory_bus;

architecture implementation of CustomCPU_v1_0_memory_bus is
	-- AXI4FULL signals
	--AXI4 internal temp signals
	signal axi_awaddr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awvalid	: std_logic;
	signal axi_wdata	: std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	signal axi_wlast	: std_logic;
	signal axi_wvalid	: std_logic;
	signal axi_bready	: std_logic:='0';
	signal axi_araddr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arvalid	: std_logic:='0';
	signal axi_rready	: std_logic:='0';
	--write beat count in a burst

	signal start_single_burst_write	: std_logic;
	signal start_single_burst_read	: std_logic;
	signal writes_done	: std_logic;
	signal reads_done	: std_logic;
	signal error_reg	: std_logic;
	signal compare_done	: std_logic;
	signal read_mismatch	: std_logic;
	signal burst_write_active	: std_logic;
	signal burst_read_active	: std_logic;
	signal expected_rdata	: std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	--Interface response error flags
	signal write_resp_error	: std_logic;
	signal read_resp_error	: std_logic;
	signal wnext	: std_logic;
	signal rnext	: std_logic;
	signal init_txn_ff	: std_logic;
	signal init_txn_ff2	: std_logic;
	signal init_txn_edge	: std_logic;
	signal init_txn_pulse	: std_logic;

    signal wa_burst_id: std_logic_vector(C_M_AXI_BURST_LEN-1 downto 0);
    signal ra_burst_id: std_logic_vector(C_M_AXI_BURST_LEN-1 downto 0);
    signal wa_burst_len: std_logic_vector(C_M_AXI_BURST_LEN-1 downto 0);
    signal ra_burst_len: std_logic_vector(C_M_AXI_BURST_LEN-1 downto 0);

    type address_write_state_type is (idle,valid, increment, stop);
    type address_read_state_type is (idle,valid,increment,stop);
    type data_write_state_type is (idle,valid,increment,stop);
    signal wa_current_state: address_write_state_type;
    signal ra_current_state: address_read_state_type;
    signal w_current_state: data_write_state_type;
    
    
begin
	-- I/O Connections assignments

	--I/O Connections. Write Address (AW)
	M_AXI_AWID	<= wa_burst_id;
	--The AXI address is a concatenation of the target base address + active offset range
	M_AXI_AWADDR	<= axi_awaddr;    -- <the interface can do transfers to all available addresses
	--Burst LENgth is number of transaction beats, minus 1
	M_AXI_AWLEN	<= wa_burst_len; --std_logic_vector( to_unsigned(C_M_AXI_BURST_LEN - 1, 8) ); for now transfers can be only in normal mode
	--Size should be C_M_AXI_DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
	M_AXI_AWSIZE	<= "010"; --std_logic_vector( to_unsigned(clogb2((C_M_AXI_DATA_WIDTH/8)-1), 3) );
	--INCR burst type is usually used, except for keyhole bursts
	M_AXI_AWBURST	<= "01";
	M_AXI_AWLOCK	<= '0';
	--Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	M_AXI_AWCACHE	<= "0010";
	M_AXI_AWPROT	<= "000";
	M_AXI_AWQOS	<= x"0";
	M_AXI_AWUSER	<= (others => '1');
	M_AXI_AWVALID	<= axi_awvalid;
	--Write Data(W)
	M_AXI_WDATA	<= axi_wdata;
	--All bursts are complete and aligned in this example
	M_AXI_WSTRB	<= (others => '1');
	M_AXI_WLAST	<= axi_wlast; --axi_wlast;
	M_AXI_WUSER	<= (others => '0');
	M_AXI_WVALID	<= axi_wvalid;
	--Write Response (B)
	M_AXI_BREADY	<= axi_bready;
	--Read Address (AR)
	M_AXI_ARID	<= ra_burst_id;
	M_AXI_ARADDR	<= axi_araddr;
	--Burst LENgth is number of transaction beats, minus 1
	M_AXI_ARLEN	<= ra_burst_len; --std_logic_vector( to_unsigned(C_M_AXI_BURST_LEN - 1, 8) );
	--Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
	M_AXI_ARSIZE	<= "010"; --std_logic_vector( to_unsigned( clogb2((C_M_AXI_DATA_WIDTH/8)-1),3 ));
	--INCR burst type is usually used, except for keyhole bursts
	M_AXI_ARBURST	<= "01";
	M_AXI_ARLOCK	<= '0';
	--Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	M_AXI_ARCACHE	<= "0010";
	M_AXI_ARPROT	<= "000";
	M_AXI_ARQOS	<= x"0";
	M_AXI_ARUSER	<= (others => '1');
	M_AXI_ARVALID	<= axi_arvalid;
	--Read and Read Response (R)
	M_AXI_RREADY	<= axi_rready;
	--Example design I/O





	----------------------
	--Write Address Channel
	----------------------

	-- The purpose of the write address channel is to request the address and 
	-- command information for the entire transaction.  It is a single beat
	-- of information.

	-- The AXI4 Write address channel in this example will continue to initiate
	-- write commands as fast as it is allowed by the slave/interconnect.
	-- The address will be incremented on each accepted address transaction,
	-- by burst_size_byte to point to the next address. 
        wa_burst_id <= (others => '0');
        ra_burst_id <= (others => '0');
	  process(M_AXI_ACLK)     
	       variable current_burst: integer;          
	       constant burst_number: integer:=8;                             
	  begin                                                                
	    if (rising_edge (M_AXI_ACLK)) then                                 
	      if (M_AXI_ARESETN = '0') then                                   
	        axi_awvalid <= '0';      
	        axi_wvalid <= '0';                          
            transmission_write_started<='0';
            axi_wlast<='0';
            
	      else                                                                     
	        if (wa_current_state = idle) then
	           if (transmission_write_start='1') then
                   axi_awvalid <= '1';
                   transmission_write_started<='1';
                   axi_awaddr <= transmission_write_address;
                   wa_current_state <= increment;
                   current_burst:=0;
                   axi_wlast<='0';
                   axi_wvalid <= '0';
               else 
                   transmission_write_started<='0';
                   axi_awvalid <= '0';
                   axi_awaddr<= (others =>'0');
                   axi_wlast<='0';
                   axi_wvalid <= '0';
               end if;
	        elsif (wa_current_state = increment) then
	           
	           axi_awvalid <= '0';
	           axi_wvalid <= '1';
	           axi_wdata <= transmission_data_in;
	           
	           if (current_burst = (burst_number-1)) then
                   axi_wlast<='1';
                   wa_current_state <= stop;
	           end if;
	           current_burst:=current_burst+1;
	        elsif (wa_current_state = stop) then 
	           transmission_write_started<='0';
	           axi_wlast<='0';
	           axi_wvalid <= '0';
	           if (transmission_write_start='0') then
	               wa_current_state <= idle;      
	           end if;
	        end if;                                              
	      end if;                                                          
	    end if;                                                            
	  end process;                                                         
	                                                                                                                                                            
	------------------------------
	--Write Response (B) Channel
	------------------------------

	--The write response channel provides feedback that the write has committed
	--to memory. BREADY will occur when all of the data and the write address
	--has arrived and been accepted by the slave.

	--The write issuance (number of outstanding write addresses) is started by 
	--the Address Write transfer, and is completed by a BREADY/BRESP.

	--While negating BREADY will eventually throttle the AWREADY signal, 
	--it is best not to throttle the whole data channel this way.

	--The BRESP bit [1] is used indicate any errors from the interconnect or
	--slave for the entire write burst. This example will capture the error 
	--into the ERROR output. 

	  process(M_AXI_ACLK)                                             
	  begin                                                                 
	    if (rising_edge (M_AXI_ACLK)) then                                  
	      if (M_AXI_ARESETN = '0') then                                    
	        axi_bready <= '0';                          
	        transmission_write_response <= (others => '0');                    
             
	      else                                                              
	        if (M_AXI_BVALID = '1' and axi_bready = '0') then               
	          axi_bready <= '1';                                            
	          transmission_write_response <= M_AXI_BRESP;                         
	        elsif (axi_bready = '1') then                                   
	          axi_bready <= '0';                                            
	        end if;                                                         
	      end if;                                                           
	    end if;                                                             
	  end process;                                                          
	                                                                        

	------------------------------
	--Read Address Channel
	------------------------------

	--The Read Address Channel (AW) provides a similar function to the
	--Write Address channel- to provide the tranfer qualifiers for the burst.

	--In this example, the read address increments in the same
	--manner as the write address channel.
        ra_burst_len <= "00000011";
        wa_burst_len <= "00000011";
	  process(M_AXI_ACLK)                                            
	  begin                                                                
	    if (rising_edge (M_AXI_ACLK)) then                                 
	      if (M_AXI_ARESETN = '0') then                                  
	        axi_arvalid <= '0';                                      
            ra_current_state <= idle;
            transmission_read_started<='0';
	      else                                                                         
	        if (ra_current_state = idle) then
	           transmission_read_started<='0';
	           if (transmission_read_start='1' and M_AXI_ARREADY='1') then
	               axi_rready<='0';
                   axi_arvalid <= '1';
                   axi_araddr <= transmission_read_address;
                   
                   ra_current_state <= increment;
               else
                    axi_rready<='0';
                    axi_arvalid <= '0';
                    axi_araddr <= (others => '0');
               end if; 

	        elsif (ra_current_state = increment) then 
	           
	           axi_arvalid <= '0';
	           axi_rready<='1';
	           if (M_AXI_RVALID='1') then 
	               transmission_read_started<='1';
	               transmission_data_out<=M_AXI_RDATA;
	               if (M_AXI_RLAST='1') then 
	                   
	                   ra_current_state <= stop;
	               end if;
	           end if;
	        elsif (ra_current_state = stop) then 
	           transmission_read_started<='0';
	           axi_rready<='0';
	                
	           if (transmission_read_start = '0') then
	               ra_current_state <= idle; 
	           end if;
	        end if;                                              
	      end if;                                                          
	    end if;                                                            
	  end process;                                                        
	                                                                     
                                   
	                                                                                         
	  process(M_AXI_ACLK)                                                   
	  begin                                                                 
	    if (rising_edge (M_AXI_ACLK)) then                                  
	      if (M_AXI_ARESETN = '0') then             
	        transmission_read_response <= (others => '0');                       
	      else                                                              
	        if (M_AXI_RVALID = '1' and axi_rready = '1') then       
	           
	          transmission_read_response <= M_AXI_RRESP;
	        end if;                                                                                           
	      end if;                                                           
	    end if;                                                             
	  end process;                                                          

end implementation;
