library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comblock_v1_0 is
	generic (
		-- Users to add parameters here
		C_ENABLE_DRAM			: boolean:=TRUE;
		C_ENABLE_FIFO_FPGA_TO_PROC	: boolean:=TRUE;
		C_ENABLE_FIFO_PROC_TO_FPGA	: boolean:=FALSE;
		C_REGS_DATA_WIDTH		: integer:=32;
		C_DRAM_DATA_WIDTH		: integer:=32;
		C_DRAM_ADDR_WIDTH		: integer:=16;
		C_DRAM_DEPTH			: integer:=0;
		C_FIFO_DATA_WIDTH		: integer:=16;
		C_FIFO_DEPTH			: integer:=1024;
		C_FIFO_AFULLOFFSET		: integer:=1;
		C_FIFO_AEMPTYOFFSET		: integer:=1;
		
		C_SINGLE_DIRECTION      : boolean:=FALSE;
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface AXIL_REGS
		C_AXIL_REGS_DATA_WIDTH	: integer	:= 32;
		C_AXIL_REGS_ADDR_WIDTH	: integer	:= 8;

		-- Parameters of Axi Slave Bus Interface AXIF_DRAM
		C_AXIF_DRAM_ID_WIDTH	: integer	:= 1;
		C_AXIF_DRAM_DATA_WIDTH	: integer	:= 32;
		C_AXIF_DRAM_ADDR_WIDTH	: integer	:= 18;
		C_AXIF_DRAM_AWUSER_WIDTH: integer	:= 0;
		C_AXIF_DRAM_ARUSER_WIDTH: integer	:= 0;
		C_AXIF_DRAM_WUSER_WIDTH	: integer	:= 0;
		C_AXIF_DRAM_RUSER_WIDTH	: integer	:= 0;
		C_AXIF_DRAM_BUSER_WIDTH	: integer	:= 0;

		-- Parameters of Axi Slave Bus Interface AXIF_FIFO
		C_AXIF_FIFO_ID_WIDTH	: integer	:= 1;
		C_AXIF_FIFO_DATA_WIDTH	: integer	:= 32;
		C_AXIF_FIFO_ADDR_WIDTH	: integer	:= 3;
		C_AXIF_FIFO_AWUSER_WIDTH: integer	:= 0;
		C_AXIF_FIFO_ARUSER_WIDTH: integer	:= 0;
		C_AXIF_FIFO_WUSER_WIDTH	: integer	:= 0;
		C_AXIF_FIFO_RUSER_WIDTH	: integer	:= 0;
		C_AXIF_FIFO_BUSER_WIDTH	: integer	:= 0
	);
	port (
		-- Users to add ports here
		-- regs
				--reg input
        reg0_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg1_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg2_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg3_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg4_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg5_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg6_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg7_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg8_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg9_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg10_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg11_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg12_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg13_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg14_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg15_i          :  in std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);  
  --reg outputs
        reg0_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg1_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg2_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg3_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg4_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg5_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg6_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg7_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg8_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg9_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg10_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg11_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg12_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg13_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg14_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
        reg15_o          : out std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
		-- true dual ram
		ram_clk_i	:  in std_logic:='0';
		ram_we_i	:  in std_logic:='0';
		ram_addr_i	:  in std_logic_vector(C_DRAM_ADDR_WIDTH-1 downto 0):=(others => '0');
		ram_data_i	:  in std_logic_vector(C_DRAM_DATA_WIDTH-1 downto 0):=(others => '0');
		ram_data_o	: out std_logic_vector(C_DRAM_DATA_WIDTH-1 downto 0);
		-- fifo
		fifo_clk_i	:  in std_logic:='0';
		fifo_clear_i	:  in std_logic:='0';
		fifo_we_i	:  in std_logic:='0';
		fifo_data_i	:  in std_logic_vector(C_FIFO_DATA_WIDTH-1 downto 0):=(others => '0');
		fifo_full_o	: out std_logic;
		fifo_afull_o	: out std_logic;
		fifo_overflow_o	: out std_logic;
		fifo_re_i	:  in std_logic:='0';
		fifo_data_o	: out std_logic_vector(C_FIFO_DATA_WIDTH-1 downto 0);
		fifo_empty_o	: out std_logic;
		fifo_aempty_o	: out std_logic;
		fifo_underflow_o: out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface AXIL_REGS
		axil_regs_aclk	: in std_logic;
		axil_regs_aresetn	: in std_logic;
		axil_regs_awaddr	: in std_logic_vector(C_AXIL_REGS_ADDR_WIDTH-1 downto 0);
		axil_regs_awprot	: in std_logic_vector(2 downto 0);
		axil_regs_awvalid	: in std_logic;
		axil_regs_awready	: out std_logic;
		axil_regs_wdata		: in std_logic_vector(C_AXIL_REGS_DATA_WIDTH-1 downto 0);
		axil_regs_wstrb		: in std_logic_vector((C_AXIL_REGS_DATA_WIDTH/8)-1 downto 0);
		axil_regs_wvalid	: in std_logic;
		axil_regs_wready	: out std_logic;
		axil_regs_bresp		: out std_logic_vector(1 downto 0);
		axil_regs_bvalid	: out std_logic;
		axil_regs_bready	: in std_logic;
		axil_regs_araddr	: in std_logic_vector(C_AXIL_REGS_ADDR_WIDTH-1 downto 0);
		axil_regs_arprot	: in std_logic_vector(2 downto 0);
		axil_regs_arvalid	: in std_logic;
		axil_regs_arready	: out std_logic;
		axil_regs_rdata		: out std_logic_vector(C_AXIL_REGS_DATA_WIDTH-1 downto 0);
		axil_regs_rresp		: out std_logic_vector(1 downto 0);
		axil_regs_rvalid	: out std_logic;
		axil_regs_rready	: in std_logic;

		-- Ports of Axi Slave Bus Interface AXIF_DRAM
		axif_dram_aclk		: in std_logic;
		axif_dram_aresetn	: in std_logic;
		axif_dram_awid		: in std_logic_vector(C_AXIF_DRAM_ID_WIDTH-1 downto 0);
		axif_dram_awaddr	: in std_logic_vector(C_AXIF_DRAM_ADDR_WIDTH-1 downto 0);
		axif_dram_awlen		: in std_logic_vector(7 downto 0);
		axif_dram_awsize	: in std_logic_vector(2 downto 0);
		axif_dram_awburst	: in std_logic_vector(1 downto 0);
		axif_dram_awlock	: in std_logic;
		axif_dram_awcache	: in std_logic_vector(3 downto 0);
		axif_dram_awprot	: in std_logic_vector(2 downto 0);
		axif_dram_awqos		: in std_logic_vector(3 downto 0);
		axif_dram_awregion	: in std_logic_vector(3 downto 0);
		axif_dram_awuser	: in std_logic_vector(C_AXIF_DRAM_AWUSER_WIDTH-1 downto 0);
		axif_dram_awvalid	: in std_logic;
		axif_dram_awready	: out std_logic;
		axif_dram_wdata		: in std_logic_vector(C_AXIF_DRAM_DATA_WIDTH-1 downto 0);
		axif_dram_wstrb		: in std_logic_vector((C_AXIF_DRAM_DATA_WIDTH/8)-1 downto 0);
		axif_dram_wlast		: in std_logic;
		axif_dram_wuser		: in std_logic_vector(C_AXIF_DRAM_WUSER_WIDTH-1 downto 0);
		axif_dram_wvalid	: in std_logic;
		axif_dram_wready	: out std_logic;
		axif_dram_bid		: out std_logic_vector(C_AXIF_DRAM_ID_WIDTH-1 downto 0);
		axif_dram_bresp		: out std_logic_vector(1 downto 0);
		axif_dram_buser		: out std_logic_vector(C_AXIF_DRAM_BUSER_WIDTH-1 downto 0);
		axif_dram_bvalid	: out std_logic;
		axif_dram_bready	: in std_logic;
		axif_dram_arid		: in std_logic_vector(C_AXIF_DRAM_ID_WIDTH-1 downto 0);
		axif_dram_araddr	: in std_logic_vector(C_AXIF_DRAM_ADDR_WIDTH-1 downto 0);
		axif_dram_arlen		: in std_logic_vector(7 downto 0);
		axif_dram_arsize	: in std_logic_vector(2 downto 0);
		axif_dram_arburst	: in std_logic_vector(1 downto 0);
		axif_dram_arlock	: in std_logic;
		axif_dram_arcache	: in std_logic_vector(3 downto 0);
		axif_dram_arprot	: in std_logic_vector(2 downto 0);
		axif_dram_arqos		: in std_logic_vector(3 downto 0);
		axif_dram_arregion	: in std_logic_vector(3 downto 0);
		axif_dram_aruser	: in std_logic_vector(C_AXIF_DRAM_ARUSER_WIDTH-1 downto 0);
		axif_dram_arvalid	: in std_logic;
		axif_dram_arready	: out std_logic;
		axif_dram_rid		: out std_logic_vector(C_AXIF_DRAM_ID_WIDTH-1 downto 0);
		axif_dram_rdata		: out std_logic_vector(C_AXIF_DRAM_DATA_WIDTH-1 downto 0);
		axif_dram_rresp		: out std_logic_vector(1 downto 0);
		axif_dram_rlast		: out std_logic;
		axif_dram_ruser		: out std_logic_vector(C_AXIF_DRAM_RUSER_WIDTH-1 downto 0);
		axif_dram_rvalid	: out std_logic;
		axif_dram_rready	: in std_logic;

		-- Ports of Axi Slave Bus Interface AXIF_FIFO
		axif_fifo_aclk		: in std_logic;
		axif_fifo_aresetn	: in std_logic;
		axif_fifo_awid		: in std_logic_vector(C_AXIF_FIFO_ID_WIDTH-1 downto 0);
		axif_fifo_awaddr	: in std_logic_vector(C_AXIF_FIFO_ADDR_WIDTH-1 downto 0);
		axif_fifo_awlen		: in std_logic_vector(7 downto 0);
		axif_fifo_awsize	: in std_logic_vector(2 downto 0);
		axif_fifo_awburst	: in std_logic_vector(1 downto 0);
		axif_fifo_awlock	: in std_logic;
		axif_fifo_awcache	: in std_logic_vector(3 downto 0);
		axif_fifo_awprot	: in std_logic_vector(2 downto 0);
		axif_fifo_awqos		: in std_logic_vector(3 downto 0);
		axif_fifo_awregion	: in std_logic_vector(3 downto 0);
		axif_fifo_awuser	: in std_logic_vector(C_AXIF_FIFO_AWUSER_WIDTH-1 downto 0);
		axif_fifo_awvalid	: in std_logic;
		axif_fifo_awready	: out std_logic;
		axif_fifo_wdata		: in std_logic_vector(C_AXIF_FIFO_DATA_WIDTH-1 downto 0);
		axif_fifo_wstrb		: in std_logic_vector((C_AXIF_FIFO_DATA_WIDTH/8)-1 downto 0);
		axif_fifo_wlast		: in std_logic;
		axif_fifo_wuser		: in std_logic_vector(C_AXIF_FIFO_WUSER_WIDTH-1 downto 0);
		axif_fifo_wvalid	: in std_logic;
		axif_fifo_wready	: out std_logic;
		axif_fifo_bid		: out std_logic_vector(C_AXIF_FIFO_ID_WIDTH-1 downto 0);
		axif_fifo_bresp		: out std_logic_vector(1 downto 0);
		axif_fifo_buser		: out std_logic_vector(C_AXIF_FIFO_BUSER_WIDTH-1 downto 0);
		axif_fifo_bvalid	: out std_logic;
		axif_fifo_bready	: in std_logic;
		axif_fifo_arid		: in std_logic_vector(C_AXIF_FIFO_ID_WIDTH-1 downto 0);
		axif_fifo_araddr	: in std_logic_vector(C_AXIF_FIFO_ADDR_WIDTH-1 downto 0);
		axif_fifo_arlen		: in std_logic_vector(7 downto 0);
		axif_fifo_arsize	: in std_logic_vector(2 downto 0);
		axif_fifo_arburst	: in std_logic_vector(1 downto 0);
		axif_fifo_arlock	: in std_logic;
		axif_fifo_arcache	: in std_logic_vector(3 downto 0);
		axif_fifo_arprot	: in std_logic_vector(2 downto 0);
		axif_fifo_arqos		: in std_logic_vector(3 downto 0);
		axif_fifo_arregion	: in std_logic_vector(3 downto 0);
		axif_fifo_aruser	: in std_logic_vector(C_AXIF_FIFO_ARUSER_WIDTH-1 downto 0);
		axif_fifo_arvalid	: in std_logic;
		axif_fifo_arready	: out std_logic;
		axif_fifo_rid		: out std_logic_vector(C_AXIF_FIFO_ID_WIDTH-1 downto 0);
		axif_fifo_rdata		: out std_logic_vector(C_AXIF_FIFO_DATA_WIDTH-1 downto 0);
		axif_fifo_rresp		: out std_logic_vector(1 downto 0);
		axif_fifo_rlast		: out std_logic;
		axif_fifo_ruser		: out std_logic_vector(C_AXIF_FIFO_RUSER_WIDTH-1 downto 0);
		axif_fifo_rvalid	: out std_logic;
		axif_fifo_rready	: in std_logic
	);
