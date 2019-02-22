library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_Trigger_gen_m4_v1_0 is
	generic (
		-- Users to add parameters here
        TRIGGER_DATA_WIDTH     : integer	:= 16;
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 5
	);
	port (
		-- Users to add ports here
        Trig_clk     : in STD_LOGIC;
        Trig_resetn  : in STD_LOGIC;
        dma_complete        : out STD_LOGIC;
        din                 : in STD_LOGIC_VECTOR (TRIGGER_DATA_WIDTH - 1 downto 0);
        data_valid          : in STD_LOGIC;                                        ----- 8/06/2017
        trig_edge_rising    : out STD_LOGIC;
        trig    : out STD_LOGIC;
        trig_real : out STD_LOGIC;
        fifo_we : out STD_LOGIC;
        fifo_full   : in STD_LOGIC;
        fifo_empty   : in STD_LOGIC;
        dma_tready   : in STD_LOGIC;
        fifo_m_axis_tready  : out STD_LOGIC;      
        
        dma_tkeep : out STD_LOGIC_VECTOR(3 DOWNTO 0);  
        debug_state : out std_logic_vector(1 downto 0);
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end AXI_Trigger_gen_m4_v1_0;

architecture arch_imp of AXI_Trigger_gen_m4_v1_0 is

	-- component declaration
	component AXI_Trigger_gen_m4_v1_0_S00_AXI is
		generic (
		AXI_TRIGGER_DATA_WIDTH : integer	:= 16;
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 5
		);
		port (
		auto_trigger         : out STD_LOGIC; --09/05/2018
		trig_level_reg       : out STD_LOGIC_VECTOR (AXI_TRIGGER_DATA_WIDTH - 1 downto 0);
        dma_complete_reg     : out STD_LOGIC;
        trig_edge_rising_reg : out STD_LOGIC;
        trig_reg             : in STD_LOGIC;
        delta                : out std_logic_vector(AXI_TRIGGER_DATA_WIDTH-1 downto 0);
        
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component AXI_Trigger_gen_m4_v1_0_S00_AXI;
	
    component Trigger_m4 is
        generic ( Trig_data_width : integer    := 16);
        Port ( clk : in STD_LOGIC;
               resetn : in STD_LOGIC;
               din : in STD_LOGIC_VECTOR (Trig_data_width - 1 downto 0);
               data_valid   : in STD_LOGIC;                                        ----- 8/06/2017
               trig_level : in STD_LOGIC_VECTOR (Trig_data_width - 1 downto 0);
               trig_edge_rising : in STD_LOGIC;
               trig : out STD_LOGIC;
               delta      : in STD_LOGIC_VECTOR (Trig_data_width - 1 downto 0);
               fifo_full   : in STD_LOGIC;
               fifo_empty   : in STD_LOGIC;
               dma_tready   : in STD_LOGIC;
               auto_trigger : in STD_LOGIC; --09/05/2018
               debug_state : out std_logic_vector(1 downto 0);
               fifo_m_axis_tready  : out STD_LOGIC;
               count_val  : out STD_LOGIC_VECTOR (Trig_data_width - 1 downto 0);
               trig_real : out STD_LOGIC;
               fifo_we : out STD_LOGIC);
    end component;

    signal trig_level_sig : STD_LOGIC_VECTOR (TRIGGER_DATA_WIDTH - 1 downto 0);
    signal dma_complete_sig : STD_LOGIC;
    signal trig_edge_rising_sig : STD_LOGIC;
    signal trig_sig : STD_LOGIC;
    signal auto_sig : STD_LOGIC;
    signal delta_sig : STD_LOGIC_VECTOR (TRIGGER_DATA_WIDTH - 1 downto 0);
    
begin

-- Instantiation of Axi Bus Interface S00_AXI
AXI_Trigger_gen_m4_v1_0_S00_AXI_inst : AXI_Trigger_gen_m4_v1_0_S00_AXI
	generic map (
	    AXI_TRIGGER_DATA_WIDTH => TRIGGER_DATA_WIDTH,
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	    auto_trigger        => auto_sig, --09/05/2018
		trig_level_reg       => trig_level_sig,
        dma_complete_reg     => dma_complete_sig,
        trig_edge_rising_reg => trig_edge_rising_sig,
        trig_reg             => trig_sig,
        delta                => delta_sig,

	
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here
Trig_Gen : Trigger_m4
    generic map( Trig_data_width => TRIGGER_DATA_WIDTH)
    Port map( 
        clk => Trig_clk,
        resetn => Trig_resetn,
        din => din,
        data_valid => data_valid,                                       ----- 8/06/2017
        trig_level => trig_level_sig,
        trig_edge_rising => trig_edge_rising_sig,
        delta => delta_sig,
        fifo_full => fifo_full,
        fifo_empty => fifo_empty,
        dma_tready => dma_tready,
        
        auto_trigger => auto_sig, --09/05/2018
        debug_state => debug_state,
        
        fifo_m_axis_tready => fifo_m_axis_tready,
        trig => trig_sig,
        count_val => open,
        trig_real => trig_real,
        fifo_we => fifo_we
    );

    dma_complete <= dma_complete_sig;
    trig_edge_rising <= trig_edge_rising_sig;
    trig <= trig_sig;

    dma_tkeep<= (others =>trig_sig);

	-- User logic ends

end arch_imp;
