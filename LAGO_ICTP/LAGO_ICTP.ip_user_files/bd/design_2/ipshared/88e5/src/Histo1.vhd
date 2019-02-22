--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Wed Jul 25 19:17:47 2018
--Host        : HP6-MLAB-9 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target Histo1.bd
--Design      : Histo1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Histogram_imp_IZ93ED is
  port (
    Dout_clr : out STD_LOGIC_VECTOR ( 0 to 0 );
    addb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    ctrl_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    curr_cycle : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_valid : in STD_LOGIC;
    dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    done : out STD_LOGIC;
    doutb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    enb : out STD_LOGIC;
    in_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    max_cycles : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdy_0 : out STD_LOGIC;
    rst : in STD_LOGIC;
    web : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Histogram_imp_IZ93ED;

architecture STRUCTURE of Histogram_imp_IZ93ED is
  component Histo1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Histo1_xlslice_0_0;
  component Histo1_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Histo1_xlslice_0_1;
  component Histo1_histo_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    num : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en : in STD_LOGIC;
    curr_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cen : out STD_LOGIC;
    done : out STD_LOGIC
  );
  end component Histo1_histo_counter_0_0;
  component Histo1_reg_bit_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Histo1_reg_bit_1_0;
  component Histo1_SBRAM_wen_mgr_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    en : in STD_LOGIC;
    in_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rdy : out STD_LOGIC;
    web : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Histo1_SBRAM_wen_mgr_0_0;
  signal SBRAM_wen_mgr_0_dinb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SBRAM_wen_mgr_0_rdy : STD_LOGIC;
  signal SBRAM_wen_mgr_0_web : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_0_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal ctrl_reg_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal doutb_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal histo_counter_0_cen : STD_LOGIC;
  signal histo_counter_0_curr_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal histo_counter_0_done : STD_LOGIC;
  signal in_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal num_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_bit_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reg_bit_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reg_bit_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_1 : STD_LOGIC;
  signal NLW_SBRAM_wen_mgr_0_in_addr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
begin
  Dout_clr(0) <= reg_bit_2_Dout(0);
  addb(15 downto 0) <= in_addr_1(15 downto 0);
  clk_0_1 <= data_valid;
  clk_1 <= clk;
  ctrl_reg_1(31 downto 0) <= ctrl_reg(31 downto 0);
  curr_cycle(31 downto 0) <= histo_counter_0_curr_count(31 downto 0);
  dinb(31 downto 0) <= SBRAM_wen_mgr_0_dinb(31 downto 0);
  done <= histo_counter_0_done;
  doutb_1(31 downto 0) <= doutb(31 downto 0);
  enb <= histo_counter_0_cen;
  in_addr_1(15 downto 0) <= in_addr(15 downto 0);
  num_0_1(31 downto 0) <= max_cycles(31 downto 0);
  rdy_0 <= SBRAM_wen_mgr_0_rdy;
  rst_1 <= rst;
  web(0) <= SBRAM_wen_mgr_0_web(0);
SBRAM_wen_mgr_0: component Histo1_SBRAM_wen_mgr_0_0
     port map (
      clk => clk_1,
      data_valid => clk_0_1,
      dinb(31 downto 0) => SBRAM_wen_mgr_0_dinb(31 downto 0),
      doutb(31 downto 0) => doutb_1(31 downto 0),
      en => histo_counter_0_cen,
      in_addr(31 downto 16) => NLW_SBRAM_wen_mgr_0_in_addr_UNCONNECTED(31 downto 16),
      in_addr(15 downto 0) => in_addr_1(15 downto 0),
      rdy => SBRAM_wen_mgr_0_rdy,
      rst => rst_1,
      web(0) => SBRAM_wen_mgr_0_web(0)
    );
histo_counter_0: component Histo1_histo_counter_0_0
     port map (
      cen => histo_counter_0_cen,
      clk => clk_0_1,
      curr_count(31 downto 0) => histo_counter_0_curr_count(31 downto 0),
      done => histo_counter_0_done,
      en => reg_bit_0_Dout(0),
      num(31 downto 0) => num_0_1(31 downto 0),
      rst => reg_bit_1_Dout(0)
    );
reg_bit_0: component Histo1_xlslice_0_1
     port map (
      Din(31 downto 0) => ctrl_reg_1(31 downto 0),
      Dout(0) => reg_bit_1_Dout(0)
    );