end comblock_v1_0;

architecture arch_imp of comblock_v1_0 is
   -- c2a : comblock to axi
   -- a2c : axi to comblock
   signal reg0_c2a, reg0_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg1_c2a, reg1_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg2_c2a, reg2_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg3_c2a, reg3_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg4_c2a, reg4_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg5_c2a, reg5_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg6_c2a, reg6_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg7_c2a, reg7_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg8_c2a, reg8_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg9_c2a, reg9_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg10_c2a, reg10_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg11_c2a, reg11_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg12_c2a, reg12_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg13_c2a, reg13_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg14_c2a, reg14_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);
   signal reg15_c2a, reg15_a2c : std_logic_vector(C_REGS_DATA_WIDTH-1 downto 0);

   signal ram_we_a2c     : std_logic;
   signal ram_addr_a2c   : std_logic_vector(C_DRAM_ADDR_WIDTH-1 downto 0);
   signal ram_data_a2c   : std_logic_vector(C_DRAM_DATA_WIDTH-1 downto 0);
   signal ram_data_c2a   : std_logic_vector(C_DRAM_DATA_WIDTH-1 downto 0);
   
   signal fifo_re_a2c    : std_logic;
   signal fifo_data_c2a  : std_logic_vector(C_FIFO_DATA_WIDTH-1 downto 0);
   signal fifo_we_a2c    : std_logic;
   signal fifo_data_a2c  : std_logic_vector(C_FIFO_DATA_WIDTH-1 downto 0);
   signal fifo_clear_a2c : std_logic;
   signal fifo_stat_c2a  : std_logic_vector(5 downto 0);
begin

axil_regs_inst : entity work.comblock_v1_0_AXIL_REGS
	generic map (
		C_REGS_DATA_WIDTH	=> C_REGS_DATA_WIDTH,
		C_S_AXI_DATA_WIDTH	=> C_AXIL_REGS_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_AXIL_REGS_ADDR_WIDTH
	)
	port map (
		reg0_i		=> reg0_c2a,
		reg1_i		=> reg1_c2a,
		reg2_i		=> reg2_c2a,
		reg3_i		=> reg3_c2a,
		reg4_i		=> reg4_c2a,
		reg5_i		=> reg5_c2a,
		reg6_i		=> reg6_c2a,
		reg7_i		=> reg7_c2a,
		reg8_i		=> reg8_c2a,
		reg9_i		=> reg9_c2a,
		reg10_i		=> reg10_c2a,
		reg11_i		=> reg11_c2a,
		reg12_i		=> reg12_c2a,
		reg13_i		=> reg13_c2a,
		reg14_i		=> reg14_c2a,
		reg15_i		=> reg15_c2a,
		
		reg0_o		=> reg0_a2c,
		reg1_o		=> reg1_a2c,
		reg2_o		=> reg2_a2c,
		reg3_o		=> reg3_a2c,
		reg4_o		=> reg4_a2c,
		reg5_o		=> reg5_a2c,
		reg6_o		=> reg6_a2c,
		reg7_o		=> reg7_a2c,
		reg8_o		=> reg8_a2c,
		reg9_o		=> reg9_a2c,
		reg10_o		=> reg10_a2c,
		reg11_o		=> reg11_a2c,
		reg12_o		=> reg12_a2c,
		reg13_o		=> reg13_a2c,
		reg14_o		=> reg14_a2c,
		reg15_o		=> reg15_a2c,
		--
		S_AXI_ACLK	=> axil_regs_aclk,
		S_AXI_ARESETN	=> axil_regs_aresetn,
		S_AXI_AWADDR	=> axil_regs_awaddr,
		S_AXI_AWPROT	=> axil_regs_awprot,
		S_AXI_AWVALID	=> axil_regs_awvalid,
		S_AXI_AWREADY	=> axil_regs_awready,
		S_AXI_WDATA	=> axil_regs_wdata,
		S_AXI_WSTRB	=> axil_regs_wstrb,
		S_AXI_WVALID	=> axil_regs_wvalid,
		S_AXI_WREADY	=> axil_regs_wready,
		S_AXI_BRESP	=> axil_regs_bresp,
		S_AXI_BVALID	=> axil_regs_bvalid,
		S_AXI_BREADY	=> axil_regs_bready,
		S_AXI_ARADDR	=> axil_regs_araddr,
		S_AXI_ARPROT	=> axil_regs_arprot,
		S_AXI_ARVALID	=> axil_regs_arvalid,
		S_AXI_ARREADY	=> axil_regs_arready,
		S_AXI_RDATA	=> axil_regs_rdata,
		S_AXI_RRESP	=> axil_regs_rresp,
		S_AXI_RVALID	=> axil_regs_rvalid,
		S_AXI_RREADY	=> axil_regs_rready
	);