reg_bit_1: component Histo1_xlslice_0_0
     port map (
      Din(31 downto 0) => ctrl_reg_1(31 downto 0),
      Dout(0) => reg_bit_0_Dout(0)
    );
reg_bit_2: component Histo1_reg_bit_1_0
     port map (
      Din(31 downto 0) => ctrl_reg_1(31 downto 0),
      Dout(0) => reg_bit_2_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Histo1 is
  port (
    Dout_clr_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    addb_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_0 : in STD_LOGIC;
    ctrl_reg_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    curr_cycle_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_valid_0 : in STD_LOGIC;
    dinb_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    done_0 : out STD_LOGIC;
    doutb_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    enb_0 : out STD_LOGIC;
    in_addr_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    max_cycles_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdy_0_0 : out STD_LOGIC;
    rst_0 : in STD_LOGIC;
    web_0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Histo1 : entity is "Histo1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Histo1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=5,numNonXlnxBlks=2,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=22,da_bram_cntlr_cnt=2,da_clkrst_cnt=1,da_ps7_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Histo1 : entity is "Histo1.hwdef";
end Histo1;

architecture STRUCTURE of Histo1 is
  signal Histogram_Dout_clr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Histogram_addb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Histogram_curr_cycle : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Histogram_dinb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Histogram_done : STD_LOGIC;
  signal Histogram_enb : STD_LOGIC;
  signal Histogram_rdy_0 : STD_LOGIC;
  signal Histogram_web : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_0_1 : STD_LOGIC;
  signal ctrl_reg_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_valid_0_1 : STD_LOGIC;
  signal doutb_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal in_addr_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal max_cycles_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rst_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN Histo1_clk_0, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of data_valid_0 : signal is "xilinx.com:signal:clock:1.0 CLK.DATA_VALID_0 CLK";
  attribute X_INTERFACE_PARAMETER of data_valid_0 : signal is "XIL_INTERFACENAME CLK.DATA_VALID_0, CLK_DOMAIN Histo1_data_valid_0, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst_0 : signal is "xilinx.com:signal:reset:1.0 RST.RST_0 RST";
  attribute X_INTERFACE_PARAMETER of rst_0 : signal is "XIL_INTERFACENAME RST.RST_0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of Dout_clr_0 : signal is "xilinx.com:signal:reset:1.0 RST.DOUT_CLR_0 RST";
  attribute X_INTERFACE_PARAMETER of Dout_clr_0 : signal is "XIL_INTERFACENAME RST.DOUT_CLR_0, POLARITY ACTIVE_LOW";
begin
  Dout_clr_0(0) <= Histogram_Dout_clr(0);
  addb_0(15 downto 0) <= Histogram_addb(15 downto 0);
  clk_0_1 <= clk_0;
  ctrl_reg_0_1(31 downto 0) <= ctrl_reg_0(31 downto 0);
  curr_cycle_0(31 downto 0) <= Histogram_curr_cycle(31 downto 0);
  data_valid_0_1 <= data_valid_0;
  dinb_0(31 downto 0) <= Histogram_dinb(31 downto 0);
  done_0 <= Histogram_done;
  doutb_0_1(31 downto 0) <= doutb_0(31 downto 0);
  enb_0 <= Histogram_enb;
  in_addr_0_1(15 downto 0) <= in_addr_0(15 downto 0);
  max_cycles_0_1(31 downto 0) <= max_cycles_0(31 downto 0);
  rdy_0_0 <= Histogram_rdy_0;
  rst_0_1 <= rst_0;
  web_0(0) <= Histogram_web(0);
Histogram: entity work.Histogram_imp_IZ93ED
     port map (
      Dout_clr(0) => Histogram_Dout_clr(0),
      addb(15 downto 0) => Histogram_addb(15 downto 0),
      clk => clk_0_1,
      ctrl_reg(31 downto 0) => ctrl_reg_0_1(31 downto 0),
      curr_cycle(31 downto 0) => Histogram_curr_cycle(31 downto 0),
      data_valid => data_valid_0_1,
      dinb(31 downto 0) => Histogram_dinb(31 downto 0),
      done => Histogram_done,
      doutb(31 downto 0) => doutb_0_1(31 downto 0),
      enb => Histogram_enb,
      in_addr(15 downto 0) => in_addr_0_1(15 downto 0),
      max_cycles(31 downto 0) => max_cycles_0_1(31 downto 0),
      rdy_0 => Histogram_rdy_0,
      rst => rst_0_1,
      web(0) => Histogram_web(0)
    );
end STRUCTURE;