axif_dram_inst : entity work.comblock_v1_0_AXIF_DRAM
	generic map (
		C_DRAM_DATA_WIDTH	=> C_DRAM_DATA_WIDTH,
		C_DRAM_ADDR_WIDTH	=> C_DRAM_ADDR_WIDTH,
		C_S_AXI_ID_WIDTH	=> C_AXIF_DRAM_ID_WIDTH,
		C_S_AXI_DATA_WIDTH	=> C_AXIF_DRAM_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_AXIF_DRAM_ADDR_WIDTH,
		C_S_AXI_AWUSER_WIDTH	=> C_AXIF_DRAM_AWUSER_WIDTH,
		C_S_AXI_ARUSER_WIDTH	=> C_AXIF_DRAM_ARUSER_WIDTH,
		C_S_AXI_WUSER_WIDTH	=> C_AXIF_DRAM_WUSER_WIDTH,
		C_S_AXI_RUSER_WIDTH	=> C_AXIF_DRAM_RUSER_WIDTH,
		C_S_AXI_BUSER_WIDTH	=> C_AXIF_DRAM_BUSER_WIDTH
	)
	port map (
		ram_we_o	=> ram_we_a2c,
		ram_addr_o	=> ram_addr_a2c,
		ram_data_o	=> ram_data_a2c,
		ram_data_i	=> ram_data_c2a,
		--
		S_AXI_ACLK	=> axif_dram_aclk,
		S_AXI_ARESETN	=> axif_dram_aresetn,
		S_AXI_AWID	=> axif_dram_awid,
		S_AXI_AWADDR	=> axif_dram_awaddr,
		S_AXI_AWLEN	=> axif_dram_awlen,
		S_AXI_AWSIZE	=> axif_dram_awsize,
		S_AXI_AWBURST	=> axif_dram_awburst,
		S_AXI_AWLOCK	=> axif_dram_awlock,
		S_AXI_AWCACHE	=> axif_dram_awcache,
		S_AXI_AWPROT	=> axif_dram_awprot,
		S_AXI_AWQOS	=> axif_dram_awqos,
		S_AXI_AWREGION	=> axif_dram_awregion,
		S_AXI_AWUSER	=> axif_dram_awuser,
		S_AXI_AWVALID	=> axif_dram_awvalid,
		S_AXI_AWREADY	=> axif_dram_awready,
		S_AXI_WDATA	=> axif_dram_wdata,
		S_AXI_WSTRB	=> axif_dram_wstrb,
		S_AXI_WLAST	=> axif_dram_wlast,
		S_AXI_WUSER	=> axif_dram_wuser,
		S_AXI_WVALID	=> axif_dram_wvalid,
		S_AXI_WREADY	=> axif_dram_wready,
		S_AXI_BID	=> axif_dram_bid,
		S_AXI_BRESP	=> axif_dram_bresp,
		S_AXI_BUSER	=> axif_dram_buser,
		S_AXI_BVALID	=> axif_dram_bvalid,
		S_AXI_BREADY	=> axif_dram_bready,
		S_AXI_ARID	=> axif_dram_arid,
		S_AXI_ARADDR	=> axif_dram_araddr,
		S_AXI_ARLEN	=> axif_dram_arlen,
		S_AXI_ARSIZE	=> axif_dram_arsize,
		S_AXI_ARBURST	=> axif_dram_arburst,
		S_AXI_ARLOCK	=> axif_dram_arlock,
		S_AXI_ARCACHE	=> axif_dram_arcache,
		S_AXI_ARPROT	=> axif_dram_arprot,
		S_AXI_ARQOS	=> axif_dram_arqos,
		S_AXI_ARREGION	=> axif_dram_arregion,
		S_AXI_ARUSER	=> axif_dram_aruser,
		S_AXI_ARVALID	=> axif_dram_arvalid,
		S_AXI_ARREADY	=> axif_dram_arready,
		S_AXI_RID	=> axif_dram_rid,
		S_AXI_RDATA	=> axif_dram_rdata,
		S_AXI_RRESP	=> axif_dram_rresp,
		S_AXI_RLAST	=> axif_dram_rlast,
		S_AXI_RUSER	=> axif_dram_ruser,
		S_AXI_RVALID	=> axif_dram_rvalid,
		S_AXI_RREADY	=> axif_dram_rready
	);

axif_fifo_inst : entity work.comblock_v1_0_AXIF_FIFO
	generic map (
		C_FIFO_DATA_WIDTH	=> C_FIFO_DATA_WIDTH,
		C_S_AXI_ID_WIDTH	=> C_AXIF_FIFO_ID_WIDTH,
		C_S_AXI_DATA_WIDTH	=> C_AXIF_FIFO_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_AXIF_FIFO_ADDR_WIDTH,
		C_S_AXI_AWUSER_WIDTH	=> C_AXIF_FIFO_AWUSER_WIDTH,
		C_S_AXI_ARUSER_WIDTH	=> C_AXIF_FIFO_ARUSER_WIDTH,
		C_S_AXI_WUSER_WIDTH	=> C_AXIF_FIFO_WUSER_WIDTH,
		C_S_AXI_RUSER_WIDTH	=> C_AXIF_FIFO_RUSER_WIDTH,
		C_S_AXI_BUSER_WIDTH	=> C_AXIF_FIFO_BUSER_WIDTH
	)
	port map (
		fifo_re_o	=> fifo_re_a2c,
		fifo_data_i	=> fifo_data_c2a,
		fifo_we_o	=> fifo_we_a2c,
		fifo_data_o	=> fifo_data_a2c,
		fifo_stat_i	=> fifo_stat_c2a,
		--
		S_AXI_ACLK	=> axif_fifo_aclk,
		S_AXI_ARESETN	=> axif_fifo_aresetn,
		S_AXI_AWID	=> axif_fifo_awid,
		S_AXI_AWADDR	=> axif_fifo_awaddr,
		S_AXI_AWLEN	=> axif_fifo_awlen,
		S_AXI_AWSIZE	=> axif_fifo_awsize,
		S_AXI_AWBURST	=> axif_fifo_awburst,
		S_AXI_AWLOCK	=> axif_fifo_awlock,
		S_AXI_AWCACHE	=> axif_fifo_awcache,
		S_AXI_AWPROT	=> axif_fifo_awprot,
		S_AXI_AWQOS	=> axif_fifo_awqos,
		S_AXI_AWREGION	=> axif_fifo_awregion,
		S_AXI_AWUSER	=> axif_fifo_awuser,
		S_AXI_AWVALID	=> axif_fifo_awvalid,
		S_AXI_AWREADY	=> axif_fifo_awready,
		S_AXI_WDATA	=> axif_fifo_wdata,
		S_AXI_WSTRB	=> axif_fifo_wstrb,
		S_AXI_WLAST	=> axif_fifo_wlast,
		S_AXI_WUSER	=> axif_fifo_wuser,
		S_AXI_WVALID	=> axif_fifo_wvalid,
		S_AXI_WREADY	=> axif_fifo_wready,
		S_AXI_BID	=> axif_fifo_bid,
		S_AXI_BRESP	=> axif_fifo_bresp,
		S_AXI_BUSER	=> axif_fifo_buser,
		S_AXI_BVALID	=> axif_fifo_bvalid,
		S_AXI_BREADY	=> axif_fifo_bready,
		S_AXI_ARID	=> axif_fifo_arid,
		S_AXI_ARADDR	=> axif_fifo_araddr,
		S_AXI_ARLEN	=> axif_fifo_arlen,
		S_AXI_ARSIZE	=> axif_fifo_arsize,
		S_AXI_ARBURST	=> axif_fifo_arburst,
		S_AXI_ARLOCK	=> axif_fifo_arlock,
		S_AXI_ARCACHE	=> axif_fifo_arcache,
		S_AXI_ARPROT	=> axif_fifo_arprot,
		S_AXI_ARQOS	=> axif_fifo_arqos,
		S_AXI_ARREGION	=> axif_fifo_arregion,
		S_AXI_ARUSER	=> axif_fifo_aruser,
		S_AXI_ARVALID	=> axif_fifo_arvalid,
		S_AXI_ARREADY	=> axif_fifo_arready,
		S_AXI_RID	=> axif_fifo_rid,
		S_AXI_RDATA	=> axif_fifo_rdata,
		S_AXI_RRESP	=> axif_fifo_rresp,
		S_AXI_RLAST	=> axif_fifo_rlast,
		S_AXI_RUSER	=> axif_fifo_ruser,
		S_AXI_RVALID	=> axif_fifo_rvalid,
		S_AXI_RREADY	=> axif_fifo_rready
	);

comblock_i: entity work.comblock
   generic map (
      ENABLE_DRAM                 => C_ENABLE_DRAM,
      ENABLE_FIFO_FPGA_TO_PROC    => C_ENABLE_FIFO_FPGA_TO_PROC,
      ENABLE_FIFO_PROC_TO_FPGA    => C_ENABLE_FIFO_PROC_TO_FPGA,
      REGS_DATA_WIDTH             => C_REGS_DATA_WIDTH,
      DRAM_DATA_WIDTH             => C_DRAM_DATA_WIDTH,
      DRAM_ADDR_WIDTH             => C_DRAM_ADDR_WIDTH,
      DRAM_DEPTH                  => C_DRAM_DEPTH,
      FIFO_DATA_WIDTH             => C_FIFO_DATA_WIDTH,
      FIFO_DEPTH                  => C_FIFO_DEPTH,
      FIFO_AFULLOFFSET            => C_FIFO_AFULLOFFSET,
      FIFO_AEMPTYOFFSET           => C_FIFO_AEMPTYOFFSET
   )
   port map (
      -- regs side a
      a_reg0_i           => reg0_i,
      a_reg1_i           => reg1_i,
      a_reg2_i           => reg2_i,
      a_reg3_i           => reg3_i,
      a_reg4_i           => reg4_i,
      a_reg5_i           => reg5_i,
      a_reg6_i           => reg6_i,
      a_reg7_i           => reg7_i,
      a_reg8_i           => reg8_i,
      a_reg9_i           => reg9_i,
      a_reg10_i           => reg10_i,
      a_reg11_i           => reg11_i,
      a_reg12_i           => reg12_i,
      a_reg13_i           => reg13_i,
      a_reg14_i           => reg14_i,
      a_reg15_i           => reg15_i,
      
      a_reg0_o           => reg0_o,
      a_reg1_o           => reg1_o,
      a_reg2_o           => reg2_o,
      a_reg3_o           => reg3_o,
      a_reg4_o           => reg4_o,
      a_reg5_o           => reg5_o,
      a_reg6_o           => reg6_o,
      a_reg7_o           => reg7_o,
      a_reg8_o           => reg8_o,
      a_reg9_o           => reg9_o,
      a_reg10_o           => reg10_o,
      a_reg11_o           => reg11_o,
      a_reg12_o           => reg12_o,
      a_reg13_o           => reg13_o,
      a_reg14_o           => reg14_o,
      a_reg15_o           => reg15_o,
      -- regs side b
      b_reg0_i           => reg0_a2c,
      b_reg1_i           => reg1_a2c,
      b_reg2_i           => reg2_a2c,
      b_reg3_i           => reg3_a2c,
      b_reg4_i           => reg4_a2c,
      b_reg5_i           => reg5_a2c,
      b_reg6_i           => reg6_a2c,
      b_reg7_i           => reg7_a2c,
      b_reg8_i           => reg8_a2c,
      b_reg9_i           => reg9_a2c,
      b_reg10_i           => reg10_a2c,
      b_reg11_i           => reg11_a2c,
      b_reg12_i           => reg12_a2c,
      b_reg13_i           => reg13_a2c,
      b_reg14_i           => reg14_a2c,
      b_reg15_i           => reg15_a2c,
      
      b_reg0_o           => reg0_c2a,
      b_reg1_o           => reg1_c2a,
      b_reg2_o           => reg2_c2a,
      b_reg3_o           => reg3_c2a,
      b_reg4_o           => reg4_c2a,
      b_reg5_o           => reg5_c2a,
      b_reg6_o           => reg6_c2a,
      b_reg7_o           => reg7_c2a,
      b_reg8_o           => reg8_c2a,
      b_reg9_o           => reg9_c2a,
      b_reg10_o           => reg10_c2a,
      b_reg11_o           => reg11_c2a,
      b_reg12_o           => reg12_c2a,
      b_reg13_o           => reg13_c2a,
      b_reg14_o           => reg14_c2a,
      b_reg15_o           => reg15_c2a,
      -- true dual ram side a
      a_ram_clk_i        => ram_clk_i,
      a_ram_we_i         => ram_we_i,
      a_ram_addr_i       => ram_addr_i,
      a_ram_data_i       => ram_data_i,
      a_ram_data_o       => ram_data_o,
      -- true dual ram side b
      b_ram_clk_i        => axif_dram_aclk,
      b_ram_we_i         => ram_we_a2c,
      b_ram_addr_i       => ram_addr_a2c,
      b_ram_data_i       => ram_data_a2c,
      b_ram_data_o       => ram_data_c2a,
      -- fifo1 side a
      a_fifo1_clk_i      => fifo_clk_i,
      a_fifo1_clear_i    => fifo_clear_i,
      a_fifo1_we_i       => fifo_we_i,
      a_fifo1_data_i     => fifo_data_i,
      a_fifo1_full_o     => fifo_full_o,
      a_fifo1_afull_o    => fifo_afull_o,
      a_fifo1_overflow_o => fifo_overflow_o,
      -- fifo1 side b
      b_fifo1_clk_i      => axif_fifo_aclk,
      b_fifo1_clear_i    => fifo_clear_a2c,
      b_fifo1_re_i       => fifo_re_a2c,
      b_fifo1_data_o     => fifo_data_c2a,
      -- fifo2 side a
      a_fifo2_clk_i      => fifo_clk_i,
      a_fifo2_clear_i    => fifo_clear_i,
      a_fifo2_re_i       => fifo_re_i,
      a_fifo2_data_o     => fifo_data_o,
      a_fifo2_empty_o    => fifo_empty_o,
      a_fifo2_aempty_o   => fifo_aempty_o, 
      a_fifo2_underflow_o=> fifo_underflow_o,
      -- fifo2 side b
      b_fifo2_clk_i      => axif_fifo_aclk,
      b_fifo2_clear_i    => fifo_clear_a2c,
      b_fifo2_we_i       => fifo_we_a2c,
      b_fifo2_data_i     => fifo_data_a2c,
      -- fifo shared status
      b_fifo_stat_o      => fifo_stat_c2a
   );

   fifo_clear_a2c <= not axif_fifo_aresetn;

end arch_imp;
