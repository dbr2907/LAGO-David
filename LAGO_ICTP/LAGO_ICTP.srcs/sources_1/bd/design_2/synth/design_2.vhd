--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Mon Feb 18 13:15:36 2019
--Host        : DESKTOP-P1VCJHC running 64-bit major release  (build 9200)
--Command     : generate_target design_2.bd
--Design      : design_2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC_Controller_imp_1VI3HWA is
  port (
    Ctrl_reg_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Ctrl_reg_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_raw : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_in1 : in STD_LOGIC;
    clk_to_adc_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_to_adc_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_from_adc_DS_N : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_from_adc_DS_P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    from_adc_or_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    from_adc_or_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    x_from_adc_calrun_fmc : in STD_LOGIC;
    x_to_adc_cal_fmc : out STD_LOGIC;
    x_to_adc_caldly_nscs_fmc : out STD_LOGIC;
    x_to_adc_dclk_rst_fmc : out STD_LOGIC;
    x_to_adc_fsr_ece_fmc : out STD_LOGIC;
    x_to_adc_led_0 : out STD_LOGIC;
    x_to_adc_led_1 : out STD_LOGIC;
    x_to_adc_outedge_ddr_sdata_fmc : out STD_LOGIC;
    x_to_adc_outv_slck_fmc : out STD_LOGIC;
    x_to_adc_pd_fmc : out STD_LOGIC
  );
end ADC_Controller_imp_1VI3HWA;

architecture STRUCTURE of ADC_Controller_imp_1VI3HWA is
  component design_2_adc_controller_0_0 is
  port (
    Ctrl_reg_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Ctrl_reg_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x_to_adc_cal_fmc : out STD_LOGIC;
    x_to_adc_caldly_nscs_fmc : out STD_LOGIC;
    x_to_adc_fsr_ece_fmc : out STD_LOGIC;
    x_to_adc_outv_slck_fmc : out STD_LOGIC;
    x_to_adc_outedge_ddr_sdata_fmc : out STD_LOGIC;
    x_to_adc_dclk_rst_fmc : out STD_LOGIC;
    x_to_adc_pd_fmc : out STD_LOGIC;
    x_to_adc_led_0 : out STD_LOGIC;
    x_to_adc_led_1 : out STD_LOGIC;
    x_from_adc_calrun_fmc : in STD_LOGIC;
    x_from_adc_or : in STD_LOGIC
  );
  end component design_2_adc_controller_0_0;
  component design_2_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component design_2_clk_wiz_0_0;
  component design_2_util_ds_buf_0_0 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_util_ds_buf_0_0;
  component design_2_util_ds_buf_2_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_2_util_ds_buf_2_0;
  component design_2_util_ds_buf_3_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_util_ds_buf_3_0;
  signal Ctrl_reg_in_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IBUF_DS_N1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal IBUF_DS_N_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IBUF_DS_P1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal IBUF_DS_P_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal adc_controller_0_Ctrl_reg_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal adc_controller_0_x_to_adc_cal_fmc : STD_LOGIC;
  signal adc_controller_0_x_to_adc_caldly_nscs_fmc : STD_LOGIC;
  signal adc_controller_0_x_to_adc_dclk_rst_fmc : STD_LOGIC;
  signal adc_controller_0_x_to_adc_fsr_ece_fmc : STD_LOGIC;
  signal adc_controller_0_x_to_adc_led_0 : STD_LOGIC;
  signal adc_controller_0_x_to_adc_led_1 : STD_LOGIC;
  signal adc_controller_0_x_to_adc_outedge_ddr_sdata_fmc : STD_LOGIC;
  signal adc_controller_0_x_to_adc_outv_slck_fmc : STD_LOGIC;
  signal adc_controller_0_x_to_adc_pd_fmc : STD_LOGIC;
  signal clk_in1_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal s00_axi_aresetn1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_0_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_0_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_2_IBUF_OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal util_ds_buf_3_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal x_from_adc_calrun_fmc_1 : STD_LOGIC;
begin
  Ctrl_reg_in_1(31 downto 0) <= Ctrl_reg_in(31 downto 0);
  Ctrl_reg_out(31 downto 0) <= adc_controller_0_Ctrl_reg_out(31 downto 0);
  IBUF_DS_N1_1(0) <= from_adc_or_DS_N(0);
  IBUF_DS_N_2(15 downto 0) <= data_from_adc_DS_N(15 downto 0);
  IBUF_DS_P1_1(0) <= from_adc_or_DS_P(0);
  IBUF_DS_P_2(15 downto 0) <= data_from_adc_DS_P(15 downto 0);
  adc_raw(15 downto 0) <= util_ds_buf_2_IBUF_OUT(15 downto 0);
  clk_in1_1 <= clk_in1;
  clk_to_adc_DS_N(0) <= util_ds_buf_0_OBUF_DS_N(0);
  clk_to_adc_DS_P(0) <= util_ds_buf_0_OBUF_DS_P(0);
  s00_axi_aresetn1_1(0) <= s00_axi_aresetn1(0);
  x_from_adc_calrun_fmc_1 <= x_from_adc_calrun_fmc;
  x_to_adc_cal_fmc <= adc_controller_0_x_to_adc_cal_fmc;
  x_to_adc_caldly_nscs_fmc <= adc_controller_0_x_to_adc_caldly_nscs_fmc;
  x_to_adc_dclk_rst_fmc <= adc_controller_0_x_to_adc_dclk_rst_fmc;
  x_to_adc_fsr_ece_fmc <= adc_controller_0_x_to_adc_fsr_ece_fmc;
  x_to_adc_led_0 <= adc_controller_0_x_to_adc_led_0;
  x_to_adc_led_1 <= adc_controller_0_x_to_adc_led_1;
  x_to_adc_outedge_ddr_sdata_fmc <= adc_controller_0_x_to_adc_outedge_ddr_sdata_fmc;
  x_to_adc_outv_slck_fmc <= adc_controller_0_x_to_adc_outv_slck_fmc;
  x_to_adc_pd_fmc <= adc_controller_0_x_to_adc_pd_fmc;
adc_controller_0: component design_2_adc_controller_0_0
     port map (
      Ctrl_reg_in(8 downto 0) => Ctrl_reg_in_1(8 downto 0),
      Ctrl_reg_out(31 downto 0) => adc_controller_0_Ctrl_reg_out(31 downto 0),
      x_from_adc_calrun_fmc => x_from_adc_calrun_fmc_1,
      x_from_adc_or => util_ds_buf_3_IBUF_OUT(0),
      x_to_adc_cal_fmc => adc_controller_0_x_to_adc_cal_fmc,
      x_to_adc_caldly_nscs_fmc => adc_controller_0_x_to_adc_caldly_nscs_fmc,
      x_to_adc_dclk_rst_fmc => adc_controller_0_x_to_adc_dclk_rst_fmc,
      x_to_adc_fsr_ece_fmc => adc_controller_0_x_to_adc_fsr_ece_fmc,
      x_to_adc_led_0 => adc_controller_0_x_to_adc_led_0,
      x_to_adc_led_1 => adc_controller_0_x_to_adc_led_1,
      x_to_adc_outedge_ddr_sdata_fmc => adc_controller_0_x_to_adc_outedge_ddr_sdata_fmc,
      x_to_adc_outv_slck_fmc => adc_controller_0_x_to_adc_outv_slck_fmc,
      x_to_adc_pd_fmc => adc_controller_0_x_to_adc_pd_fmc
    );
clk_wiz_0: component design_2_clk_wiz_0_0
     port map (
      clk_in1 => clk_in1_1,
      clk_out1 => clk_wiz_0_clk_out1,
      resetn => s00_axi_aresetn1_1(0)
    );
util_ds_buf_0: component design_2_util_ds_buf_0_0
     port map (
      OBUF_DS_N(0) => util_ds_buf_0_OBUF_DS_N(0),
      OBUF_DS_P(0) => util_ds_buf_0_OBUF_DS_P(0),
      OBUF_IN(0) => clk_wiz_0_clk_out1
    );
util_ds_buf_2: component design_2_util_ds_buf_2_0
     port map (
      IBUF_DS_N(15 downto 0) => IBUF_DS_N_2(15 downto 0),
      IBUF_DS_P(15 downto 0) => IBUF_DS_P_2(15 downto 0),
      IBUF_OUT(15 downto 0) => util_ds_buf_2_IBUF_OUT(15 downto 0)
    );
util_ds_buf_3: component design_2_util_ds_buf_3_0
     port map (
      IBUF_DS_N(0) => IBUF_DS_N1_1(0),
      IBUF_DS_P(0) => IBUF_DS_P1_1(0),
      IBUF_OUT(0) => util_ds_buf_3_IBUF_OUT(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DMA_Osciloscope_imp_1LKWGZ is
  port (
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S_AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_arready : out STD_LOGIC;
    S_AXI_LITE_arvalid : in STD_LOGIC;
    S_AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_awready : out STD_LOGIC;
    S_AXI_LITE_awvalid : in STD_LOGIC;
    S_AXI_LITE_bready : in STD_LOGIC;
    S_AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_bvalid : out STD_LOGIC;
    S_AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_rready : in STD_LOGIC;
    S_AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_rvalid : out STD_LOGIC;
    S_AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_wready : out STD_LOGIC;
    S_AXI_LITE_wvalid : in STD_LOGIC;
    axi_resetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_valid : in STD_LOGIC;
    debug_state_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk1 : in STD_LOGIC;
    resetn : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arready : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awready : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rready : in STD_LOGIC;
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
end DMA_Osciloscope_imp_1LKWGZ;

architecture STRUCTURE of DMA_Osciloscope_imp_1LKWGZ is
  component design_2_AXI_Trigger_gen_m4_0_0 is
  port (
    Trig_clk : in STD_LOGIC;
    Trig_resetn : in STD_LOGIC;
    dma_complete : out STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_valid : in STD_LOGIC;
    trig_edge_rising : out STD_LOGIC;
    trig : out STD_LOGIC;
    trig_real : out STD_LOGIC;
    fifo_we : out STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    dma_tready : in STD_LOGIC;
    fifo_m_axis_tready : out STD_LOGIC;
    dma_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  end component design_2_AXI_Trigger_gen_m4_0_0;
  component design_2_FIFO_SIZE_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_2_FIFO_SIZE_0;
  component design_2_OLD_fifo_0 is
  port (
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  end component design_2_OLD_fifo_0;
  component design_2_empty_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_empty_0;
  component design_2_full_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_full_0;
  component design_2_tlast_gen_0_0 is
  port (
    aclk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    pkt_length : in STD_LOGIC_VECTOR ( 30 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_2_tlast_gen_0_0;
  component design_2_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_2_xlconcat_0_0;
  component design_2_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_2_xlconstant_0_0;
  component design_2_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_2_xlconstant_1_0;
  component design_2_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component design_2_axi_dma_0_0;
  component design_2_axi_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC
  );
  end component design_2_axi_smc_0;
  signal AXI_Trigger_gen_m4_0_debug_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal AXI_Trigger_gen_m4_0_fifo_m_axis_tready : STD_LOGIC;
  signal AXI_Trigger_gen_m4_0_fifo_we : STD_LOGIC;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC;
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal OLD_fifo_m_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal OLD_fifo_m_axis_tvalid : STD_LOGIC;
  signal OLD_fifo_s_axis_tready : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_dma_0_s2mm_introut : STD_LOGIC;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  signal data_valid_1 : STD_LOGIC;
  signal din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal empty_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal full_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal resetn_1 : STD_LOGIC;
  signal tlast_gen_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tlast_gen_0_m_axis_TLAST : STD_LOGIC;
  signal tlast_gen_0_m_axis_TREADY : STD_LOGIC;
  signal tlast_gen_0_m_axis_TVALID : STD_LOGIC;
  signal tlast_gen_0_s_axis_tready : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconstant_1_dout_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_AXI_Trigger_gen_m4_0_dma_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_AXI_Trigger_gen_m4_0_trig_UNCONNECTED : STD_LOGIC;
  signal NLW_AXI_Trigger_gen_m4_0_trig_edge_rising_UNCONNECTED : STD_LOGIC;
  signal NLW_AXI_Trigger_gen_m4_0_trig_real_UNCONNECTED : STD_LOGIC;
  signal NLW_AXI_Trigger_gen_m4_0_dma_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_OLD_fifo_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_OLD_fifo_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_OLD_fifo_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_OLD_fifo_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
begin
  Conn1_ARADDR(31 downto 0) <= s00_axi_araddr(31 downto 0);
  Conn1_ARPROT(2 downto 0) <= s00_axi_arprot(2 downto 0);
  Conn1_ARVALID <= s00_axi_arvalid;
  Conn1_AWADDR(31 downto 0) <= s00_axi_awaddr(31 downto 0);
  Conn1_AWPROT(2 downto 0) <= s00_axi_awprot(2 downto 0);
  Conn1_AWVALID <= s00_axi_awvalid;
  Conn1_BREADY <= s00_axi_bready;
  Conn1_RREADY <= s00_axi_rready;
  Conn1_WDATA(31 downto 0) <= s00_axi_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= s00_axi_wstrb(3 downto 0);
  Conn1_WVALID <= s00_axi_wvalid;
  M00_AXI_awaddr(31 downto 0) <= axi_smc_M00_AXI_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= axi_smc_M00_AXI_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= axi_smc_M00_AXI_AWCACHE(3 downto 0);
  M00_AXI_awlen(3 downto 0) <= axi_smc_M00_AXI_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= axi_smc_M00_AXI_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= axi_smc_M00_AXI_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= axi_smc_M00_AXI_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= axi_smc_M00_AXI_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= axi_smc_M00_AXI_AWVALID;
  M00_AXI_bready <= axi_smc_M00_AXI_BREADY;
  M00_AXI_wdata(63 downto 0) <= axi_smc_M00_AXI_WDATA(63 downto 0);
  M00_AXI_wlast <= axi_smc_M00_AXI_WLAST;
  M00_AXI_wstrb(7 downto 0) <= axi_smc_M00_AXI_WSTRB(7 downto 0);
  M00_AXI_wvalid <= axi_smc_M00_AXI_WVALID;
  Net <= m_axi_s2mm_aclk1;
  S_AXI_LITE_arready <= processing_system7_0_axi_periph_M00_AXI_ARREADY;
  S_AXI_LITE_awready <= processing_system7_0_axi_periph_M00_AXI_AWREADY;
  S_AXI_LITE_bresp(1 downto 0) <= processing_system7_0_axi_periph_M00_AXI_BRESP(1 downto 0);
  S_AXI_LITE_bvalid <= processing_system7_0_axi_periph_M00_AXI_BVALID;
  S_AXI_LITE_rdata(31 downto 0) <= processing_system7_0_axi_periph_M00_AXI_RDATA(31 downto 0);
  S_AXI_LITE_rresp(1 downto 0) <= processing_system7_0_axi_periph_M00_AXI_RRESP(1 downto 0);
  S_AXI_LITE_rvalid <= processing_system7_0_axi_periph_M00_AXI_RVALID;
  S_AXI_LITE_wready <= processing_system7_0_axi_periph_M00_AXI_WREADY;
  axi_smc_M00_AXI_AWREADY <= M00_AXI_awready;
  axi_smc_M00_AXI_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  axi_smc_M00_AXI_BVALID <= M00_AXI_bvalid;
  axi_smc_M00_AXI_WREADY <= M00_AXI_wready;
  data_valid_1 <= data_valid;
  debug_state_0(1 downto 0) <= AXI_Trigger_gen_m4_0_debug_state(1 downto 0);
  din_1(15 downto 0) <= din(15 downto 0);
  proc_sys_reset_0_peripheral_aresetn(0) <= axi_resetn(0);
  processing_system7_0_FCLK_CLK0 <= m_axi_s2mm_aclk;
  processing_system7_0_axi_periph_M00_AXI_ARADDR(31 downto 0) <= S_AXI_LITE_araddr(31 downto 0);
  processing_system7_0_axi_periph_M00_AXI_ARVALID <= S_AXI_LITE_arvalid;
  processing_system7_0_axi_periph_M00_AXI_AWADDR(31 downto 0) <= S_AXI_LITE_awaddr(31 downto 0);
  processing_system7_0_axi_periph_M00_AXI_AWVALID <= S_AXI_LITE_awvalid;
  processing_system7_0_axi_periph_M00_AXI_BREADY <= S_AXI_LITE_bready;
  processing_system7_0_axi_periph_M00_AXI_RREADY <= S_AXI_LITE_rready;
  processing_system7_0_axi_periph_M00_AXI_WDATA(31 downto 0) <= S_AXI_LITE_wdata(31 downto 0);
  processing_system7_0_axi_periph_M00_AXI_WVALID <= S_AXI_LITE_wvalid;
  resetn_1 <= resetn;
  s00_axi_arready <= Conn1_ARREADY;
  s00_axi_awready <= Conn1_AWREADY;
  s00_axi_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  s00_axi_bvalid <= Conn1_BVALID;
  s00_axi_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  s00_axi_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  s00_axi_rvalid <= Conn1_RVALID;
  s00_axi_wready <= Conn1_WREADY;
  s2mm_introut <= axi_dma_0_s2mm_introut;
AXI_Trigger_gen_m4_0: component design_2_AXI_Trigger_gen_m4_0_0
     port map (
      Trig_clk => Net,
      Trig_resetn => resetn_1,
      data_valid => data_valid_1,
      debug_state(1 downto 0) => AXI_Trigger_gen_m4_0_debug_state(1 downto 0),
      din(15 downto 0) => din_1(15 downto 0),
      dma_complete => NLW_AXI_Trigger_gen_m4_0_dma_complete_UNCONNECTED,
      dma_tkeep(3 downto 0) => NLW_AXI_Trigger_gen_m4_0_dma_tkeep_UNCONNECTED(3 downto 0),
      dma_tready => tlast_gen_0_s_axis_tready,
      fifo_empty => empty_Res(0),
      fifo_full => full_Res(0),
      fifo_m_axis_tready => AXI_Trigger_gen_m4_0_fifo_m_axis_tready,
      fifo_we => AXI_Trigger_gen_m4_0_fifo_we,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(4 downto 0) => Conn1_ARADDR(4 downto 0),
      s00_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      s00_axi_arready => Conn1_ARREADY,
      s00_axi_arvalid => Conn1_ARVALID,
      s00_axi_awaddr(4 downto 0) => Conn1_AWADDR(4 downto 0),
      s00_axi_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      s00_axi_awready => Conn1_AWREADY,
      s00_axi_awvalid => Conn1_AWVALID,
      s00_axi_bready => Conn1_BREADY,
      s00_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s00_axi_bvalid => Conn1_BVALID,
      s00_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s00_axi_rready => Conn1_RREADY,
      s00_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s00_axi_rvalid => Conn1_RVALID,
      s00_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s00_axi_wready => Conn1_WREADY,
      s00_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s00_axi_wvalid => Conn1_WVALID,
      trig => NLW_AXI_Trigger_gen_m4_0_trig_UNCONNECTED,
      trig_edge_rising => NLW_AXI_Trigger_gen_m4_0_trig_edge_rising_UNCONNECTED,
      trig_real => NLW_AXI_Trigger_gen_m4_0_trig_real_UNCONNECTED
    );
FIFO_SIZE: component design_2_FIFO_SIZE_0
     port map (
      dout(31 downto 0) => xlconstant_1_dout(31 downto 0)
    );
OLD_fifo: component design_2_OLD_fifo_0
     port map (
      axis_prog_empty => NLW_OLD_fifo_axis_prog_empty_UNCONNECTED,
      axis_prog_full => NLW_OLD_fifo_axis_prog_full_UNCONNECTED,
      m_aclk => Net,
      m_axis_tdata(31 downto 0) => OLD_fifo_m_axis_tdata(31 downto 0),
      m_axis_tready => AXI_Trigger_gen_m4_0_fifo_m_axis_tready,
      m_axis_tvalid => OLD_fifo_m_axis_tvalid,
      rd_rst_busy => NLW_OLD_fifo_rd_rst_busy_UNCONNECTED,
      s_aclk => Net,
      s_aresetn => resetn_1,
      s_axis_tdata(31 downto 0) => xlconcat_0_dout(31 downto 0),
      s_axis_tready => OLD_fifo_s_axis_tready,
      s_axis_tvalid => AXI_Trigger_gen_m4_0_fifo_we,
      wr_rst_busy => NLW_OLD_fifo_wr_rst_busy_UNCONNECTED
    );
axi_dma_0: component design_2_axi_dma_0_0
     port map (
      axi_resetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axi_s2mm_aclk => Net,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(63 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(63 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(7 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(7 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      s2mm_introut => axi_dma_0_s2mm_introut,
      s2mm_prmry_reset_out_n => NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(9 downto 0) => processing_system7_0_axi_periph_M00_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => processing_system7_0_axi_periph_M00_AXI_ARREADY,
      s_axi_lite_arvalid => processing_system7_0_axi_periph_M00_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => processing_system7_0_axi_periph_M00_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => processing_system7_0_axi_periph_M00_AXI_AWREADY,
      s_axi_lite_awvalid => processing_system7_0_axi_periph_M00_AXI_AWVALID,
      s_axi_lite_bready => processing_system7_0_axi_periph_M00_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => processing_system7_0_axi_periph_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => processing_system7_0_axi_periph_M00_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => processing_system7_0_axi_periph_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => processing_system7_0_axi_periph_M00_AXI_WREADY,
      s_axi_lite_wvalid => processing_system7_0_axi_periph_M00_AXI_WVALID,
      s_axis_s2mm_tdata(31 downto 0) => tlast_gen_0_m_axis_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => xlconstant_0_dout(3 downto 0),
      s_axis_s2mm_tlast => tlast_gen_0_m_axis_TLAST,
      s_axis_s2mm_tready => tlast_gen_0_m_axis_TREADY,
      s_axis_s2mm_tvalid => tlast_gen_0_m_axis_TVALID
    );
axi_smc: component design_2_axi_smc_0
     port map (
      M00_AXI_awaddr(31 downto 0) => axi_smc_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_smc_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_smc_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_wdata(63 downto 0) => axi_smc_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_smc_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      S00_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => '0',
      S00_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => B"0000",
      S00_AXI_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      S00_AXI_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      S00_AXI_wdata(63 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(63 downto 0),
      S00_AXI_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      S00_AXI_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      S00_AXI_wstrb(7 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(7 downto 0),
      S00_AXI_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      aclk => Net,
      aclk1 => processing_system7_0_FCLK_CLK0,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0)
    );
empty: component design_2_empty_0
     port map (
      Op1(0) => OLD_fifo_m_axis_tvalid,
      Res(0) => empty_Res(0)
    );
full: component design_2_full_0
     port map (
      Op1(0) => OLD_fifo_s_axis_tready,
      Res(0) => full_Res(0)
    );
tlast_gen_0: component design_2_tlast_gen_0_0
     port map (
      aclk => Net,
      m_axis_tdata(31 downto 0) => tlast_gen_0_m_axis_TDATA(31 downto 0),
      m_axis_tlast => tlast_gen_0_m_axis_TLAST,
      m_axis_tready => tlast_gen_0_m_axis_TREADY,
      m_axis_tvalid => tlast_gen_0_m_axis_TVALID,
      pkt_length(30 downto 0) => xlconstant_1_dout(30 downto 0),
      resetn => resetn_1,
      s_axis_tdata(31 downto 0) => OLD_fifo_m_axis_tdata(31 downto 0),
      s_axis_tready => tlast_gen_0_s_axis_tready,
      s_axis_tvalid => OLD_fifo_m_axis_tvalid
    );
xlconcat_0: component design_2_xlconcat_0_0
     port map (
      In0(15 downto 0) => din_1(15 downto 0),
      In1(15 downto 0) => xlconstant_1_dout_1(15 downto 0),
      dout(31 downto 0) => xlconcat_0_dout(31 downto 0)
    );
xlconstant_0: component design_2_xlconstant_0_0
     port map (
      dout(3 downto 0) => xlconstant_0_dout(3 downto 0)
    );
xlconstant_1: component design_2_xlconstant_1_0
     port map (
      dout(15 downto 0) => xlconstant_1_dout_1(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_35T4DH is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_35T4DH;

architecture STRUCTURE of m00_couplers_imp_35T4DH is
  component design_2_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_2_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= m00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_2_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_auto_pc_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => m00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => m00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => m00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => m00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1RBJY4K is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_1RBJY4K;

architecture STRUCTURE of m01_couplers_imp_1RBJY4K is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARBURST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARCACHE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARLEN : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARQOS : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARREGION : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARSIZE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWBURST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWCACHE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWLEN : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWQOS : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWREGION : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWSIZE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m01_couplers_to_m01_couplers_ARADDR;
  M_AXI_arburst <= m01_couplers_to_m01_couplers_ARBURST;
  M_AXI_arcache <= m01_couplers_to_m01_couplers_ARCACHE;
  M_AXI_arid <= m01_couplers_to_m01_couplers_ARID;
  M_AXI_arlen <= m01_couplers_to_m01_couplers_ARLEN;
  M_AXI_arlock <= m01_couplers_to_m01_couplers_ARLOCK;
  M_AXI_arprot <= m01_couplers_to_m01_couplers_ARPROT;
  M_AXI_arqos <= m01_couplers_to_m01_couplers_ARQOS;
  M_AXI_arregion <= m01_couplers_to_m01_couplers_ARREGION;
  M_AXI_arsize <= m01_couplers_to_m01_couplers_ARSIZE;
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr <= m01_couplers_to_m01_couplers_AWADDR;
  M_AXI_awburst <= m01_couplers_to_m01_couplers_AWBURST;
  M_AXI_awcache <= m01_couplers_to_m01_couplers_AWCACHE;
  M_AXI_awid <= m01_couplers_to_m01_couplers_AWID;
  M_AXI_awlen <= m01_couplers_to_m01_couplers_AWLEN;
  M_AXI_awlock <= m01_couplers_to_m01_couplers_AWLOCK;
  M_AXI_awprot <= m01_couplers_to_m01_couplers_AWPROT;
  M_AXI_awqos <= m01_couplers_to_m01_couplers_AWQOS;
  M_AXI_awregion <= m01_couplers_to_m01_couplers_AWREGION;
  M_AXI_awsize <= m01_couplers_to_m01_couplers_AWSIZE;
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata <= m01_couplers_to_m01_couplers_WDATA;
  M_AXI_wlast <= m01_couplers_to_m01_couplers_WLAST;
  M_AXI_wstrb <= m01_couplers_to_m01_couplers_WSTRB;
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bid <= m01_couplers_to_m01_couplers_BID;
  S_AXI_bresp <= m01_couplers_to_m01_couplers_BRESP;
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata <= m01_couplers_to_m01_couplers_RDATA;
  S_AXI_rid <= m01_couplers_to_m01_couplers_RID;
  S_AXI_rlast <= m01_couplers_to_m01_couplers_RLAST;
  S_AXI_rresp <= m01_couplers_to_m01_couplers_RRESP;
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR <= S_AXI_araddr;
  m01_couplers_to_m01_couplers_ARBURST <= S_AXI_arburst;
  m01_couplers_to_m01_couplers_ARCACHE <= S_AXI_arcache;
  m01_couplers_to_m01_couplers_ARID <= S_AXI_arid;
  m01_couplers_to_m01_couplers_ARLEN <= S_AXI_arlen;
  m01_couplers_to_m01_couplers_ARLOCK <= S_AXI_arlock;
  m01_couplers_to_m01_couplers_ARPROT <= S_AXI_arprot;
  m01_couplers_to_m01_couplers_ARQOS <= S_AXI_arqos;
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARREGION <= S_AXI_arregion;
  m01_couplers_to_m01_couplers_ARSIZE <= S_AXI_arsize;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR <= S_AXI_awaddr;
  m01_couplers_to_m01_couplers_AWBURST <= S_AXI_awburst;
  m01_couplers_to_m01_couplers_AWCACHE <= S_AXI_awcache;
  m01_couplers_to_m01_couplers_AWID <= S_AXI_awid;
  m01_couplers_to_m01_couplers_AWLEN <= S_AXI_awlen;
  m01_couplers_to_m01_couplers_AWLOCK <= S_AXI_awlock;
  m01_couplers_to_m01_couplers_AWPROT <= S_AXI_awprot;
  m01_couplers_to_m01_couplers_AWQOS <= S_AXI_awqos;
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWREGION <= S_AXI_awregion;
  m01_couplers_to_m01_couplers_AWSIZE <= S_AXI_awsize;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BID <= M_AXI_bid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP <= M_AXI_bresp;
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA <= M_AXI_rdata;
  m01_couplers_to_m01_couplers_RID <= M_AXI_rid;
  m01_couplers_to_m01_couplers_RLAST <= M_AXI_rlast;
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP <= M_AXI_rresp;
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA <= S_AXI_wdata;
  m01_couplers_to_m01_couplers_WLAST <= S_AXI_wlast;
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB <= S_AXI_wstrb;
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_42QGH2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_42QGH2;

architecture STRUCTURE of m02_couplers_imp_42QGH2 is
  component design_2_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_2_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m02_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m02_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m02_couplers_WVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m02_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m02_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m02_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m02_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= m02_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m02_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= m02_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m02_couplers_to_auto_pc_WREADY;
  auto_pc_to_m02_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m02_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m02_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m02_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m02_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m02_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m02_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m02_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m02_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m02_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m02_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m02_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m02_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m02_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m02_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m02_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m02_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m02_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m02_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m02_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m02_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m02_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m02_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_2_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m02_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m02_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m02_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m02_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m02_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m02_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m02_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m02_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m02_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m02_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m02_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m02_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m02_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m02_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m02_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m02_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m02_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => m02_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => m02_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m02_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m02_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m02_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m02_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m02_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m02_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m02_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m02_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m02_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m02_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => m02_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => m02_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m02_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m02_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m02_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m02_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m02_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m02_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m02_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => m02_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => m02_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m02_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m02_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m02_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => m02_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => m02_couplers_to_auto_pc_RLAST,
      s_axi_rready => m02_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m02_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m02_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m02_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m02_couplers_to_auto_pc_WLAST,
      s_axi_wready => m02_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m02_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m02_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1QOA6TJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_1QOA6TJ;

architecture STRUCTURE of m03_couplers_imp_1QOA6TJ is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARBURST : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARCACHE : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARLEN : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARLOCK : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARPROT : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARQOS : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARREGION : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARSIZE : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWBURST : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWCACHE : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWLEN : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWLOCK : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWPROT : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWQOS : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWREGION : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWSIZE : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RLAST : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WLAST : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m03_couplers_to_m03_couplers_ARADDR;
  M_AXI_arburst <= m03_couplers_to_m03_couplers_ARBURST;
  M_AXI_arcache <= m03_couplers_to_m03_couplers_ARCACHE;
  M_AXI_arid <= m03_couplers_to_m03_couplers_ARID;
  M_AXI_arlen <= m03_couplers_to_m03_couplers_ARLEN;
  M_AXI_arlock <= m03_couplers_to_m03_couplers_ARLOCK;
  M_AXI_arprot <= m03_couplers_to_m03_couplers_ARPROT;
  M_AXI_arqos <= m03_couplers_to_m03_couplers_ARQOS;
  M_AXI_arregion <= m03_couplers_to_m03_couplers_ARREGION;
  M_AXI_arsize <= m03_couplers_to_m03_couplers_ARSIZE;
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr <= m03_couplers_to_m03_couplers_AWADDR;
  M_AXI_awburst <= m03_couplers_to_m03_couplers_AWBURST;
  M_AXI_awcache <= m03_couplers_to_m03_couplers_AWCACHE;
  M_AXI_awid <= m03_couplers_to_m03_couplers_AWID;
  M_AXI_awlen <= m03_couplers_to_m03_couplers_AWLEN;
  M_AXI_awlock <= m03_couplers_to_m03_couplers_AWLOCK;
  M_AXI_awprot <= m03_couplers_to_m03_couplers_AWPROT;
  M_AXI_awqos <= m03_couplers_to_m03_couplers_AWQOS;
  M_AXI_awregion <= m03_couplers_to_m03_couplers_AWREGION;
  M_AXI_awsize <= m03_couplers_to_m03_couplers_AWSIZE;
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata <= m03_couplers_to_m03_couplers_WDATA;
  M_AXI_wlast <= m03_couplers_to_m03_couplers_WLAST;
  M_AXI_wstrb <= m03_couplers_to_m03_couplers_WSTRB;
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bid <= m03_couplers_to_m03_couplers_BID;
  S_AXI_bresp <= m03_couplers_to_m03_couplers_BRESP;
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata <= m03_couplers_to_m03_couplers_RDATA;
  S_AXI_rid <= m03_couplers_to_m03_couplers_RID;
  S_AXI_rlast <= m03_couplers_to_m03_couplers_RLAST;
  S_AXI_rresp <= m03_couplers_to_m03_couplers_RRESP;
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR <= S_AXI_araddr;
  m03_couplers_to_m03_couplers_ARBURST <= S_AXI_arburst;
  m03_couplers_to_m03_couplers_ARCACHE <= S_AXI_arcache;
  m03_couplers_to_m03_couplers_ARID <= S_AXI_arid;
  m03_couplers_to_m03_couplers_ARLEN <= S_AXI_arlen;
  m03_couplers_to_m03_couplers_ARLOCK <= S_AXI_arlock;
  m03_couplers_to_m03_couplers_ARPROT <= S_AXI_arprot;
  m03_couplers_to_m03_couplers_ARQOS <= S_AXI_arqos;
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARREGION <= S_AXI_arregion;
  m03_couplers_to_m03_couplers_ARSIZE <= S_AXI_arsize;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR <= S_AXI_awaddr;
  m03_couplers_to_m03_couplers_AWBURST <= S_AXI_awburst;
  m03_couplers_to_m03_couplers_AWCACHE <= S_AXI_awcache;
  m03_couplers_to_m03_couplers_AWID <= S_AXI_awid;
  m03_couplers_to_m03_couplers_AWLEN <= S_AXI_awlen;
  m03_couplers_to_m03_couplers_AWLOCK <= S_AXI_awlock;
  m03_couplers_to_m03_couplers_AWPROT <= S_AXI_awprot;
  m03_couplers_to_m03_couplers_AWQOS <= S_AXI_awqos;
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWREGION <= S_AXI_awregion;
  m03_couplers_to_m03_couplers_AWSIZE <= S_AXI_awsize;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BID <= M_AXI_bid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP <= M_AXI_bresp;
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA <= M_AXI_rdata;
  m03_couplers_to_m03_couplers_RID <= M_AXI_rid;
  m03_couplers_to_m03_couplers_RLAST <= M_AXI_rlast;
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP <= M_AXI_rresp;
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA <= S_AXI_wdata;
  m03_couplers_to_m03_couplers_WLAST <= S_AXI_wlast;
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB <= S_AXI_wstrb;
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_7YP9F is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_7YP9F;

architecture STRUCTURE of m04_couplers_imp_7YP9F is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARBURST : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARCACHE : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARLEN : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARLOCK : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARPROT : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARQOS : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARREGION : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARSIZE : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWBURST : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWCACHE : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWLEN : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWLOCK : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWPROT : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWQOS : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWREGION : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWSIZE : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RLAST : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WLAST : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m04_couplers_to_m04_couplers_ARADDR;
  M_AXI_arburst <= m04_couplers_to_m04_couplers_ARBURST;
  M_AXI_arcache <= m04_couplers_to_m04_couplers_ARCACHE;
  M_AXI_arid <= m04_couplers_to_m04_couplers_ARID;
  M_AXI_arlen <= m04_couplers_to_m04_couplers_ARLEN;
  M_AXI_arlock <= m04_couplers_to_m04_couplers_ARLOCK;
  M_AXI_arprot <= m04_couplers_to_m04_couplers_ARPROT;
  M_AXI_arqos <= m04_couplers_to_m04_couplers_ARQOS;
  M_AXI_arregion <= m04_couplers_to_m04_couplers_ARREGION;
  M_AXI_arsize <= m04_couplers_to_m04_couplers_ARSIZE;
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr <= m04_couplers_to_m04_couplers_AWADDR;
  M_AXI_awburst <= m04_couplers_to_m04_couplers_AWBURST;
  M_AXI_awcache <= m04_couplers_to_m04_couplers_AWCACHE;
  M_AXI_awid <= m04_couplers_to_m04_couplers_AWID;
  M_AXI_awlen <= m04_couplers_to_m04_couplers_AWLEN;
  M_AXI_awlock <= m04_couplers_to_m04_couplers_AWLOCK;
  M_AXI_awprot <= m04_couplers_to_m04_couplers_AWPROT;
  M_AXI_awqos <= m04_couplers_to_m04_couplers_AWQOS;
  M_AXI_awregion <= m04_couplers_to_m04_couplers_AWREGION;
  M_AXI_awsize <= m04_couplers_to_m04_couplers_AWSIZE;
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata <= m04_couplers_to_m04_couplers_WDATA;
  M_AXI_wlast <= m04_couplers_to_m04_couplers_WLAST;
  M_AXI_wstrb <= m04_couplers_to_m04_couplers_WSTRB;
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bid <= m04_couplers_to_m04_couplers_BID;
  S_AXI_bresp <= m04_couplers_to_m04_couplers_BRESP;
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata <= m04_couplers_to_m04_couplers_RDATA;
  S_AXI_rid <= m04_couplers_to_m04_couplers_RID;
  S_AXI_rlast <= m04_couplers_to_m04_couplers_RLAST;
  S_AXI_rresp <= m04_couplers_to_m04_couplers_RRESP;
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR <= S_AXI_araddr;
  m04_couplers_to_m04_couplers_ARBURST <= S_AXI_arburst;
  m04_couplers_to_m04_couplers_ARCACHE <= S_AXI_arcache;
  m04_couplers_to_m04_couplers_ARID <= S_AXI_arid;
  m04_couplers_to_m04_couplers_ARLEN <= S_AXI_arlen;
  m04_couplers_to_m04_couplers_ARLOCK <= S_AXI_arlock;
  m04_couplers_to_m04_couplers_ARPROT <= S_AXI_arprot;
  m04_couplers_to_m04_couplers_ARQOS <= S_AXI_arqos;
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARREGION <= S_AXI_arregion;
  m04_couplers_to_m04_couplers_ARSIZE <= S_AXI_arsize;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR <= S_AXI_awaddr;
  m04_couplers_to_m04_couplers_AWBURST <= S_AXI_awburst;
  m04_couplers_to_m04_couplers_AWCACHE <= S_AXI_awcache;
  m04_couplers_to_m04_couplers_AWID <= S_AXI_awid;
  m04_couplers_to_m04_couplers_AWLEN <= S_AXI_awlen;
  m04_couplers_to_m04_couplers_AWLOCK <= S_AXI_awlock;
  m04_couplers_to_m04_couplers_AWPROT <= S_AXI_awprot;
  m04_couplers_to_m04_couplers_AWQOS <= S_AXI_awqos;
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWREGION <= S_AXI_awregion;
  m04_couplers_to_m04_couplers_AWSIZE <= S_AXI_awsize;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BID <= M_AXI_bid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP <= M_AXI_bresp;
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA <= M_AXI_rdata;
  m04_couplers_to_m04_couplers_RID <= M_AXI_rid;
  m04_couplers_to_m04_couplers_RLAST <= M_AXI_rlast;
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP <= M_AXI_rresp;
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA <= S_AXI_wdata;
  m04_couplers_to_m04_couplers_WLAST <= S_AXI_wlast;
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB <= S_AXI_wstrb;
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1UHHUGY is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_1UHHUGY;

architecture STRUCTURE of m05_couplers_imp_1UHHUGY is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARBURST : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARCACHE : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARLEN : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARLOCK : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARPROT : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARQOS : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARREGION : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARSIZE : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWBURST : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWCACHE : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWLEN : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWLOCK : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWPROT : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWQOS : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWREGION : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWSIZE : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RLAST : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WLAST : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m05_couplers_to_m05_couplers_ARADDR;
  M_AXI_arburst <= m05_couplers_to_m05_couplers_ARBURST;
  M_AXI_arcache <= m05_couplers_to_m05_couplers_ARCACHE;
  M_AXI_arid <= m05_couplers_to_m05_couplers_ARID;
  M_AXI_arlen <= m05_couplers_to_m05_couplers_ARLEN;
  M_AXI_arlock <= m05_couplers_to_m05_couplers_ARLOCK;
  M_AXI_arprot <= m05_couplers_to_m05_couplers_ARPROT;
  M_AXI_arqos <= m05_couplers_to_m05_couplers_ARQOS;
  M_AXI_arregion <= m05_couplers_to_m05_couplers_ARREGION;
  M_AXI_arsize <= m05_couplers_to_m05_couplers_ARSIZE;
  M_AXI_arvalid <= m05_couplers_to_m05_couplers_ARVALID;
  M_AXI_awaddr <= m05_couplers_to_m05_couplers_AWADDR;
  M_AXI_awburst <= m05_couplers_to_m05_couplers_AWBURST;
  M_AXI_awcache <= m05_couplers_to_m05_couplers_AWCACHE;
  M_AXI_awid <= m05_couplers_to_m05_couplers_AWID;
  M_AXI_awlen <= m05_couplers_to_m05_couplers_AWLEN;
  M_AXI_awlock <= m05_couplers_to_m05_couplers_AWLOCK;
  M_AXI_awprot <= m05_couplers_to_m05_couplers_AWPROT;
  M_AXI_awqos <= m05_couplers_to_m05_couplers_AWQOS;
  M_AXI_awregion <= m05_couplers_to_m05_couplers_AWREGION;
  M_AXI_awsize <= m05_couplers_to_m05_couplers_AWSIZE;
  M_AXI_awvalid <= m05_couplers_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_couplers_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_couplers_to_m05_couplers_RREADY;
  M_AXI_wdata <= m05_couplers_to_m05_couplers_WDATA;
  M_AXI_wlast <= m05_couplers_to_m05_couplers_WLAST;
  M_AXI_wstrb <= m05_couplers_to_m05_couplers_WSTRB;
  M_AXI_wvalid <= m05_couplers_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_couplers_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_couplers_AWREADY;
  S_AXI_bid <= m05_couplers_to_m05_couplers_BID;
  S_AXI_bresp <= m05_couplers_to_m05_couplers_BRESP;
  S_AXI_bvalid <= m05_couplers_to_m05_couplers_BVALID;
  S_AXI_rdata <= m05_couplers_to_m05_couplers_RDATA;
  S_AXI_rid <= m05_couplers_to_m05_couplers_RID;
  S_AXI_rlast <= m05_couplers_to_m05_couplers_RLAST;
  S_AXI_rresp <= m05_couplers_to_m05_couplers_RRESP;
  S_AXI_rvalid <= m05_couplers_to_m05_couplers_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_couplers_WREADY;
  m05_couplers_to_m05_couplers_ARADDR <= S_AXI_araddr;
  m05_couplers_to_m05_couplers_ARBURST <= S_AXI_arburst;
  m05_couplers_to_m05_couplers_ARCACHE <= S_AXI_arcache;
  m05_couplers_to_m05_couplers_ARID <= S_AXI_arid;
  m05_couplers_to_m05_couplers_ARLEN <= S_AXI_arlen;
  m05_couplers_to_m05_couplers_ARLOCK <= S_AXI_arlock;
  m05_couplers_to_m05_couplers_ARPROT <= S_AXI_arprot;
  m05_couplers_to_m05_couplers_ARQOS <= S_AXI_arqos;
  m05_couplers_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_couplers_to_m05_couplers_ARREGION <= S_AXI_arregion;
  m05_couplers_to_m05_couplers_ARSIZE <= S_AXI_arsize;
  m05_couplers_to_m05_couplers_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_couplers_AWADDR <= S_AXI_awaddr;
  m05_couplers_to_m05_couplers_AWBURST <= S_AXI_awburst;
  m05_couplers_to_m05_couplers_AWCACHE <= S_AXI_awcache;
  m05_couplers_to_m05_couplers_AWID <= S_AXI_awid;
  m05_couplers_to_m05_couplers_AWLEN <= S_AXI_awlen;
  m05_couplers_to_m05_couplers_AWLOCK <= S_AXI_awlock;
  m05_couplers_to_m05_couplers_AWPROT <= S_AXI_awprot;
  m05_couplers_to_m05_couplers_AWQOS <= S_AXI_awqos;
  m05_couplers_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_couplers_to_m05_couplers_AWREGION <= S_AXI_awregion;
  m05_couplers_to_m05_couplers_AWSIZE <= S_AXI_awsize;
  m05_couplers_to_m05_couplers_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_couplers_BID <= M_AXI_bid;
  m05_couplers_to_m05_couplers_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_couplers_BRESP <= M_AXI_bresp;
  m05_couplers_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_couplers_to_m05_couplers_RDATA <= M_AXI_rdata;
  m05_couplers_to_m05_couplers_RID <= M_AXI_rid;
  m05_couplers_to_m05_couplers_RLAST <= M_AXI_rlast;
  m05_couplers_to_m05_couplers_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_couplers_RRESP <= M_AXI_rresp;
  m05_couplers_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_couplers_to_m05_couplers_WDATA <= S_AXI_wdata;
  m05_couplers_to_m05_couplers_WLAST <= S_AXI_wlast;
  m05_couplers_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_m05_couplers_WSTRB <= S_AXI_wstrb;
  m05_couplers_to_m05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_1EWAU8 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_1EWAU8;

architecture STRUCTURE of m06_couplers_imp_1EWAU8 is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARBURST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARCACHE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARLEN : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARLOCK : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARPROT : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARQOS : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARREGION : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARSIZE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWBURST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWCACHE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWLEN : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWLOCK : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWPROT : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWQOS : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWREGION : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWSIZE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RLAST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WLAST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m06_couplers_to_m06_couplers_ARADDR;
  M_AXI_arburst <= m06_couplers_to_m06_couplers_ARBURST;
  M_AXI_arcache <= m06_couplers_to_m06_couplers_ARCACHE;
  M_AXI_arid <= m06_couplers_to_m06_couplers_ARID;
  M_AXI_arlen <= m06_couplers_to_m06_couplers_ARLEN;
  M_AXI_arlock <= m06_couplers_to_m06_couplers_ARLOCK;
  M_AXI_arprot <= m06_couplers_to_m06_couplers_ARPROT;
  M_AXI_arqos <= m06_couplers_to_m06_couplers_ARQOS;
  M_AXI_arregion <= m06_couplers_to_m06_couplers_ARREGION;
  M_AXI_arsize <= m06_couplers_to_m06_couplers_ARSIZE;
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr <= m06_couplers_to_m06_couplers_AWADDR;
  M_AXI_awburst <= m06_couplers_to_m06_couplers_AWBURST;
  M_AXI_awcache <= m06_couplers_to_m06_couplers_AWCACHE;
  M_AXI_awid <= m06_couplers_to_m06_couplers_AWID;
  M_AXI_awlen <= m06_couplers_to_m06_couplers_AWLEN;
  M_AXI_awlock <= m06_couplers_to_m06_couplers_AWLOCK;
  M_AXI_awprot <= m06_couplers_to_m06_couplers_AWPROT;
  M_AXI_awqos <= m06_couplers_to_m06_couplers_AWQOS;
  M_AXI_awregion <= m06_couplers_to_m06_couplers_AWREGION;
  M_AXI_awsize <= m06_couplers_to_m06_couplers_AWSIZE;
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata <= m06_couplers_to_m06_couplers_WDATA;
  M_AXI_wlast <= m06_couplers_to_m06_couplers_WLAST;
  M_AXI_wstrb <= m06_couplers_to_m06_couplers_WSTRB;
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bid <= m06_couplers_to_m06_couplers_BID;
  S_AXI_bresp <= m06_couplers_to_m06_couplers_BRESP;
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata <= m06_couplers_to_m06_couplers_RDATA;
  S_AXI_rid <= m06_couplers_to_m06_couplers_RID;
  S_AXI_rlast <= m06_couplers_to_m06_couplers_RLAST;
  S_AXI_rresp <= m06_couplers_to_m06_couplers_RRESP;
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR <= S_AXI_araddr;
  m06_couplers_to_m06_couplers_ARBURST <= S_AXI_arburst;
  m06_couplers_to_m06_couplers_ARCACHE <= S_AXI_arcache;
  m06_couplers_to_m06_couplers_ARID <= S_AXI_arid;
  m06_couplers_to_m06_couplers_ARLEN <= S_AXI_arlen;
  m06_couplers_to_m06_couplers_ARLOCK <= S_AXI_arlock;
  m06_couplers_to_m06_couplers_ARPROT <= S_AXI_arprot;
  m06_couplers_to_m06_couplers_ARQOS <= S_AXI_arqos;
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARREGION <= S_AXI_arregion;
  m06_couplers_to_m06_couplers_ARSIZE <= S_AXI_arsize;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR <= S_AXI_awaddr;
  m06_couplers_to_m06_couplers_AWBURST <= S_AXI_awburst;
  m06_couplers_to_m06_couplers_AWCACHE <= S_AXI_awcache;
  m06_couplers_to_m06_couplers_AWID <= S_AXI_awid;
  m06_couplers_to_m06_couplers_AWLEN <= S_AXI_awlen;
  m06_couplers_to_m06_couplers_AWLOCK <= S_AXI_awlock;
  m06_couplers_to_m06_couplers_AWPROT <= S_AXI_awprot;
  m06_couplers_to_m06_couplers_AWQOS <= S_AXI_awqos;
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWREGION <= S_AXI_awregion;
  m06_couplers_to_m06_couplers_AWSIZE <= S_AXI_awsize;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BID <= M_AXI_bid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP <= M_AXI_bresp;
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA <= M_AXI_rdata;
  m06_couplers_to_m06_couplers_RID <= M_AXI_rid;
  m06_couplers_to_m06_couplers_RLAST <= M_AXI_rlast;
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP <= M_AXI_rresp;
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA <= S_AXI_wdata;
  m06_couplers_to_m06_couplers_WLAST <= S_AXI_wlast;
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WSTRB <= S_AXI_wstrb;
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1T0A0OX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m07_couplers_imp_1T0A0OX;

architecture STRUCTURE of m07_couplers_imp_1T0A0OX is
  component design_2_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_2_auto_pc_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m07_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m07_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m07_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m07_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m07_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m07_couplers_WVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m07_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m07_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m07_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m07_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m07_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m07_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m07_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m07_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m07_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m07_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m07_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m07_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m07_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m07_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m07_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m07_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m07_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m07_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m07_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m07_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m07_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= m07_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m07_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m07_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= m07_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m07_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m07_couplers_to_auto_pc_WREADY;
  auto_pc_to_m07_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m07_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m07_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m07_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m07_couplers_WREADY <= M_AXI_wready;
  m07_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m07_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m07_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m07_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m07_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m07_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m07_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m07_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m07_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m07_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m07_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m07_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m07_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m07_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m07_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m07_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m07_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m07_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m07_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m07_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m07_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m07_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m07_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m07_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_2_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m07_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m07_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m07_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m07_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m07_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m07_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m07_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m07_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m07_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m07_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m07_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m07_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m07_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m07_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m07_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m07_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m07_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m07_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m07_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => m07_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => m07_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m07_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m07_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m07_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m07_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m07_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m07_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m07_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m07_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m07_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m07_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => m07_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => m07_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m07_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m07_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m07_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m07_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m07_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m07_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m07_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => m07_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => m07_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m07_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m07_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m07_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => m07_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => m07_couplers_to_auto_pc_RLAST,
      s_axi_rready => m07_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m07_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m07_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m07_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m07_couplers_to_auto_pc_WLAST,
      s_axi_wready => m07_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m07_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m07_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_7TRM95 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m08_couplers_imp_7TRM95;

architecture STRUCTURE of m08_couplers_imp_7TRM95 is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m08_couplers_to_m08_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m08_couplers_to_m08_couplers_ARLOCK : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m08_couplers_to_m08_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m08_couplers_to_m08_couplers_AWLOCK : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m08_couplers_to_m08_couplers_RLAST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_WLAST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m08_couplers_to_m08_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m08_couplers_to_m08_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m08_couplers_to_m08_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(11 downto 0) <= m08_couplers_to_m08_couplers_ARID(11 downto 0);
  M_AXI_arlen(7 downto 0) <= m08_couplers_to_m08_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m08_couplers_to_m08_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m08_couplers_to_m08_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m08_couplers_to_m08_couplers_ARQOS(3 downto 0);
  M_AXI_arregion(3 downto 0) <= m08_couplers_to_m08_couplers_ARREGION(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m08_couplers_to_m08_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m08_couplers_to_m08_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m08_couplers_to_m08_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m08_couplers_to_m08_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m08_couplers_to_m08_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(11 downto 0) <= m08_couplers_to_m08_couplers_AWID(11 downto 0);
  M_AXI_awlen(7 downto 0) <= m08_couplers_to_m08_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m08_couplers_to_m08_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m08_couplers_to_m08_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m08_couplers_to_m08_couplers_AWQOS(3 downto 0);
  M_AXI_awregion(3 downto 0) <= m08_couplers_to_m08_couplers_AWREGION(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m08_couplers_to_m08_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m08_couplers_to_m08_couplers_AWVALID;
  M_AXI_bready <= m08_couplers_to_m08_couplers_BREADY;
  M_AXI_rready <= m08_couplers_to_m08_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m08_couplers_to_m08_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m08_couplers_to_m08_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m08_couplers_to_m08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m08_couplers_to_m08_couplers_WVALID;
  S_AXI_arready <= m08_couplers_to_m08_couplers_ARREADY;
  S_AXI_awready <= m08_couplers_to_m08_couplers_AWREADY;
  S_AXI_bid(11 downto 0) <= m08_couplers_to_m08_couplers_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m08_couplers_to_m08_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m08_couplers_to_m08_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m08_couplers_to_m08_couplers_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m08_couplers_to_m08_couplers_RID(11 downto 0);
  S_AXI_rlast <= m08_couplers_to_m08_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m08_couplers_to_m08_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m08_couplers_to_m08_couplers_RVALID;
  S_AXI_wready <= m08_couplers_to_m08_couplers_WREADY;
  m08_couplers_to_m08_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m08_couplers_to_m08_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m08_couplers_to_m08_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m08_couplers_to_m08_couplers_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m08_couplers_to_m08_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m08_couplers_to_m08_couplers_ARLOCK <= S_AXI_arlock;
  m08_couplers_to_m08_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m08_couplers_to_m08_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m08_couplers_to_m08_couplers_ARREADY <= M_AXI_arready;
  m08_couplers_to_m08_couplers_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m08_couplers_to_m08_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m08_couplers_to_m08_couplers_ARVALID <= S_AXI_arvalid;
  m08_couplers_to_m08_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m08_couplers_to_m08_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m08_couplers_to_m08_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m08_couplers_to_m08_couplers_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m08_couplers_to_m08_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m08_couplers_to_m08_couplers_AWLOCK <= S_AXI_awlock;
  m08_couplers_to_m08_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m08_couplers_to_m08_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m08_couplers_to_m08_couplers_AWREADY <= M_AXI_awready;
  m08_couplers_to_m08_couplers_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m08_couplers_to_m08_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m08_couplers_to_m08_couplers_AWVALID <= S_AXI_awvalid;
  m08_couplers_to_m08_couplers_BID(11 downto 0) <= M_AXI_bid(11 downto 0);
  m08_couplers_to_m08_couplers_BREADY <= S_AXI_bready;
  m08_couplers_to_m08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m08_couplers_to_m08_couplers_BVALID <= M_AXI_bvalid;
  m08_couplers_to_m08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m08_couplers_to_m08_couplers_RID(11 downto 0) <= M_AXI_rid(11 downto 0);
  m08_couplers_to_m08_couplers_RLAST <= M_AXI_rlast;
  m08_couplers_to_m08_couplers_RREADY <= S_AXI_rready;
  m08_couplers_to_m08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m08_couplers_to_m08_couplers_RVALID <= M_AXI_rvalid;
  m08_couplers_to_m08_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m08_couplers_to_m08_couplers_WLAST <= S_AXI_wlast;
  m08_couplers_to_m08_couplers_WREADY <= M_AXI_wready;
  m08_couplers_to_m08_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m08_couplers_to_m08_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_1VJB6H4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m09_couplers_imp_1VJB6H4;

architecture STRUCTURE of m09_couplers_imp_1VJB6H4 is
  signal m09_couplers_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m09_couplers_to_m09_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m09_couplers_to_m09_couplers_ARLOCK : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_ARREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_couplers_ARVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m09_couplers_to_m09_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m09_couplers_to_m09_couplers_AWLOCK : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_AWREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_couplers_AWVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m09_couplers_to_m09_couplers_BREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_BVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m09_couplers_to_m09_couplers_RLAST : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_RVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_WLAST : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m09_couplers_to_m09_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m09_couplers_to_m09_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m09_couplers_to_m09_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(11 downto 0) <= m09_couplers_to_m09_couplers_ARID(11 downto 0);
  M_AXI_arlen(7 downto 0) <= m09_couplers_to_m09_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m09_couplers_to_m09_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m09_couplers_to_m09_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m09_couplers_to_m09_couplers_ARQOS(3 downto 0);
  M_AXI_arregion(3 downto 0) <= m09_couplers_to_m09_couplers_ARREGION(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m09_couplers_to_m09_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m09_couplers_to_m09_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m09_couplers_to_m09_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m09_couplers_to_m09_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m09_couplers_to_m09_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(11 downto 0) <= m09_couplers_to_m09_couplers_AWID(11 downto 0);
  M_AXI_awlen(7 downto 0) <= m09_couplers_to_m09_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m09_couplers_to_m09_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m09_couplers_to_m09_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m09_couplers_to_m09_couplers_AWQOS(3 downto 0);
  M_AXI_awregion(3 downto 0) <= m09_couplers_to_m09_couplers_AWREGION(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m09_couplers_to_m09_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m09_couplers_to_m09_couplers_AWVALID;
  M_AXI_bready <= m09_couplers_to_m09_couplers_BREADY;
  M_AXI_rready <= m09_couplers_to_m09_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m09_couplers_to_m09_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m09_couplers_to_m09_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m09_couplers_to_m09_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m09_couplers_to_m09_couplers_WVALID;
  S_AXI_arready <= m09_couplers_to_m09_couplers_ARREADY;
  S_AXI_awready <= m09_couplers_to_m09_couplers_AWREADY;
  S_AXI_bid(11 downto 0) <= m09_couplers_to_m09_couplers_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m09_couplers_to_m09_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m09_couplers_to_m09_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m09_couplers_to_m09_couplers_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m09_couplers_to_m09_couplers_RID(11 downto 0);
  S_AXI_rlast <= m09_couplers_to_m09_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m09_couplers_to_m09_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m09_couplers_to_m09_couplers_RVALID;
  S_AXI_wready <= m09_couplers_to_m09_couplers_WREADY;
  m09_couplers_to_m09_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m09_couplers_to_m09_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m09_couplers_to_m09_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m09_couplers_to_m09_couplers_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m09_couplers_to_m09_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m09_couplers_to_m09_couplers_ARLOCK <= S_AXI_arlock;
  m09_couplers_to_m09_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m09_couplers_to_m09_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m09_couplers_to_m09_couplers_ARREADY <= M_AXI_arready;
  m09_couplers_to_m09_couplers_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m09_couplers_to_m09_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m09_couplers_to_m09_couplers_ARVALID <= S_AXI_arvalid;
  m09_couplers_to_m09_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m09_couplers_to_m09_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m09_couplers_to_m09_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m09_couplers_to_m09_couplers_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m09_couplers_to_m09_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m09_couplers_to_m09_couplers_AWLOCK <= S_AXI_awlock;
  m09_couplers_to_m09_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m09_couplers_to_m09_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m09_couplers_to_m09_couplers_AWREADY <= M_AXI_awready;
  m09_couplers_to_m09_couplers_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m09_couplers_to_m09_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m09_couplers_to_m09_couplers_AWVALID <= S_AXI_awvalid;
  m09_couplers_to_m09_couplers_BID(11 downto 0) <= M_AXI_bid(11 downto 0);
  m09_couplers_to_m09_couplers_BREADY <= S_AXI_bready;
  m09_couplers_to_m09_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m09_couplers_to_m09_couplers_BVALID <= M_AXI_bvalid;
  m09_couplers_to_m09_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m09_couplers_to_m09_couplers_RID(11 downto 0) <= M_AXI_rid(11 downto 0);
  m09_couplers_to_m09_couplers_RLAST <= M_AXI_rlast;
  m09_couplers_to_m09_couplers_RREADY <= S_AXI_rready;
  m09_couplers_to_m09_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m09_couplers_to_m09_couplers_RVALID <= M_AXI_rvalid;
  m09_couplers_to_m09_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m09_couplers_to_m09_couplers_WLAST <= S_AXI_wlast;
  m09_couplers_to_m09_couplers_WREADY <= M_AXI_wready;
  m09_couplers_to_m09_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m09_couplers_to_m09_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m10_couplers_imp_1P6RBCT is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m10_couplers_imp_1P6RBCT;

architecture STRUCTURE of m10_couplers_imp_1P6RBCT is
  component design_2_auto_pc_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_2_auto_pc_3;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m10_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m10_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m10_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m10_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m10_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m10_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m10_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m10_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m10_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m10_couplers_WVALID : STD_LOGIC;
  signal m10_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m10_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m10_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m10_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m10_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m10_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m10_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m10_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m10_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m10_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m10_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m10_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m10_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m10_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m10_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m10_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m10_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m10_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m10_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m10_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m10_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m10_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m10_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m10_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m10_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m10_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m10_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m10_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m10_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m10_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m10_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m10_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m10_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= m10_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m10_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m10_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m10_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m10_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= m10_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m10_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m10_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m10_couplers_to_auto_pc_WREADY;
  auto_pc_to_m10_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m10_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m10_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m10_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m10_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m10_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m10_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m10_couplers_WREADY <= M_AXI_wready;
  m10_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m10_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m10_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m10_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m10_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m10_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m10_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m10_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m10_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m10_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m10_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m10_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m10_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m10_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m10_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m10_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m10_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m10_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m10_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m10_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m10_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m10_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m10_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m10_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m10_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m10_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m10_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m10_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_2_auto_pc_3
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m10_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m10_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m10_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m10_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m10_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m10_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m10_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m10_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m10_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m10_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m10_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m10_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m10_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m10_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m10_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m10_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m10_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m10_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m10_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m10_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => m10_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => m10_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m10_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m10_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m10_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m10_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m10_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m10_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m10_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m10_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m10_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m10_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => m10_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => m10_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m10_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m10_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m10_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m10_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m10_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m10_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m10_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => m10_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => m10_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m10_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m10_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m10_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => m10_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => m10_couplers_to_auto_pc_RLAST,
      s_axi_rready => m10_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m10_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m10_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m10_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m10_couplers_to_auto_pc_WLAST,
      s_axi_wready => m10_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m10_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m10_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m11_couplers_imp_EDQGGS is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m11_couplers_imp_EDQGGS;

architecture STRUCTURE of m11_couplers_imp_EDQGGS is
  component design_2_auto_pc_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_2_auto_pc_4;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m11_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m11_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m11_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m11_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m11_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m11_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m11_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m11_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m11_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m11_couplers_WVALID : STD_LOGIC;
  signal m11_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m11_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m11_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m11_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m11_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m11_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m11_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m11_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m11_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m11_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m11_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m11_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m11_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m11_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m11_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m11_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m11_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m11_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m11_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m11_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m11_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m11_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m11_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m11_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m11_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m11_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m11_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m11_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m11_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m11_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m11_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m11_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m11_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= m11_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m11_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m11_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m11_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m11_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= m11_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m11_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m11_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m11_couplers_to_auto_pc_WREADY;
  auto_pc_to_m11_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m11_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m11_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m11_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m11_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m11_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m11_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m11_couplers_WREADY <= M_AXI_wready;
  m11_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m11_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m11_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m11_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m11_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m11_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m11_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m11_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m11_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m11_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m11_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m11_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m11_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m11_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m11_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m11_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m11_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m11_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m11_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m11_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m11_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m11_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m11_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m11_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m11_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m11_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m11_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m11_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_2_auto_pc_4
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m11_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m11_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m11_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m11_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m11_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m11_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m11_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m11_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m11_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m11_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m11_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m11_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m11_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m11_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m11_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m11_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m11_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m11_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m11_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m11_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => m11_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => m11_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m11_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m11_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m11_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m11_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m11_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m11_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m11_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m11_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m11_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m11_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => m11_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => m11_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m11_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m11_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m11_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m11_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m11_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m11_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m11_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => m11_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => m11_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m11_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m11_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m11_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => m11_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => m11_couplers_to_auto_pc_RLAST,
      s_axi_rready => m11_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m11_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m11_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m11_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m11_couplers_to_auto_pc_WLAST,
      s_axi_wready => m11_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m11_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m11_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1V8SEG7 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1V8SEG7;

architecture STRUCTURE of s00_couplers_imp_1V8SEG7 is
  component design_2_auto_pc_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_2_auto_pc_5;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(11 downto 0) <= auto_pc_to_s00_couplers_ARID(11 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(11 downto 0) <= auto_pc_to_s00_couplers_AWID(11 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BID(11 downto 0) <= M_AXI_bid(11 downto 0);
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RID(11 downto 0) <= M_AXI_rid(11 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_2_auto_pc_5
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => auto_pc_to_s00_couplers_ARID(11 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => auto_pc_to_s00_couplers_AWID(11 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bid(11 downto 0) => auto_pc_to_s00_couplers_BID(11 downto 0),
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => auto_pc_to_s00_couplers_RID(11 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity timestamp_imp_1DCZJXW is
  port (
    FIFOMGR_CTRL_REG : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_AEMPTY : in STD_LOGIC;
    FIFO_AFULL : in STD_LOGIC;
    FIFO_CLR : out STD_LOGIC;
    FIFO_DATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_EMPTY : in STD_LOGIC;
    FIFO_FULL : in STD_LOGIC;
    FIFO_WE : out STD_LOGIC;
    In0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    threshold : in STD_LOGIC_VECTOR ( 31 downto 0 );
    trigger : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tsf : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tss : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end timestamp_imp_1DCZJXW;

architecture STRUCTURE of timestamp_imp_1DCZJXW is
  component design_2_FIFOMGR_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    CTRL_REG : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TS : in STD_LOGIC;
    LT : in STD_LOGIC;
    TSS : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TSF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_DIN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FIFO_AFULL : in STD_LOGIC;
    FIFO_FULL : in STD_LOGIC;
    FIFO_AEMPTY : in STD_LOGIC;
    FIFO_EMPTY : in STD_LOGIC;
    FIFO_DATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_WE : out STD_LOGIC;
    FIFO_CLR : out STD_LOGIC
  );
  end component design_2_FIFOMGR_0_0;
  component design_2_ctrl_reg_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_ctrl_reg_0;
  component design_2_ctrl_reg1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_ctrl_reg1_0;
  component design_2_ctrl_reg2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_2_ctrl_reg2_0;
  component design_2_mstrigger_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en : in STD_LOGIC;
    threshold : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TS : out STD_LOGIC;
    LAT : out STD_LOGIC
  );
  end component design_2_mstrigger_0_0;
  component design_2_timer_0_0 is
  port (
    sclk : in STD_LOGIC;
    fclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    st : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ft : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_2_timer_0_0;
  component design_2_timestamp_1_0 is
  port (
    fclk : in STD_LOGIC;
    sclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clear : in STD_LOGIC;
    trig : in STD_LOGIC;
    latency : in STD_LOGIC;
    tss : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tsf : out STD_LOGIC_VECTOR ( 31 downto 0 );
    trig_signal : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_2_timestamp_1_0;
  component design_2_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component design_2_xlconcat_0_1;
  component design_2_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component design_2_xlconcat_1_0;
  signal FIFOMGR_0_FIFO_CLR : STD_LOGIC;
  signal FIFOMGR_0_FIFO_DATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal FIFOMGR_0_FIFO_WE : STD_LOGIC;
  signal FIFOMGR_CTRL_REG_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal FIFO_AEMPTY_1 : STD_LOGIC;
  signal FIFO_AFULL_1 : STD_LOGIC;
  signal FIFO_EMPTY_1 : STD_LOGIC;
  signal FIFO_FULL_1 : STD_LOGIC;
  signal In0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal In1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal In2_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal In3_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Net : STD_LOGIC;
  signal ctrl_reg1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ctrl_reg2_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ctrl_reg_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fclk_1 : STD_LOGIC;
  signal mstrigger_0_LAT : STD_LOGIC;
  signal mstrigger_0_TS : STD_LOGIC;
  signal sclk_1 : STD_LOGIC;
  signal threshold_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timer_0_ft : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timer_0_st : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timestamp_1_trig_signal : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timestamp_1_tsf : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timestamp_1_tss : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  FIFOMGR_CTRL_REG_1(31 downto 0) <= FIFOMGR_CTRL_REG(31 downto 0);
  FIFO_AEMPTY_1 <= FIFO_AEMPTY;
  FIFO_AFULL_1 <= FIFO_AFULL;
  FIFO_CLR <= FIFOMGR_0_FIFO_CLR;
  FIFO_DATA(31 downto 0) <= FIFOMGR_0_FIFO_DATA(31 downto 0);
  FIFO_EMPTY_1 <= FIFO_EMPTY;
  FIFO_FULL_1 <= FIFO_FULL;
  FIFO_WE <= FIFOMGR_0_FIFO_WE;
  In0_1(31 downto 0) <= In0(31 downto 0);
  In1_1(31 downto 0) <= In1(31 downto 0);
  In2_1(31 downto 0) <= In2(31 downto 0);
  In3_1(31 downto 0) <= In3(31 downto 0);
  Net <= rst;
  ctrl_reg_1(31 downto 0) <= ctrl_reg(31 downto 0);
  din_1(15 downto 0) <= din(15 downto 0);
  fclk_1 <= fclk;
  sclk_1 <= sclk;
  threshold_1(31 downto 0) <= threshold(31 downto 0);
  trigger(31 downto 0) <= timestamp_1_trig_signal(31 downto 0);
  tsf(31 downto 0) <= timestamp_1_tsf(31 downto 0);
  tss(31 downto 0) <= timestamp_1_tss(31 downto 0);
FIFOMGR_0: component design_2_FIFOMGR_0_0
     port map (
      ADC_DIN(15 downto 0) => din_1(15 downto 0),
      CLK => fclk_1,
      CTRL_REG(31 downto 0) => FIFOMGR_CTRL_REG_1(31 downto 0),
      FIFO_AEMPTY => FIFO_AEMPTY_1,
      FIFO_AFULL => FIFO_AFULL_1,
      FIFO_CLR => FIFOMGR_0_FIFO_CLR,
      FIFO_DATA(31 downto 0) => FIFOMGR_0_FIFO_DATA(31 downto 0),
      FIFO_EMPTY => FIFO_EMPTY_1,
      FIFO_FULL => FIFO_FULL_1,
      FIFO_WE => FIFOMGR_0_FIFO_WE,
      LT => mstrigger_0_LAT,
      RST => Net,
      TS => mstrigger_0_TS,
      TSF(31 downto 0) => timer_0_ft(31 downto 0),
      TSS(31 downto 0) => timer_0_st(31 downto 0)
    );
ctrl_reg_RnM: component design_2_ctrl_reg_0
     port map (
      Din(31 downto 0) => ctrl_reg_1(31 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
ctrl_reg1: component design_2_ctrl_reg1_0
     port map (
      Din(31 downto 0) => ctrl_reg_1(31 downto 0),
      Dout(0) => ctrl_reg1_Dout(0)
    );
ctrl_reg2: component design_2_ctrl_reg2_0
     port map (
      Din(31 downto 0) => threshold_1(31 downto 0),
      Dout(7 downto 0) => ctrl_reg2_Dout(7 downto 0)
    );
mstrigger_0: component design_2_mstrigger_0_0
     port map (
      LAT => mstrigger_0_LAT,
      TS => mstrigger_0_TS,
      clk => fclk_1,
      din(15 downto 0) => din_1(15 downto 0),
      en => xlslice_0_Dout(0),
      rst => Net,
      threshold(7 downto 0) => ctrl_reg2_Dout(7 downto 0)
    );
timer_0: component design_2_timer_0_0
     port map (
      fclk => fclk_1,
      ft(31 downto 0) => timer_0_ft(31 downto 0),
      rst => Net,
      sclk => sclk_1,
      st(31 downto 0) => timer_0_st(31 downto 0)
    );
timestamp_1: component design_2_timestamp_1_0
     port map (
      clear => ctrl_reg1_Dout(0),
      fclk => fclk_1,
      latency => mstrigger_0_LAT,
      rst => Net,
      sclk => sclk_1,
      trig => mstrigger_0_TS,
      trig_signal(31 downto 0) => timestamp_1_trig_signal(31 downto 0),
      tsf(31 downto 0) => timestamp_1_tsf(31 downto 0),
      tss(31 downto 0) => timestamp_1_tss(31 downto 0)
    );
xlconcat_0: component design_2_xlconcat_0_1
     port map (
      In0(31 downto 0) => In0_1(31 downto 0),
      In1(31 downto 0) => In1_1(31 downto 0),
      dout(63 downto 0) => xlconcat_0_dout(63 downto 0)
    );
xlconcat_1: component design_2_xlconcat_1_0
     port map (
      In0(31 downto 0) => In2_1(31 downto 0),
      In1(31 downto 0) => In3_1(31 downto 0),
      dout(63 downto 0) => xlconcat_1_dout(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Comblock_PL_imp_14EJTFU is
  port (
    CLK : in STD_LOGIC;
    CTRL : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DEVICE : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FIFOMGR_CTRL_REG : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_AEMPTY : in STD_LOGIC;
    FIFO_AFULL : in STD_LOGIC;
    FIFO_CLR : out STD_LOGIC;
    FIFO_DATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_EMPTY : in STD_LOGIC;
    FIFO_FULL : in STD_LOGIC;
    FIFO_WE : out STD_LOGIC;
    In0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    N1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RLED_0 : out STD_LOGIC;
    RST : in STD_LOGIC;
    SCK_0 : out STD_LOGIC;
    SDATA_0 : out STD_LOGIC;
    SS_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_arready : out STD_LOGIC;
    S_AXI_LITE_arvalid : in STD_LOGIC;
    S_AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_awready : out STD_LOGIC;
    S_AXI_LITE_awvalid : in STD_LOGIC;
    S_AXI_LITE_bready : in STD_LOGIC;
    S_AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_bvalid : out STD_LOGIC;
    S_AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_rready : in STD_LOGIC;
    S_AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_rvalid : out STD_LOGIC;
    S_AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_wready : out STD_LOGIC;
    S_AXI_LITE_wvalid : in STD_LOGIC;
    addb_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ctrl_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl_reg_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    curr_cycle_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_state_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dinb_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    done_0 : out STD_LOGIC;
    doutb_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    max_cycles_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    n : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rtc_1hz : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arready : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awready : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rready : in STD_LOGIC;
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC;
    threshold : in STD_LOGIC_VECTOR ( 31 downto 0 );
    trigger : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tsf : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tss : out STD_LOGIC_VECTOR ( 31 downto 0 );
    web_0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Comblock_PL_imp_14EJTFU;

architecture STRUCTURE of Comblock_PL_imp_14EJTFU is
  component design_2_ADC_Decimator_0_0 is
  port (
    clk_in : in STD_LOGIC;
    resetn : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    N : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_out : out STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Decim_data_valid : out STD_LOGIC;
    D_sum : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_2_ADC_Decimator_0_0;
  component design_2_Hist_Gen_Block_0_0 is
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
  end component design_2_Hist_Gen_Block_0_0;
  component design_2_DAC_CTRL1v1_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    DATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CTRL : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DEVICE : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RLED : out STD_LOGIC;
    SCK : out STD_LOGIC;
    SDATA : out STD_LOGIC;
    LOADDAC : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_DAC_CTRL1v1_0_0;
  signal CLK_1 : STD_LOGIC;
  signal CTRL_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC;
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WVALID : STD_LOGIC;
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARVALID : STD_LOGIC;
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWVALID : STD_LOGIC;
  signal Conn2_BREADY : STD_LOGIC;
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RREADY : STD_LOGIC;
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC;
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC;
  signal Conn3_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_AWVALID : STD_LOGIC;
  signal Conn3_BREADY : STD_LOGIC;
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC;
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn3_WLAST : STD_LOGIC;
  signal Conn3_WREADY : STD_LOGIC;
  signal Conn3_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn3_WVALID : STD_LOGIC;
  signal DAC_CTRL1v1_0_RLED : STD_LOGIC;
  signal DAC_CTRL1v1_0_SCK : STD_LOGIC;
  signal DAC_CTRL1v1_0_SDATA : STD_LOGIC;
  signal DAC_CTRL1v1_0_SS : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DATA_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DEVICE_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DMA_Osciloscope_debug_state_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DMA_Osciloscope_s2mm_introut : STD_LOGIC;
  signal Din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal FIFOMGR_CTRL_REG_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal FIFO_AEMPTY_1 : STD_LOGIC;
  signal FIFO_AFULL_1 : STD_LOGIC;
  signal FIFO_EMPTY_1 : STD_LOGIC;
  signal FIFO_FULL_1 : STD_LOGIC;
  signal Hist_Gen_Block_0_addb_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Hist_Gen_Block_0_curr_cycle_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Hist_Gen_Block_0_dinb_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Hist_Gen_Block_0_done_0 : STD_LOGIC;
  signal Hist_Gen_Block_0_web_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal In1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal In2_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal In3_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal N1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ctrl_reg_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ctrl_reg_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_valid_1 : STD_LOGIC;
  signal din_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal doutb_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m_axi_s2mm_aclk_1 : STD_LOGIC;
  signal max_cycles_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_1_peripheral_aresetn : STD_LOGIC;
  signal rtc_1hz_1 : STD_LOGIC;
  signal threshold_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timestamp_FIFO_CLR : STD_LOGIC;
  signal timestamp_FIFO_DATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timestamp_FIFO_WE : STD_LOGIC;
  signal timestamp_trigger : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timestamp_tsf : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timestamp_tss : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ADC_Decimator_0_clk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_ADC_Decimator_0_Dout_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_DAC_CTRL1v1_0_LOADDAC_UNCONNECTED : STD_LOGIC;
  signal NLW_Hist_Gen_Block_0_enb_0_UNCONNECTED : STD_LOGIC;
  signal NLW_Hist_Gen_Block_0_rdy_0_0_UNCONNECTED : STD_LOGIC;
  signal NLW_Hist_Gen_Block_0_Dout_clr_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  CLK_1 <= CLK;
  CTRL_1(31 downto 0) <= CTRL(31 downto 0);
  Conn1_ARADDR(31 downto 0) <= S_AXI_LITE_araddr(31 downto 0);
  Conn1_ARVALID <= S_AXI_LITE_arvalid;
  Conn1_AWADDR(31 downto 0) <= S_AXI_LITE_awaddr(31 downto 0);
  Conn1_AWVALID <= S_AXI_LITE_awvalid;
  Conn1_BREADY <= S_AXI_LITE_bready;
  Conn1_RREADY <= S_AXI_LITE_rready;
  Conn1_WDATA(31 downto 0) <= S_AXI_LITE_wdata(31 downto 0);
  Conn1_WVALID <= S_AXI_LITE_wvalid;
  Conn2_ARADDR(31 downto 0) <= s00_axi_araddr(31 downto 0);
  Conn2_ARPROT(2 downto 0) <= s00_axi_arprot(2 downto 0);
  Conn2_ARVALID <= s00_axi_arvalid;
  Conn2_AWADDR(31 downto 0) <= s00_axi_awaddr(31 downto 0);
  Conn2_AWPROT(2 downto 0) <= s00_axi_awprot(2 downto 0);
  Conn2_AWVALID <= s00_axi_awvalid;
  Conn2_BREADY <= s00_axi_bready;
  Conn2_RREADY <= s00_axi_rready;
  Conn2_WDATA(31 downto 0) <= s00_axi_wdata(31 downto 0);
  Conn2_WSTRB(3 downto 0) <= s00_axi_wstrb(3 downto 0);
  Conn2_WVALID <= s00_axi_wvalid;
  Conn3_AWREADY <= M00_AXI_awready;
  Conn3_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  Conn3_BVALID <= M00_AXI_bvalid;
  Conn3_WREADY <= M00_AXI_wready;
  DATA_1(31 downto 0) <= DATA(31 downto 0);
  DEVICE_1(31 downto 0) <= DEVICE(31 downto 0);
  Din_1(15 downto 0) <= Din(15 downto 0);
  FIFOMGR_CTRL_REG_1(31 downto 0) <= FIFOMGR_CTRL_REG(31 downto 0);
  FIFO_AEMPTY_1 <= FIFO_AEMPTY;
  FIFO_AFULL_1 <= FIFO_AFULL;
  FIFO_CLR <= timestamp_FIFO_CLR;
  FIFO_DATA(31 downto 0) <= timestamp_FIFO_DATA(31 downto 0);
  FIFO_EMPTY_1 <= FIFO_EMPTY;
  FIFO_FULL_1 <= FIFO_FULL;
  FIFO_WE <= timestamp_FIFO_WE;
  In0_1(31 downto 0) <= In0(31 downto 0);
  In1_1(31 downto 0) <= In1(31 downto 0);
  In2_1(31 downto 0) <= In2(31 downto 0);
  In3_1(31 downto 0) <= In3(31 downto 0);
  M00_AXI_awaddr(31 downto 0) <= Conn3_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= Conn3_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= Conn3_AWCACHE(3 downto 0);
  M00_AXI_awlen(3 downto 0) <= Conn3_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= Conn3_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= Conn3_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= Conn3_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= Conn3_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= Conn3_AWVALID;
  M00_AXI_bready <= Conn3_BREADY;
  M00_AXI_wdata(63 downto 0) <= Conn3_WDATA(63 downto 0);
  M00_AXI_wlast <= Conn3_WLAST;
  M00_AXI_wstrb(7 downto 0) <= Conn3_WSTRB(7 downto 0);
  M00_AXI_wvalid <= Conn3_WVALID;
  N1_1(31 downto 0) <= N1(31 downto 0);
  RLED_0 <= DAC_CTRL1v1_0_RLED;
  SCK_0 <= DAC_CTRL1v1_0_SCK;
  SDATA_0 <= DAC_CTRL1v1_0_SDATA;
  SS_0(0) <= DAC_CTRL1v1_0_SS(0);
  S_AXI_LITE_arready <= Conn1_ARREADY;
  S_AXI_LITE_awready <= Conn1_AWREADY;
  S_AXI_LITE_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI_LITE_bvalid <= Conn1_BVALID;
  S_AXI_LITE_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI_LITE_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI_LITE_rvalid <= Conn1_RVALID;
  S_AXI_LITE_wready <= Conn1_WREADY;
  addb_0(15 downto 0) <= Hist_Gen_Block_0_addb_0(15 downto 0);
  ctrl_reg_0_1(31 downto 0) <= ctrl_reg_0(31 downto 0);
  ctrl_reg_1(31 downto 0) <= ctrl_reg(31 downto 0);
  curr_cycle_0(31 downto 0) <= Hist_Gen_Block_0_curr_cycle_0(31 downto 0);
  debug_state_0(1 downto 0) <= DMA_Osciloscope_debug_state_0(1 downto 0);
  dinb_0(31 downto 0) <= Hist_Gen_Block_0_dinb_0(31 downto 0);
  done_0 <= Hist_Gen_Block_0_done_0;
  doutb_0_1(31 downto 0) <= doutb_0(31 downto 0);
  m_axi_s2mm_aclk_1 <= m_axi_s2mm_aclk;
  max_cycles_0_1(31 downto 0) <= max_cycles_0(31 downto 0);
  proc_sys_reset_0_peripheral_aresetn(0) <= s00_axi_aresetn1(0);
  proc_sys_reset_1_peripheral_aresetn <= RST;
  rtc_1hz_1 <= rtc_1hz;
  s00_axi_arready <= Conn2_ARREADY;
  s00_axi_awready <= Conn2_AWREADY;
  s00_axi_bresp(1 downto 0) <= Conn2_BRESP(1 downto 0);
  s00_axi_bvalid <= Conn2_BVALID;
  s00_axi_rdata(31 downto 0) <= Conn2_RDATA(31 downto 0);
  s00_axi_rresp(1 downto 0) <= Conn2_RRESP(1 downto 0);
  s00_axi_rvalid <= Conn2_RVALID;
  s00_axi_wready <= Conn2_WREADY;
  s2mm_introut <= DMA_Osciloscope_s2mm_introut;
  threshold_1(31 downto 0) <= threshold(31 downto 0);
  trigger(31 downto 0) <= timestamp_trigger(31 downto 0);
  tsf(31 downto 0) <= timestamp_tsf(31 downto 0);
  tss(31 downto 0) <= timestamp_tss(31 downto 0);
  web_0(0) <= Hist_Gen_Block_0_web_0(0);
ADC_Decimator_0: component design_2_ADC_Decimator_0_0
     port map (
      D_sum(15 downto 0) => din_2(15 downto 0),
      Decim_data_valid => data_valid_1,
      Din(15 downto 0) => Din_1(15 downto 0),
      Dout(15 downto 0) => NLW_ADC_Decimator_0_Dout_UNCONNECTED(15 downto 0),
      N(15 downto 0) => N1_1(15 downto 0),
      clk_in => CLK_1,
      clk_out => NLW_ADC_Decimator_0_clk_out_UNCONNECTED,
      resetn => proc_sys_reset_1_peripheral_aresetn
    );
DAC_CTRL1v1_0: component design_2_DAC_CTRL1v1_0_0
     port map (
      CLK => CLK_1,
      CTRL(31 downto 0) => CTRL_1(31 downto 0),
      DATA(31 downto 0) => DATA_1(31 downto 0),
      DEVICE(31 downto 0) => DEVICE_1(31 downto 0),
      LOADDAC => NLW_DAC_CTRL1v1_0_LOADDAC_UNCONNECTED,
      RLED => DAC_CTRL1v1_0_RLED,
      RST => proc_sys_reset_1_peripheral_aresetn,
      SCK => DAC_CTRL1v1_0_SCK,
      SDATA => DAC_CTRL1v1_0_SDATA,
      SS(0) => DAC_CTRL1v1_0_SS(0)
    );
DMA_Osciloscope: entity work.DMA_Osciloscope_imp_1LKWGZ
     port map (
      M00_AXI_awaddr(31 downto 0) => Conn3_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => Conn3_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => Conn3_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => Conn3_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => Conn3_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => Conn3_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => Conn3_AWQOS(3 downto 0),
      M00_AXI_awready => Conn3_AWREADY,
      M00_AXI_awsize(2 downto 0) => Conn3_AWSIZE(2 downto 0),
      M00_AXI_awvalid => Conn3_AWVALID,
      M00_AXI_bready => Conn3_BREADY,
      M00_AXI_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      M00_AXI_bvalid => Conn3_BVALID,
      M00_AXI_wdata(63 downto 0) => Conn3_WDATA(63 downto 0),
      M00_AXI_wlast => Conn3_WLAST,
      M00_AXI_wready => Conn3_WREADY,
      M00_AXI_wstrb(7 downto 0) => Conn3_WSTRB(7 downto 0),
      M00_AXI_wvalid => Conn3_WVALID,
      S_AXI_LITE_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      S_AXI_LITE_arready => Conn1_ARREADY,
      S_AXI_LITE_arvalid => Conn1_ARVALID,
      S_AXI_LITE_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      S_AXI_LITE_awready => Conn1_AWREADY,
      S_AXI_LITE_awvalid => Conn1_AWVALID,
      S_AXI_LITE_bready => Conn1_BREADY,
      S_AXI_LITE_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      S_AXI_LITE_bvalid => Conn1_BVALID,
      S_AXI_LITE_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      S_AXI_LITE_rready => Conn1_RREADY,
      S_AXI_LITE_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      S_AXI_LITE_rvalid => Conn1_RVALID,
      S_AXI_LITE_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      S_AXI_LITE_wready => Conn1_WREADY,
      S_AXI_LITE_wvalid => Conn1_WVALID,
      axi_resetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      data_valid => data_valid_1,
      debug_state_0(1 downto 0) => DMA_Osciloscope_debug_state_0(1 downto 0),
      din(15 downto 0) => din_2(15 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk_1,
      m_axi_s2mm_aclk1 => CLK_1,
      resetn => proc_sys_reset_1_peripheral_aresetn,
      s00_axi_araddr(31 downto 0) => Conn2_ARADDR(31 downto 0),
      s00_axi_arprot(2 downto 0) => Conn2_ARPROT(2 downto 0),
      s00_axi_arready => Conn2_ARREADY,
      s00_axi_arvalid => Conn2_ARVALID,
      s00_axi_awaddr(31 downto 0) => Conn2_AWADDR(31 downto 0),
      s00_axi_awprot(2 downto 0) => Conn2_AWPROT(2 downto 0),
      s00_axi_awready => Conn2_AWREADY,
      s00_axi_awvalid => Conn2_AWVALID,
      s00_axi_bready => Conn2_BREADY,
      s00_axi_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      s00_axi_bvalid => Conn2_BVALID,
      s00_axi_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      s00_axi_rready => Conn2_RREADY,
      s00_axi_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      s00_axi_rvalid => Conn2_RVALID,
      s00_axi_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      s00_axi_wready => Conn2_WREADY,
      s00_axi_wstrb(3 downto 0) => Conn2_WSTRB(3 downto 0),
      s00_axi_wvalid => Conn2_WVALID,
      s2mm_introut => DMA_Osciloscope_s2mm_introut
    );
Hist_Gen_Block_0: component design_2_Hist_Gen_Block_0_0
     port map (
      Dout_clr_0(0) => NLW_Hist_Gen_Block_0_Dout_clr_0_UNCONNECTED(0),
      addb_0(15 downto 0) => Hist_Gen_Block_0_addb_0(15 downto 0),
      clk_0 => CLK_1,
      ctrl_reg_0(31 downto 0) => ctrl_reg_0_1(31 downto 0),
      curr_cycle_0(31 downto 0) => Hist_Gen_Block_0_curr_cycle_0(31 downto 0),
      data_valid_0 => data_valid_1,
      dinb_0(31 downto 0) => Hist_Gen_Block_0_dinb_0(31 downto 0),
      done_0 => Hist_Gen_Block_0_done_0,
      doutb_0(31 downto 0) => doutb_0_1(31 downto 0),
      enb_0 => NLW_Hist_Gen_Block_0_enb_0_UNCONNECTED,
      in_addr_0(15 downto 0) => din_2(15 downto 0),
      max_cycles_0(31 downto 0) => max_cycles_0_1(31 downto 0),
      rdy_0_0 => NLW_Hist_Gen_Block_0_rdy_0_0_UNCONNECTED,
      rst_0 => proc_sys_reset_1_peripheral_aresetn,
      web_0(0) => Hist_Gen_Block_0_web_0(0)
    );
timestamp: entity work.timestamp_imp_1DCZJXW
     port map (
      FIFOMGR_CTRL_REG(31 downto 0) => FIFOMGR_CTRL_REG_1(31 downto 0),
      FIFO_AEMPTY => FIFO_AEMPTY_1,
      FIFO_AFULL => FIFO_AFULL_1,
      FIFO_CLR => timestamp_FIFO_CLR,
      FIFO_DATA(31 downto 0) => timestamp_FIFO_DATA(31 downto 0),
      FIFO_EMPTY => FIFO_EMPTY_1,
      FIFO_FULL => FIFO_FULL_1,
      FIFO_WE => timestamp_FIFO_WE,
      In0(31 downto 0) => In0_1(31 downto 0),
      In1(31 downto 0) => In1_1(31 downto 0),
      In2(31 downto 0) => In2_1(31 downto 0),
      In3(31 downto 0) => In3_1(31 downto 0),
      ctrl_reg(31 downto 0) => ctrl_reg_1(31 downto 0),
      din(15 downto 0) => Din_1(15 downto 0),
      fclk => CLK_1,
      rst => proc_sys_reset_1_peripheral_aresetn,
      sclk => rtc_1hz_1,
      threshold(31 downto 0) => threshold_1(31 downto 0),
      trigger(31 downto 0) => timestamp_trigger(31 downto 0),
      tsf(31 downto 0) => timestamp_tsf(31 downto 0),
      tss(31 downto 0) => timestamp_tss(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_processing_system7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC;
    M01_AXI_arburst : out STD_LOGIC;
    M01_AXI_arcache : out STD_LOGIC;
    M01_AXI_arid : out STD_LOGIC;
    M01_AXI_arlen : out STD_LOGIC;
    M01_AXI_arlock : out STD_LOGIC;
    M01_AXI_arprot : out STD_LOGIC;
    M01_AXI_arqos : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arregion : out STD_LOGIC;
    M01_AXI_arsize : out STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC;
    M01_AXI_awburst : out STD_LOGIC;
    M01_AXI_awcache : out STD_LOGIC;
    M01_AXI_awid : out STD_LOGIC;
    M01_AXI_awlen : out STD_LOGIC;
    M01_AXI_awlock : out STD_LOGIC;
    M01_AXI_awprot : out STD_LOGIC;
    M01_AXI_awqos : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awregion : out STD_LOGIC;
    M01_AXI_awsize : out STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC;
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC;
    M01_AXI_rid : in STD_LOGIC;
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC;
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC;
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC;
    M03_AXI_arburst : out STD_LOGIC;
    M03_AXI_arcache : out STD_LOGIC;
    M03_AXI_arid : out STD_LOGIC;
    M03_AXI_arlen : out STD_LOGIC;
    M03_AXI_arlock : out STD_LOGIC;
    M03_AXI_arprot : out STD_LOGIC;
    M03_AXI_arqos : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arregion : out STD_LOGIC;
    M03_AXI_arsize : out STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC;
    M03_AXI_awburst : out STD_LOGIC;
    M03_AXI_awcache : out STD_LOGIC;
    M03_AXI_awid : out STD_LOGIC;
    M03_AXI_awlen : out STD_LOGIC;
    M03_AXI_awlock : out STD_LOGIC;
    M03_AXI_awprot : out STD_LOGIC;
    M03_AXI_awqos : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awregion : out STD_LOGIC;
    M03_AXI_awsize : out STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bid : in STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC;
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC;
    M03_AXI_rid : in STD_LOGIC;
    M03_AXI_rlast : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC;
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC;
    M03_AXI_wlast : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC;
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC;
    M04_AXI_arburst : out STD_LOGIC;
    M04_AXI_arcache : out STD_LOGIC;
    M04_AXI_arid : out STD_LOGIC;
    M04_AXI_arlen : out STD_LOGIC;
    M04_AXI_arlock : out STD_LOGIC;
    M04_AXI_arprot : out STD_LOGIC;
    M04_AXI_arqos : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arregion : out STD_LOGIC;
    M04_AXI_arsize : out STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC;
    M04_AXI_awburst : out STD_LOGIC;
    M04_AXI_awcache : out STD_LOGIC;
    M04_AXI_awid : out STD_LOGIC;
    M04_AXI_awlen : out STD_LOGIC;
    M04_AXI_awlock : out STD_LOGIC;
    M04_AXI_awprot : out STD_LOGIC;
    M04_AXI_awqos : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awregion : out STD_LOGIC;
    M04_AXI_awsize : out STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bid : in STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC;
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC;
    M04_AXI_rid : in STD_LOGIC;
    M04_AXI_rlast : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC;
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC;
    M04_AXI_wlast : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC;
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC;
    M05_AXI_arburst : out STD_LOGIC;
    M05_AXI_arcache : out STD_LOGIC;
    M05_AXI_arid : out STD_LOGIC;
    M05_AXI_arlen : out STD_LOGIC;
    M05_AXI_arlock : out STD_LOGIC;
    M05_AXI_arprot : out STD_LOGIC;
    M05_AXI_arqos : out STD_LOGIC;
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arregion : out STD_LOGIC;
    M05_AXI_arsize : out STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC;
    M05_AXI_awburst : out STD_LOGIC;
    M05_AXI_awcache : out STD_LOGIC;
    M05_AXI_awid : out STD_LOGIC;
    M05_AXI_awlen : out STD_LOGIC;
    M05_AXI_awlock : out STD_LOGIC;
    M05_AXI_awprot : out STD_LOGIC;
    M05_AXI_awqos : out STD_LOGIC;
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awregion : out STD_LOGIC;
    M05_AXI_awsize : out STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bid : in STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC;
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC;
    M05_AXI_rid : in STD_LOGIC;
    M05_AXI_rlast : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC;
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC;
    M05_AXI_wlast : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC;
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC;
    M06_AXI_arburst : out STD_LOGIC;
    M06_AXI_arcache : out STD_LOGIC;
    M06_AXI_arid : out STD_LOGIC;
    M06_AXI_arlen : out STD_LOGIC;
    M06_AXI_arlock : out STD_LOGIC;
    M06_AXI_arprot : out STD_LOGIC;
    M06_AXI_arqos : out STD_LOGIC;
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arregion : out STD_LOGIC;
    M06_AXI_arsize : out STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC;
    M06_AXI_awburst : out STD_LOGIC;
    M06_AXI_awcache : out STD_LOGIC;
    M06_AXI_awid : out STD_LOGIC;
    M06_AXI_awlen : out STD_LOGIC;
    M06_AXI_awlock : out STD_LOGIC;
    M06_AXI_awprot : out STD_LOGIC;
    M06_AXI_awqos : out STD_LOGIC;
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awregion : out STD_LOGIC;
    M06_AXI_awsize : out STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bid : in STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC;
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC;
    M06_AXI_rid : in STD_LOGIC;
    M06_AXI_rlast : in STD_LOGIC;
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC;
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC;
    M06_AXI_wlast : out STD_LOGIC;
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC;
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M08_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M08_AXI_arlock : out STD_LOGIC;
    M08_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M08_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M08_AXI_awlock : out STD_LOGIC;
    M08_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M08_AXI_rlast : in STD_LOGIC;
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wlast : out STD_LOGIC;
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M09_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M09_AXI_arlock : out STD_LOGIC;
    M09_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M09_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M09_AXI_awlock : out STD_LOGIC;
    M09_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M09_AXI_rlast : in STD_LOGIC;
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wlast : out STD_LOGIC;
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC;
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_arready : in STD_LOGIC;
    M10_AXI_arvalid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_awready : in STD_LOGIC;
    M10_AXI_awvalid : out STD_LOGIC;
    M10_AXI_bready : out STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC;
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC;
    M10_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_wvalid : out STD_LOGIC;
    M11_ACLK : in STD_LOGIC;
    M11_ARESETN : in STD_LOGIC;
    M11_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_arready : in STD_LOGIC;
    M11_AXI_arvalid : out STD_LOGIC;
    M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_awready : in STD_LOGIC;
    M11_AXI_awvalid : out STD_LOGIC;
    M11_AXI_bready : out STD_LOGIC;
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_bvalid : in STD_LOGIC;
    M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_rready : out STD_LOGIC;
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rvalid : in STD_LOGIC;
    M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_wready : in STD_LOGIC;
    M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end design_2_processing_system7_0_axi_periph_0;

architecture STRUCTURE of design_2_processing_system7_0_axi_periph_0 is
  component design_2_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 143 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 383 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 383 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 143 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 143 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 383 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 143 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 383 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component design_2_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC;
  signal M07_ACLK_1 : STD_LOGIC;
  signal M07_ARESETN_1 : STD_LOGIC;
  signal M08_ACLK_1 : STD_LOGIC;
  signal M08_ARESETN_1 : STD_LOGIC;
  signal M09_ACLK_1 : STD_LOGIC;
  signal M09_ARESETN_1 : STD_LOGIC;
  signal M10_ACLK_1 : STD_LOGIC;
  signal M10_ARESETN_1 : STD_LOGIC;
  signal M11_ACLK_1 : STD_LOGIC;
  signal M11_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARBURST : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARCACHE : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARID : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARLEN : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARQOS : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARREGION : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARSIZE : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWBURST : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWCACHE : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWID : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWLEN : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWQOS : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWREGION : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWSIZE : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_BID : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_RID : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_RLAST : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_WLAST : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m01_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m02_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m02_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m02_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m02_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m02_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m02_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m02_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m02_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m02_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m02_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARBURST : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARCACHE : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARLEN : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARQOS : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARREGION : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARSIZE : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWBURST : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWCACHE : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWLEN : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWQOS : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWREGION : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWSIZE : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_BID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_RID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_RLAST : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_WLAST : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARBURST : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARCACHE : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARLEN : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARQOS : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARREGION : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARSIZE : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWBURST : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWCACHE : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWLEN : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWQOS : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWREGION : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWSIZE : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_BID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_RID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_RLAST : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_WLAST : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARBURST : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARCACHE : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARID : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARLEN : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARQOS : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARREGION : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARSIZE : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWBURST : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWCACHE : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWID : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWLEN : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWQOS : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWREGION : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWSIZE : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_BID : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_RID : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_RLAST : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_WLAST : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARBURST : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARCACHE : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARLEN : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARQOS : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARREGION : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARSIZE : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWBURST : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWCACHE : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWLEN : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWQOS : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWREGION : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWSIZE : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_BID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_RID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_RLAST : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_WLAST : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m07_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m07_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m07_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m07_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m07_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m07_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m07_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m07_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m07_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m07_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_RLAST : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_WLAST : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_RLAST : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_WLAST : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m11_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m11_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m11_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m11_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m11_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m11_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m11_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m11_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m11_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m11_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal processing_system7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 23 downto 12 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 23 downto 12 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BID : STD_LOGIC;
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m01_couplers_RID : STD_LOGIC;
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARID : STD_LOGIC_VECTOR ( 35 downto 24 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWID : STD_LOGIC_VECTOR ( 35 downto 24 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARID : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal xbar_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWID : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal xbar_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BID : STD_LOGIC;
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m03_couplers_RID : STD_LOGIC;
  signal xbar_to_m03_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARID : STD_LOGIC_VECTOR ( 59 downto 48 );
  signal xbar_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWID : STD_LOGIC_VECTOR ( 59 downto 48 );
  signal xbar_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BID : STD_LOGIC;
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m04_couplers_RID : STD_LOGIC;
  signal xbar_to_m04_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARID : STD_LOGIC_VECTOR ( 71 downto 60 );
  signal xbar_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWID : STD_LOGIC_VECTOR ( 71 downto 60 );
  signal xbar_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BID : STD_LOGIC;
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m05_couplers_RID : STD_LOGIC;
  signal xbar_to_m05_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_ARCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARID : STD_LOGIC_VECTOR ( 83 downto 72 );
  signal xbar_to_m06_couplers_ARLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_ARLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_AWCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWID : STD_LOGIC_VECTOR ( 83 downto 72 );
  signal xbar_to_m06_couplers_AWLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_AWLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BID : STD_LOGIC;
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m06_couplers_RID : STD_LOGIC;
  signal xbar_to_m06_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARBURST : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_ARCACHE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARID : STD_LOGIC_VECTOR ( 95 downto 84 );
  signal xbar_to_m07_couplers_ARLEN : STD_LOGIC_VECTOR ( 63 downto 56 );
  signal xbar_to_m07_couplers_ARLOCK : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARQOS : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_ARREGION : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARSIZE : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWBURST : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_AWCACHE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWID : STD_LOGIC_VECTOR ( 95 downto 84 );
  signal xbar_to_m07_couplers_AWLEN : STD_LOGIC_VECTOR ( 63 downto 56 );
  signal xbar_to_m07_couplers_AWLOCK : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWQOS : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_AWREGION : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWSIZE : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m07_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WLAST : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARBURST : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal xbar_to_m08_couplers_ARCACHE : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_ARID : STD_LOGIC_VECTOR ( 107 downto 96 );
  signal xbar_to_m08_couplers_ARLEN : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal xbar_to_m08_couplers_ARLOCK : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARQOS : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_ARREGION : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_ARSIZE : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWBURST : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal xbar_to_m08_couplers_AWCACHE : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_AWID : STD_LOGIC_VECTOR ( 107 downto 96 );
  signal xbar_to_m08_couplers_AWLEN : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal xbar_to_m08_couplers_AWLOCK : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWQOS : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_AWREGION : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_AWSIZE : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m08_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m08_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WLAST : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_ARBURST : STD_LOGIC_VECTOR ( 19 downto 18 );
  signal xbar_to_m09_couplers_ARCACHE : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_ARID : STD_LOGIC_VECTOR ( 119 downto 108 );
  signal xbar_to_m09_couplers_ARLEN : STD_LOGIC_VECTOR ( 79 downto 72 );
  signal xbar_to_m09_couplers_ARLOCK : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_ARPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_ARQOS : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_ARREGION : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_ARSIZE : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_AWBURST : STD_LOGIC_VECTOR ( 19 downto 18 );
  signal xbar_to_m09_couplers_AWCACHE : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_AWID : STD_LOGIC_VECTOR ( 119 downto 108 );
  signal xbar_to_m09_couplers_AWLEN : STD_LOGIC_VECTOR ( 79 downto 72 );
  signal xbar_to_m09_couplers_AWLOCK : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_AWQOS : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_AWREGION : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_AWSIZE : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m09_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m09_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_WLAST : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_ARBURST : STD_LOGIC_VECTOR ( 21 downto 20 );
  signal xbar_to_m10_couplers_ARCACHE : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_ARID : STD_LOGIC_VECTOR ( 131 downto 120 );
  signal xbar_to_m10_couplers_ARLEN : STD_LOGIC_VECTOR ( 87 downto 80 );
  signal xbar_to_m10_couplers_ARLOCK : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_ARPROT : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_ARQOS : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_ARREGION : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_ARSIZE : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_ARVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_AWBURST : STD_LOGIC_VECTOR ( 21 downto 20 );
  signal xbar_to_m10_couplers_AWCACHE : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_AWID : STD_LOGIC_VECTOR ( 131 downto 120 );
  signal xbar_to_m10_couplers_AWLEN : STD_LOGIC_VECTOR ( 87 downto 80 );
  signal xbar_to_m10_couplers_AWLOCK : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_AWPROT : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_AWQOS : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_AWREGION : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_AWSIZE : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_AWVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m10_couplers_BREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m10_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m10_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m10_couplers_RREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_WLAST : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_WVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_ARBURST : STD_LOGIC_VECTOR ( 23 downto 22 );
  signal xbar_to_m11_couplers_ARCACHE : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_ARID : STD_LOGIC_VECTOR ( 143 downto 132 );
  signal xbar_to_m11_couplers_ARLEN : STD_LOGIC_VECTOR ( 95 downto 88 );
  signal xbar_to_m11_couplers_ARLOCK : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_ARPROT : STD_LOGIC_VECTOR ( 35 downto 33 );
  signal xbar_to_m11_couplers_ARQOS : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_ARREGION : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_ARSIZE : STD_LOGIC_VECTOR ( 35 downto 33 );
  signal xbar_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_AWBURST : STD_LOGIC_VECTOR ( 23 downto 22 );
  signal xbar_to_m11_couplers_AWCACHE : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_AWID : STD_LOGIC_VECTOR ( 143 downto 132 );
  signal xbar_to_m11_couplers_AWLEN : STD_LOGIC_VECTOR ( 95 downto 88 );
  signal xbar_to_m11_couplers_AWLOCK : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_AWPROT : STD_LOGIC_VECTOR ( 35 downto 33 );
  signal xbar_to_m11_couplers_AWQOS : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_AWREGION : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_AWSIZE : STD_LOGIC_VECTOR ( 35 downto 33 );
  signal xbar_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m11_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m11_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_WLAST : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 11 to 11 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_processing_system7_0_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_processing_system7_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_processing_system7_0_axi_periph_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr <= m01_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M01_AXI_arburst <= m01_couplers_to_processing_system7_0_axi_periph_ARBURST;
  M01_AXI_arcache <= m01_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  M01_AXI_arid <= m01_couplers_to_processing_system7_0_axi_periph_ARID;
  M01_AXI_arlen <= m01_couplers_to_processing_system7_0_axi_periph_ARLEN;
  M01_AXI_arlock <= m01_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  M01_AXI_arprot <= m01_couplers_to_processing_system7_0_axi_periph_ARPROT;
  M01_AXI_arqos <= m01_couplers_to_processing_system7_0_axi_periph_ARQOS;
  M01_AXI_arregion <= m01_couplers_to_processing_system7_0_axi_periph_ARREGION;
  M01_AXI_arsize <= m01_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  M01_AXI_arvalid <= m01_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M01_AXI_awaddr <= m01_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M01_AXI_awburst <= m01_couplers_to_processing_system7_0_axi_periph_AWBURST;
  M01_AXI_awcache <= m01_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  M01_AXI_awid <= m01_couplers_to_processing_system7_0_axi_periph_AWID;
  M01_AXI_awlen <= m01_couplers_to_processing_system7_0_axi_periph_AWLEN;
  M01_AXI_awlock <= m01_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  M01_AXI_awprot <= m01_couplers_to_processing_system7_0_axi_periph_AWPROT;
  M01_AXI_awqos <= m01_couplers_to_processing_system7_0_axi_periph_AWQOS;
  M01_AXI_awregion <= m01_couplers_to_processing_system7_0_axi_periph_AWREGION;
  M01_AXI_awsize <= m01_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  M01_AXI_awvalid <= m01_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_processing_system7_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_processing_system7_0_axi_periph_RREADY;
  M01_AXI_wdata <= m01_couplers_to_processing_system7_0_axi_periph_WDATA;
  M01_AXI_wlast <= m01_couplers_to_processing_system7_0_axi_periph_WLAST;
  M01_AXI_wstrb <= m01_couplers_to_processing_system7_0_axi_periph_WSTRB;
  M01_AXI_wvalid <= m01_couplers_to_processing_system7_0_axi_periph_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M02_AXI_bready <= m02_couplers_to_processing_system7_0_axi_periph_BREADY;
  M02_AXI_rready <= m02_couplers_to_processing_system7_0_axi_periph_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_processing_system7_0_axi_periph_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr <= m03_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M03_AXI_arburst <= m03_couplers_to_processing_system7_0_axi_periph_ARBURST;
  M03_AXI_arcache <= m03_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  M03_AXI_arid <= m03_couplers_to_processing_system7_0_axi_periph_ARID;
  M03_AXI_arlen <= m03_couplers_to_processing_system7_0_axi_periph_ARLEN;
  M03_AXI_arlock <= m03_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  M03_AXI_arprot <= m03_couplers_to_processing_system7_0_axi_periph_ARPROT;
  M03_AXI_arqos <= m03_couplers_to_processing_system7_0_axi_periph_ARQOS;
  M03_AXI_arregion <= m03_couplers_to_processing_system7_0_axi_periph_ARREGION;
  M03_AXI_arsize <= m03_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  M03_AXI_arvalid <= m03_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M03_AXI_awaddr <= m03_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M03_AXI_awburst <= m03_couplers_to_processing_system7_0_axi_periph_AWBURST;
  M03_AXI_awcache <= m03_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  M03_AXI_awid <= m03_couplers_to_processing_system7_0_axi_periph_AWID;
  M03_AXI_awlen <= m03_couplers_to_processing_system7_0_axi_periph_AWLEN;
  M03_AXI_awlock <= m03_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  M03_AXI_awprot <= m03_couplers_to_processing_system7_0_axi_periph_AWPROT;
  M03_AXI_awqos <= m03_couplers_to_processing_system7_0_axi_periph_AWQOS;
  M03_AXI_awregion <= m03_couplers_to_processing_system7_0_axi_periph_AWREGION;
  M03_AXI_awsize <= m03_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  M03_AXI_awvalid <= m03_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_processing_system7_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_processing_system7_0_axi_periph_RREADY;
  M03_AXI_wdata <= m03_couplers_to_processing_system7_0_axi_periph_WDATA;
  M03_AXI_wlast <= m03_couplers_to_processing_system7_0_axi_periph_WLAST;
  M03_AXI_wstrb <= m03_couplers_to_processing_system7_0_axi_periph_WSTRB;
  M03_AXI_wvalid <= m03_couplers_to_processing_system7_0_axi_periph_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr <= m04_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M04_AXI_arburst <= m04_couplers_to_processing_system7_0_axi_periph_ARBURST;
  M04_AXI_arcache <= m04_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  M04_AXI_arid <= m04_couplers_to_processing_system7_0_axi_periph_ARID;
  M04_AXI_arlen <= m04_couplers_to_processing_system7_0_axi_periph_ARLEN;
  M04_AXI_arlock <= m04_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  M04_AXI_arprot <= m04_couplers_to_processing_system7_0_axi_periph_ARPROT;
  M04_AXI_arqos <= m04_couplers_to_processing_system7_0_axi_periph_ARQOS;
  M04_AXI_arregion <= m04_couplers_to_processing_system7_0_axi_periph_ARREGION;
  M04_AXI_arsize <= m04_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  M04_AXI_arvalid <= m04_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M04_AXI_awaddr <= m04_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M04_AXI_awburst <= m04_couplers_to_processing_system7_0_axi_periph_AWBURST;
  M04_AXI_awcache <= m04_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  M04_AXI_awid <= m04_couplers_to_processing_system7_0_axi_periph_AWID;
  M04_AXI_awlen <= m04_couplers_to_processing_system7_0_axi_periph_AWLEN;
  M04_AXI_awlock <= m04_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  M04_AXI_awprot <= m04_couplers_to_processing_system7_0_axi_periph_AWPROT;
  M04_AXI_awqos <= m04_couplers_to_processing_system7_0_axi_periph_AWQOS;
  M04_AXI_awregion <= m04_couplers_to_processing_system7_0_axi_periph_AWREGION;
  M04_AXI_awsize <= m04_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  M04_AXI_awvalid <= m04_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M04_AXI_bready <= m04_couplers_to_processing_system7_0_axi_periph_BREADY;
  M04_AXI_rready <= m04_couplers_to_processing_system7_0_axi_periph_RREADY;
  M04_AXI_wdata <= m04_couplers_to_processing_system7_0_axi_periph_WDATA;
  M04_AXI_wlast <= m04_couplers_to_processing_system7_0_axi_periph_WLAST;
  M04_AXI_wstrb <= m04_couplers_to_processing_system7_0_axi_periph_WSTRB;
  M04_AXI_wvalid <= m04_couplers_to_processing_system7_0_axi_periph_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr <= m05_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M05_AXI_arburst <= m05_couplers_to_processing_system7_0_axi_periph_ARBURST;
  M05_AXI_arcache <= m05_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  M05_AXI_arid <= m05_couplers_to_processing_system7_0_axi_periph_ARID;
  M05_AXI_arlen <= m05_couplers_to_processing_system7_0_axi_periph_ARLEN;
  M05_AXI_arlock <= m05_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  M05_AXI_arprot <= m05_couplers_to_processing_system7_0_axi_periph_ARPROT;
  M05_AXI_arqos <= m05_couplers_to_processing_system7_0_axi_periph_ARQOS;
  M05_AXI_arregion <= m05_couplers_to_processing_system7_0_axi_periph_ARREGION;
  M05_AXI_arsize <= m05_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  M05_AXI_arvalid <= m05_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M05_AXI_awaddr <= m05_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M05_AXI_awburst <= m05_couplers_to_processing_system7_0_axi_periph_AWBURST;
  M05_AXI_awcache <= m05_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  M05_AXI_awid <= m05_couplers_to_processing_system7_0_axi_periph_AWID;
  M05_AXI_awlen <= m05_couplers_to_processing_system7_0_axi_periph_AWLEN;
  M05_AXI_awlock <= m05_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  M05_AXI_awprot <= m05_couplers_to_processing_system7_0_axi_periph_AWPROT;
  M05_AXI_awqos <= m05_couplers_to_processing_system7_0_axi_periph_AWQOS;
  M05_AXI_awregion <= m05_couplers_to_processing_system7_0_axi_periph_AWREGION;
  M05_AXI_awsize <= m05_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  M05_AXI_awvalid <= m05_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M05_AXI_bready <= m05_couplers_to_processing_system7_0_axi_periph_BREADY;
  M05_AXI_rready <= m05_couplers_to_processing_system7_0_axi_periph_RREADY;
  M05_AXI_wdata <= m05_couplers_to_processing_system7_0_axi_periph_WDATA;
  M05_AXI_wlast <= m05_couplers_to_processing_system7_0_axi_periph_WLAST;
  M05_AXI_wstrb <= m05_couplers_to_processing_system7_0_axi_periph_WSTRB;
  M05_AXI_wvalid <= m05_couplers_to_processing_system7_0_axi_periph_WVALID;
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1 <= M06_ARESETN;
  M06_AXI_araddr <= m06_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M06_AXI_arburst <= m06_couplers_to_processing_system7_0_axi_periph_ARBURST;
  M06_AXI_arcache <= m06_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  M06_AXI_arid <= m06_couplers_to_processing_system7_0_axi_periph_ARID;
  M06_AXI_arlen <= m06_couplers_to_processing_system7_0_axi_periph_ARLEN;
  M06_AXI_arlock <= m06_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  M06_AXI_arprot <= m06_couplers_to_processing_system7_0_axi_periph_ARPROT;
  M06_AXI_arqos <= m06_couplers_to_processing_system7_0_axi_periph_ARQOS;
  M06_AXI_arregion <= m06_couplers_to_processing_system7_0_axi_periph_ARREGION;
  M06_AXI_arsize <= m06_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  M06_AXI_arvalid <= m06_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M06_AXI_awaddr <= m06_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M06_AXI_awburst <= m06_couplers_to_processing_system7_0_axi_periph_AWBURST;
  M06_AXI_awcache <= m06_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  M06_AXI_awid <= m06_couplers_to_processing_system7_0_axi_periph_AWID;
  M06_AXI_awlen <= m06_couplers_to_processing_system7_0_axi_periph_AWLEN;
  M06_AXI_awlock <= m06_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  M06_AXI_awprot <= m06_couplers_to_processing_system7_0_axi_periph_AWPROT;
  M06_AXI_awqos <= m06_couplers_to_processing_system7_0_axi_periph_AWQOS;
  M06_AXI_awregion <= m06_couplers_to_processing_system7_0_axi_periph_AWREGION;
  M06_AXI_awsize <= m06_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  M06_AXI_awvalid <= m06_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M06_AXI_bready <= m06_couplers_to_processing_system7_0_axi_periph_BREADY;
  M06_AXI_rready <= m06_couplers_to_processing_system7_0_axi_periph_RREADY;
  M06_AXI_wdata <= m06_couplers_to_processing_system7_0_axi_periph_WDATA;
  M06_AXI_wlast <= m06_couplers_to_processing_system7_0_axi_periph_WLAST;
  M06_AXI_wstrb <= m06_couplers_to_processing_system7_0_axi_periph_WSTRB;
  M06_AXI_wvalid <= m06_couplers_to_processing_system7_0_axi_periph_WVALID;
  M07_ACLK_1 <= M07_ACLK;
  M07_ARESETN_1 <= M07_ARESETN;
  M07_AXI_araddr(31 downto 0) <= m07_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M07_AXI_arprot(2 downto 0) <= m07_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M07_AXI_arvalid <= m07_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M07_AXI_awaddr(31 downto 0) <= m07_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M07_AXI_awprot(2 downto 0) <= m07_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M07_AXI_awvalid <= m07_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M07_AXI_bready <= m07_couplers_to_processing_system7_0_axi_periph_BREADY;
  M07_AXI_rready <= m07_couplers_to_processing_system7_0_axi_periph_RREADY;
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M07_AXI_wvalid <= m07_couplers_to_processing_system7_0_axi_periph_WVALID;
  M08_ACLK_1 <= M08_ACLK;
  M08_ARESETN_1 <= M08_ARESETN;
  M08_AXI_araddr(31 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M08_AXI_arburst(1 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_ARBURST(1 downto 0);
  M08_AXI_arcache(3 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_ARCACHE(3 downto 0);
  M08_AXI_arid(11 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_ARID(11 downto 0);
  M08_AXI_arlen(7 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_ARLEN(7 downto 0);
  M08_AXI_arlock <= m08_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  M08_AXI_arprot(2 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M08_AXI_arqos(3 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_ARQOS(3 downto 0);
  M08_AXI_arregion(3 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_ARREGION(3 downto 0);
  M08_AXI_arsize(2 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_ARSIZE(2 downto 0);
  M08_AXI_arvalid <= m08_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M08_AXI_awaddr(31 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M08_AXI_awburst(1 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_AWBURST(1 downto 0);
  M08_AXI_awcache(3 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_AWCACHE(3 downto 0);
  M08_AXI_awid(11 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_AWID(11 downto 0);
  M08_AXI_awlen(7 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_AWLEN(7 downto 0);
  M08_AXI_awlock <= m08_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  M08_AXI_awprot(2 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M08_AXI_awqos(3 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_AWQOS(3 downto 0);
  M08_AXI_awregion(3 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_AWREGION(3 downto 0);
  M08_AXI_awsize(2 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_AWSIZE(2 downto 0);
  M08_AXI_awvalid <= m08_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M08_AXI_bready <= m08_couplers_to_processing_system7_0_axi_periph_BREADY;
  M08_AXI_rready <= m08_couplers_to_processing_system7_0_axi_periph_RREADY;
  M08_AXI_wdata(31 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M08_AXI_wlast <= m08_couplers_to_processing_system7_0_axi_periph_WLAST;
  M08_AXI_wstrb(3 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M08_AXI_wvalid <= m08_couplers_to_processing_system7_0_axi_periph_WVALID;
  M09_ACLK_1 <= M09_ACLK;
  M09_ARESETN_1 <= M09_ARESETN;
  M09_AXI_araddr(31 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M09_AXI_arburst(1 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_ARBURST(1 downto 0);
  M09_AXI_arcache(3 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_ARCACHE(3 downto 0);
  M09_AXI_arid(11 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_ARID(11 downto 0);
  M09_AXI_arlen(7 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_ARLEN(7 downto 0);
  M09_AXI_arlock <= m09_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  M09_AXI_arprot(2 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M09_AXI_arqos(3 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_ARQOS(3 downto 0);
  M09_AXI_arregion(3 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_ARREGION(3 downto 0);
  M09_AXI_arsize(2 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_ARSIZE(2 downto 0);
  M09_AXI_arvalid <= m09_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M09_AXI_awaddr(31 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M09_AXI_awburst(1 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_AWBURST(1 downto 0);
  M09_AXI_awcache(3 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_AWCACHE(3 downto 0);
  M09_AXI_awid(11 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_AWID(11 downto 0);
  M09_AXI_awlen(7 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_AWLEN(7 downto 0);
  M09_AXI_awlock <= m09_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  M09_AXI_awprot(2 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M09_AXI_awqos(3 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_AWQOS(3 downto 0);
  M09_AXI_awregion(3 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_AWREGION(3 downto 0);
  M09_AXI_awsize(2 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_AWSIZE(2 downto 0);
  M09_AXI_awvalid <= m09_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M09_AXI_bready <= m09_couplers_to_processing_system7_0_axi_periph_BREADY;
  M09_AXI_rready <= m09_couplers_to_processing_system7_0_axi_periph_RREADY;
  M09_AXI_wdata(31 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M09_AXI_wlast <= m09_couplers_to_processing_system7_0_axi_periph_WLAST;
  M09_AXI_wstrb(3 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M09_AXI_wvalid <= m09_couplers_to_processing_system7_0_axi_periph_WVALID;
  M10_ACLK_1 <= M10_ACLK;
  M10_ARESETN_1 <= M10_ARESETN;
  M10_AXI_araddr(31 downto 0) <= m10_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M10_AXI_arvalid <= m10_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M10_AXI_awaddr(31 downto 0) <= m10_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M10_AXI_awvalid <= m10_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M10_AXI_bready <= m10_couplers_to_processing_system7_0_axi_periph_BREADY;
  M10_AXI_rready <= m10_couplers_to_processing_system7_0_axi_periph_RREADY;
  M10_AXI_wdata(31 downto 0) <= m10_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M10_AXI_wstrb(3 downto 0) <= m10_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M10_AXI_wvalid <= m10_couplers_to_processing_system7_0_axi_periph_WVALID;
  M11_ACLK_1 <= M11_ACLK;
  M11_ARESETN_1 <= M11_ARESETN;
  M11_AXI_araddr(31 downto 0) <= m11_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M11_AXI_arvalid <= m11_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M11_AXI_awaddr(31 downto 0) <= m11_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M11_AXI_awvalid <= m11_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M11_AXI_bready <= m11_couplers_to_processing_system7_0_axi_periph_BREADY;
  M11_AXI_rready <= m11_couplers_to_processing_system7_0_axi_periph_RREADY;
  M11_AXI_wdata(31 downto 0) <= m11_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M11_AXI_wstrb(3 downto 0) <= m11_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M11_AXI_wvalid <= m11_couplers_to_processing_system7_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= processing_system7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= processing_system7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= processing_system7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= processing_system7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= processing_system7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= processing_system7_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_processing_system7_0_axi_periph_ARREADY <= M00_AXI_arready;
  m00_couplers_to_processing_system7_0_axi_periph_AWREADY <= M00_AXI_awready;
  m00_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_processing_system7_0_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_processing_system7_0_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_processing_system7_0_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_processing_system7_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_processing_system7_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_processing_system7_0_axi_periph_BID <= M01_AXI_bid;
  m01_couplers_to_processing_system7_0_axi_periph_BRESP <= M01_AXI_bresp;
  m01_couplers_to_processing_system7_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_processing_system7_0_axi_periph_RDATA <= M01_AXI_rdata;
  m01_couplers_to_processing_system7_0_axi_periph_RID <= M01_AXI_rid;
  m01_couplers_to_processing_system7_0_axi_periph_RLAST <= M01_AXI_rlast;
  m01_couplers_to_processing_system7_0_axi_periph_RRESP <= M01_AXI_rresp;
  m01_couplers_to_processing_system7_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_processing_system7_0_axi_periph_WREADY <= M01_AXI_wready;
  m02_couplers_to_processing_system7_0_axi_periph_ARREADY <= M02_AXI_arready;
  m02_couplers_to_processing_system7_0_axi_periph_AWREADY <= M02_AXI_awready;
  m02_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_processing_system7_0_axi_periph_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_processing_system7_0_axi_periph_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_processing_system7_0_axi_periph_WREADY <= M02_AXI_wready;
  m03_couplers_to_processing_system7_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_processing_system7_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_processing_system7_0_axi_periph_BID <= M03_AXI_bid;
  m03_couplers_to_processing_system7_0_axi_periph_BRESP <= M03_AXI_bresp;
  m03_couplers_to_processing_system7_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_processing_system7_0_axi_periph_RDATA <= M03_AXI_rdata;
  m03_couplers_to_processing_system7_0_axi_periph_RID <= M03_AXI_rid;
  m03_couplers_to_processing_system7_0_axi_periph_RLAST <= M03_AXI_rlast;
  m03_couplers_to_processing_system7_0_axi_periph_RRESP <= M03_AXI_rresp;
  m03_couplers_to_processing_system7_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_processing_system7_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_processing_system7_0_axi_periph_ARREADY <= M04_AXI_arready;
  m04_couplers_to_processing_system7_0_axi_periph_AWREADY <= M04_AXI_awready;
  m04_couplers_to_processing_system7_0_axi_periph_BID <= M04_AXI_bid;
  m04_couplers_to_processing_system7_0_axi_periph_BRESP <= M04_AXI_bresp;
  m04_couplers_to_processing_system7_0_axi_periph_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_processing_system7_0_axi_periph_RDATA <= M04_AXI_rdata;
  m04_couplers_to_processing_system7_0_axi_periph_RID <= M04_AXI_rid;
  m04_couplers_to_processing_system7_0_axi_periph_RLAST <= M04_AXI_rlast;
  m04_couplers_to_processing_system7_0_axi_periph_RRESP <= M04_AXI_rresp;
  m04_couplers_to_processing_system7_0_axi_periph_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_processing_system7_0_axi_periph_WREADY <= M04_AXI_wready;
  m05_couplers_to_processing_system7_0_axi_periph_ARREADY <= M05_AXI_arready;
  m05_couplers_to_processing_system7_0_axi_periph_AWREADY <= M05_AXI_awready;
  m05_couplers_to_processing_system7_0_axi_periph_BID <= M05_AXI_bid;
  m05_couplers_to_processing_system7_0_axi_periph_BRESP <= M05_AXI_bresp;
  m05_couplers_to_processing_system7_0_axi_periph_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_processing_system7_0_axi_periph_RDATA <= M05_AXI_rdata;
  m05_couplers_to_processing_system7_0_axi_periph_RID <= M05_AXI_rid;
  m05_couplers_to_processing_system7_0_axi_periph_RLAST <= M05_AXI_rlast;
  m05_couplers_to_processing_system7_0_axi_periph_RRESP <= M05_AXI_rresp;
  m05_couplers_to_processing_system7_0_axi_periph_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_processing_system7_0_axi_periph_WREADY <= M05_AXI_wready;
  m06_couplers_to_processing_system7_0_axi_periph_ARREADY <= M06_AXI_arready;
  m06_couplers_to_processing_system7_0_axi_periph_AWREADY <= M06_AXI_awready;
  m06_couplers_to_processing_system7_0_axi_periph_BID <= M06_AXI_bid;
  m06_couplers_to_processing_system7_0_axi_periph_BRESP <= M06_AXI_bresp;
  m06_couplers_to_processing_system7_0_axi_periph_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_processing_system7_0_axi_periph_RDATA <= M06_AXI_rdata;
  m06_couplers_to_processing_system7_0_axi_periph_RID <= M06_AXI_rid;
  m06_couplers_to_processing_system7_0_axi_periph_RLAST <= M06_AXI_rlast;
  m06_couplers_to_processing_system7_0_axi_periph_RRESP <= M06_AXI_rresp;
  m06_couplers_to_processing_system7_0_axi_periph_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_processing_system7_0_axi_periph_WREADY <= M06_AXI_wready;
  m07_couplers_to_processing_system7_0_axi_periph_ARREADY <= M07_AXI_arready;
  m07_couplers_to_processing_system7_0_axi_periph_AWREADY <= M07_AXI_awready;
  m07_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_processing_system7_0_axi_periph_BVALID <= M07_AXI_bvalid;
  m07_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_processing_system7_0_axi_periph_RVALID <= M07_AXI_rvalid;
  m07_couplers_to_processing_system7_0_axi_periph_WREADY <= M07_AXI_wready;
  m08_couplers_to_processing_system7_0_axi_periph_ARREADY <= M08_AXI_arready;
  m08_couplers_to_processing_system7_0_axi_periph_AWREADY <= M08_AXI_awready;
  m08_couplers_to_processing_system7_0_axi_periph_BID(11 downto 0) <= M08_AXI_bid(11 downto 0);
  m08_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_processing_system7_0_axi_periph_BVALID <= M08_AXI_bvalid;
  m08_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_processing_system7_0_axi_periph_RID(11 downto 0) <= M08_AXI_rid(11 downto 0);
  m08_couplers_to_processing_system7_0_axi_periph_RLAST <= M08_AXI_rlast;
  m08_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_processing_system7_0_axi_periph_RVALID <= M08_AXI_rvalid;
  m08_couplers_to_processing_system7_0_axi_periph_WREADY <= M08_AXI_wready;
  m09_couplers_to_processing_system7_0_axi_periph_ARREADY <= M09_AXI_arready;
  m09_couplers_to_processing_system7_0_axi_periph_AWREADY <= M09_AXI_awready;
  m09_couplers_to_processing_system7_0_axi_periph_BID(11 downto 0) <= M09_AXI_bid(11 downto 0);
  m09_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  m09_couplers_to_processing_system7_0_axi_periph_BVALID <= M09_AXI_bvalid;
  m09_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  m09_couplers_to_processing_system7_0_axi_periph_RID(11 downto 0) <= M09_AXI_rid(11 downto 0);
  m09_couplers_to_processing_system7_0_axi_periph_RLAST <= M09_AXI_rlast;
  m09_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  m09_couplers_to_processing_system7_0_axi_periph_RVALID <= M09_AXI_rvalid;
  m09_couplers_to_processing_system7_0_axi_periph_WREADY <= M09_AXI_wready;
  m10_couplers_to_processing_system7_0_axi_periph_ARREADY <= M10_AXI_arready;
  m10_couplers_to_processing_system7_0_axi_periph_AWREADY <= M10_AXI_awready;
  m10_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M10_AXI_bresp(1 downto 0);
  m10_couplers_to_processing_system7_0_axi_periph_BVALID <= M10_AXI_bvalid;
  m10_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M10_AXI_rdata(31 downto 0);
  m10_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M10_AXI_rresp(1 downto 0);
  m10_couplers_to_processing_system7_0_axi_periph_RVALID <= M10_AXI_rvalid;
  m10_couplers_to_processing_system7_0_axi_periph_WREADY <= M10_AXI_wready;
  m11_couplers_to_processing_system7_0_axi_periph_ARREADY <= M11_AXI_arready;
  m11_couplers_to_processing_system7_0_axi_periph_AWREADY <= M11_AXI_awready;
  m11_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M11_AXI_bresp(1 downto 0);
  m11_couplers_to_processing_system7_0_axi_periph_BVALID <= M11_AXI_bvalid;
  m11_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M11_AXI_rdata(31 downto 0);
  m11_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M11_AXI_rresp(1 downto 0);
  m11_couplers_to_processing_system7_0_axi_periph_RVALID <= M11_AXI_rvalid;
  m11_couplers_to_processing_system7_0_axi_periph_WREADY <= M11_AXI_wready;
  processing_system7_0_axi_periph_ACLK_net <= ACLK;
  processing_system7_0_axi_periph_ARESETN_net <= ARESETN;
  processing_system7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  processing_system7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  processing_system7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  processing_system7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  processing_system7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  processing_system7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_35T4DH
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m00_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m00_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m00_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m00_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m00_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wvalid => m00_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => xbar_to_m00_couplers_ARID(11 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => xbar_to_m00_couplers_AWID(11 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(11 downto 0) => xbar_to_m00_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m00_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1RBJY4K
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr => m01_couplers_to_processing_system7_0_axi_periph_ARADDR,
      M_AXI_arburst => m01_couplers_to_processing_system7_0_axi_periph_ARBURST,
      M_AXI_arcache => m01_couplers_to_processing_system7_0_axi_periph_ARCACHE,
      M_AXI_arid => m01_couplers_to_processing_system7_0_axi_periph_ARID,
      M_AXI_arlen => m01_couplers_to_processing_system7_0_axi_periph_ARLEN,
      M_AXI_arlock => m01_couplers_to_processing_system7_0_axi_periph_ARLOCK,
      M_AXI_arprot => m01_couplers_to_processing_system7_0_axi_periph_ARPROT,
      M_AXI_arqos => m01_couplers_to_processing_system7_0_axi_periph_ARQOS,
      M_AXI_arready => m01_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arregion => m01_couplers_to_processing_system7_0_axi_periph_ARREGION,
      M_AXI_arsize => m01_couplers_to_processing_system7_0_axi_periph_ARSIZE,
      M_AXI_arvalid => m01_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m01_couplers_to_processing_system7_0_axi_periph_AWADDR,
      M_AXI_awburst => m01_couplers_to_processing_system7_0_axi_periph_AWBURST,
      M_AXI_awcache => m01_couplers_to_processing_system7_0_axi_periph_AWCACHE,
      M_AXI_awid => m01_couplers_to_processing_system7_0_axi_periph_AWID,
      M_AXI_awlen => m01_couplers_to_processing_system7_0_axi_periph_AWLEN,
      M_AXI_awlock => m01_couplers_to_processing_system7_0_axi_periph_AWLOCK,
      M_AXI_awprot => m01_couplers_to_processing_system7_0_axi_periph_AWPROT,
      M_AXI_awqos => m01_couplers_to_processing_system7_0_axi_periph_AWQOS,
      M_AXI_awready => m01_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awregion => m01_couplers_to_processing_system7_0_axi_periph_AWREGION,
      M_AXI_awsize => m01_couplers_to_processing_system7_0_axi_periph_AWSIZE,
      M_AXI_awvalid => m01_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bid => m01_couplers_to_processing_system7_0_axi_periph_BID,
      M_AXI_bready => m01_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp => m01_couplers_to_processing_system7_0_axi_periph_BRESP,
      M_AXI_bvalid => m01_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata => m01_couplers_to_processing_system7_0_axi_periph_RDATA,
      M_AXI_rid => m01_couplers_to_processing_system7_0_axi_periph_RID,
      M_AXI_rlast => m01_couplers_to_processing_system7_0_axi_periph_RLAST,
      M_AXI_rready => m01_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp => m01_couplers_to_processing_system7_0_axi_periph_RRESP,
      M_AXI_rvalid => m01_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata => m01_couplers_to_processing_system7_0_axi_periph_WDATA,
      M_AXI_wlast => m01_couplers_to_processing_system7_0_axi_periph_WLAST,
      M_AXI_wready => m01_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb => m01_couplers_to_processing_system7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m01_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m01_couplers_ARADDR(32),
      S_AXI_arburst => xbar_to_m01_couplers_ARBURST(2),
      S_AXI_arcache => xbar_to_m01_couplers_ARCACHE(4),
      S_AXI_arid => xbar_to_m01_couplers_ARID(12),
      S_AXI_arlen => xbar_to_m01_couplers_ARLEN(8),
      S_AXI_arlock => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot => xbar_to_m01_couplers_ARPROT(3),
      S_AXI_arqos => xbar_to_m01_couplers_ARQOS(4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m01_couplers_ARREGION(4),
      S_AXI_arsize => xbar_to_m01_couplers_ARSIZE(3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr => xbar_to_m01_couplers_AWADDR(32),
      S_AXI_awburst => xbar_to_m01_couplers_AWBURST(2),
      S_AXI_awcache => xbar_to_m01_couplers_AWCACHE(4),
      S_AXI_awid => xbar_to_m01_couplers_AWID(12),
      S_AXI_awlen => xbar_to_m01_couplers_AWLEN(8),
      S_AXI_awlock => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot => xbar_to_m01_couplers_AWPROT(3),
      S_AXI_awqos => xbar_to_m01_couplers_AWQOS(4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m01_couplers_AWREGION(4),
      S_AXI_awsize => xbar_to_m01_couplers_AWSIZE(3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bid => xbar_to_m01_couplers_BID,
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp => xbar_to_m01_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata => xbar_to_m01_couplers_RDATA,
      S_AXI_rid => xbar_to_m01_couplers_RID,
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp => xbar_to_m01_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata => xbar_to_m01_couplers_WDATA(32),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m01_couplers_WSTRB(4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_42QGH2
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m02_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m02_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m02_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m02_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m02_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arburst(1 downto 0) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      S_AXI_arcache(3 downto 0) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      S_AXI_arid(11 downto 0) => xbar_to_m02_couplers_ARID(35 downto 24),
      S_AXI_arlen(7 downto 0) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      S_AXI_arlock(0) => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arqos(3 downto 0) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      S_AXI_arsize(2 downto 0) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awburst(1 downto 0) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      S_AXI_awcache(3 downto 0) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      S_AXI_awid(11 downto 0) => xbar_to_m02_couplers_AWID(35 downto 24),
      S_AXI_awlen(7 downto 0) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      S_AXI_awlock(0) => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awqos(3 downto 0) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      S_AXI_awsize(2 downto 0) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bid(11 downto 0) => xbar_to_m02_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m02_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m02_couplers_RLAST,
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wlast => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1QOA6TJ
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr => m03_couplers_to_processing_system7_0_axi_periph_ARADDR,
      M_AXI_arburst => m03_couplers_to_processing_system7_0_axi_periph_ARBURST,
      M_AXI_arcache => m03_couplers_to_processing_system7_0_axi_periph_ARCACHE,
      M_AXI_arid => m03_couplers_to_processing_system7_0_axi_periph_ARID,
      M_AXI_arlen => m03_couplers_to_processing_system7_0_axi_periph_ARLEN,
      M_AXI_arlock => m03_couplers_to_processing_system7_0_axi_periph_ARLOCK,
      M_AXI_arprot => m03_couplers_to_processing_system7_0_axi_periph_ARPROT,
      M_AXI_arqos => m03_couplers_to_processing_system7_0_axi_periph_ARQOS,
      M_AXI_arready => m03_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arregion => m03_couplers_to_processing_system7_0_axi_periph_ARREGION,
      M_AXI_arsize => m03_couplers_to_processing_system7_0_axi_periph_ARSIZE,
      M_AXI_arvalid => m03_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m03_couplers_to_processing_system7_0_axi_periph_AWADDR,
      M_AXI_awburst => m03_couplers_to_processing_system7_0_axi_periph_AWBURST,
      M_AXI_awcache => m03_couplers_to_processing_system7_0_axi_periph_AWCACHE,
      M_AXI_awid => m03_couplers_to_processing_system7_0_axi_periph_AWID,
      M_AXI_awlen => m03_couplers_to_processing_system7_0_axi_periph_AWLEN,
      M_AXI_awlock => m03_couplers_to_processing_system7_0_axi_periph_AWLOCK,
      M_AXI_awprot => m03_couplers_to_processing_system7_0_axi_periph_AWPROT,
      M_AXI_awqos => m03_couplers_to_processing_system7_0_axi_periph_AWQOS,
      M_AXI_awready => m03_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awregion => m03_couplers_to_processing_system7_0_axi_periph_AWREGION,
      M_AXI_awsize => m03_couplers_to_processing_system7_0_axi_periph_AWSIZE,
      M_AXI_awvalid => m03_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bid => m03_couplers_to_processing_system7_0_axi_periph_BID,
      M_AXI_bready => m03_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp => m03_couplers_to_processing_system7_0_axi_periph_BRESP,
      M_AXI_bvalid => m03_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata => m03_couplers_to_processing_system7_0_axi_periph_RDATA,
      M_AXI_rid => m03_couplers_to_processing_system7_0_axi_periph_RID,
      M_AXI_rlast => m03_couplers_to_processing_system7_0_axi_periph_RLAST,
      M_AXI_rready => m03_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp => m03_couplers_to_processing_system7_0_axi_periph_RRESP,
      M_AXI_rvalid => m03_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata => m03_couplers_to_processing_system7_0_axi_periph_WDATA,
      M_AXI_wlast => m03_couplers_to_processing_system7_0_axi_periph_WLAST,
      M_AXI_wready => m03_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb => m03_couplers_to_processing_system7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m03_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m03_couplers_ARADDR(96),
      S_AXI_arburst => xbar_to_m03_couplers_ARBURST(6),
      S_AXI_arcache => xbar_to_m03_couplers_ARCACHE(12),
      S_AXI_arid => xbar_to_m03_couplers_ARID(36),
      S_AXI_arlen => xbar_to_m03_couplers_ARLEN(24),
      S_AXI_arlock => xbar_to_m03_couplers_ARLOCK(3),
      S_AXI_arprot => xbar_to_m03_couplers_ARPROT(9),
      S_AXI_arqos => xbar_to_m03_couplers_ARQOS(12),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m03_couplers_ARREGION(12),
      S_AXI_arsize => xbar_to_m03_couplers_ARSIZE(9),
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr => xbar_to_m03_couplers_AWADDR(96),
      S_AXI_awburst => xbar_to_m03_couplers_AWBURST(6),
      S_AXI_awcache => xbar_to_m03_couplers_AWCACHE(12),
      S_AXI_awid => xbar_to_m03_couplers_AWID(36),
      S_AXI_awlen => xbar_to_m03_couplers_AWLEN(24),
      S_AXI_awlock => xbar_to_m03_couplers_AWLOCK(3),
      S_AXI_awprot => xbar_to_m03_couplers_AWPROT(9),
      S_AXI_awqos => xbar_to_m03_couplers_AWQOS(12),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m03_couplers_AWREGION(12),
      S_AXI_awsize => xbar_to_m03_couplers_AWSIZE(9),
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bid => xbar_to_m03_couplers_BID,
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp => xbar_to_m03_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata => xbar_to_m03_couplers_RDATA,
      S_AXI_rid => xbar_to_m03_couplers_RID,
      S_AXI_rlast => xbar_to_m03_couplers_RLAST,
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp => xbar_to_m03_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata => xbar_to_m03_couplers_WDATA(96),
      S_AXI_wlast => xbar_to_m03_couplers_WLAST(3),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m03_couplers_WSTRB(12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_7YP9F
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr => m04_couplers_to_processing_system7_0_axi_periph_ARADDR,
      M_AXI_arburst => m04_couplers_to_processing_system7_0_axi_periph_ARBURST,
      M_AXI_arcache => m04_couplers_to_processing_system7_0_axi_periph_ARCACHE,
      M_AXI_arid => m04_couplers_to_processing_system7_0_axi_periph_ARID,
      M_AXI_arlen => m04_couplers_to_processing_system7_0_axi_periph_ARLEN,
      M_AXI_arlock => m04_couplers_to_processing_system7_0_axi_periph_ARLOCK,
      M_AXI_arprot => m04_couplers_to_processing_system7_0_axi_periph_ARPROT,
      M_AXI_arqos => m04_couplers_to_processing_system7_0_axi_periph_ARQOS,
      M_AXI_arready => m04_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arregion => m04_couplers_to_processing_system7_0_axi_periph_ARREGION,
      M_AXI_arsize => m04_couplers_to_processing_system7_0_axi_periph_ARSIZE,
      M_AXI_arvalid => m04_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m04_couplers_to_processing_system7_0_axi_periph_AWADDR,
      M_AXI_awburst => m04_couplers_to_processing_system7_0_axi_periph_AWBURST,
      M_AXI_awcache => m04_couplers_to_processing_system7_0_axi_periph_AWCACHE,
      M_AXI_awid => m04_couplers_to_processing_system7_0_axi_periph_AWID,
      M_AXI_awlen => m04_couplers_to_processing_system7_0_axi_periph_AWLEN,
      M_AXI_awlock => m04_couplers_to_processing_system7_0_axi_periph_AWLOCK,
      M_AXI_awprot => m04_couplers_to_processing_system7_0_axi_periph_AWPROT,
      M_AXI_awqos => m04_couplers_to_processing_system7_0_axi_periph_AWQOS,
      M_AXI_awready => m04_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awregion => m04_couplers_to_processing_system7_0_axi_periph_AWREGION,
      M_AXI_awsize => m04_couplers_to_processing_system7_0_axi_periph_AWSIZE,
      M_AXI_awvalid => m04_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bid => m04_couplers_to_processing_system7_0_axi_periph_BID,
      M_AXI_bready => m04_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp => m04_couplers_to_processing_system7_0_axi_periph_BRESP,
      M_AXI_bvalid => m04_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata => m04_couplers_to_processing_system7_0_axi_periph_RDATA,
      M_AXI_rid => m04_couplers_to_processing_system7_0_axi_periph_RID,
      M_AXI_rlast => m04_couplers_to_processing_system7_0_axi_periph_RLAST,
      M_AXI_rready => m04_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp => m04_couplers_to_processing_system7_0_axi_periph_RRESP,
      M_AXI_rvalid => m04_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata => m04_couplers_to_processing_system7_0_axi_periph_WDATA,
      M_AXI_wlast => m04_couplers_to_processing_system7_0_axi_periph_WLAST,
      M_AXI_wready => m04_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb => m04_couplers_to_processing_system7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m04_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m04_couplers_ARADDR(128),
      S_AXI_arburst => xbar_to_m04_couplers_ARBURST(8),
      S_AXI_arcache => xbar_to_m04_couplers_ARCACHE(16),
      S_AXI_arid => xbar_to_m04_couplers_ARID(48),
      S_AXI_arlen => xbar_to_m04_couplers_ARLEN(32),
      S_AXI_arlock => xbar_to_m04_couplers_ARLOCK(4),
      S_AXI_arprot => xbar_to_m04_couplers_ARPROT(12),
      S_AXI_arqos => xbar_to_m04_couplers_ARQOS(16),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m04_couplers_ARREGION(16),
      S_AXI_arsize => xbar_to_m04_couplers_ARSIZE(12),
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr => xbar_to_m04_couplers_AWADDR(128),
      S_AXI_awburst => xbar_to_m04_couplers_AWBURST(8),
      S_AXI_awcache => xbar_to_m04_couplers_AWCACHE(16),
      S_AXI_awid => xbar_to_m04_couplers_AWID(48),
      S_AXI_awlen => xbar_to_m04_couplers_AWLEN(32),
      S_AXI_awlock => xbar_to_m04_couplers_AWLOCK(4),
      S_AXI_awprot => xbar_to_m04_couplers_AWPROT(12),
      S_AXI_awqos => xbar_to_m04_couplers_AWQOS(16),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m04_couplers_AWREGION(16),
      S_AXI_awsize => xbar_to_m04_couplers_AWSIZE(12),
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bid => xbar_to_m04_couplers_BID,
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp => xbar_to_m04_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata => xbar_to_m04_couplers_RDATA,
      S_AXI_rid => xbar_to_m04_couplers_RID,
      S_AXI_rlast => xbar_to_m04_couplers_RLAST,
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp => xbar_to_m04_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata => xbar_to_m04_couplers_WDATA(128),
      S_AXI_wlast => xbar_to_m04_couplers_WLAST(4),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m04_couplers_WSTRB(16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1UHHUGY
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr => m05_couplers_to_processing_system7_0_axi_periph_ARADDR,
      M_AXI_arburst => m05_couplers_to_processing_system7_0_axi_periph_ARBURST,
      M_AXI_arcache => m05_couplers_to_processing_system7_0_axi_periph_ARCACHE,
      M_AXI_arid => m05_couplers_to_processing_system7_0_axi_periph_ARID,
      M_AXI_arlen => m05_couplers_to_processing_system7_0_axi_periph_ARLEN,
      M_AXI_arlock => m05_couplers_to_processing_system7_0_axi_periph_ARLOCK,
      M_AXI_arprot => m05_couplers_to_processing_system7_0_axi_periph_ARPROT,
      M_AXI_arqos => m05_couplers_to_processing_system7_0_axi_periph_ARQOS,
      M_AXI_arready => m05_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arregion => m05_couplers_to_processing_system7_0_axi_periph_ARREGION,
      M_AXI_arsize => m05_couplers_to_processing_system7_0_axi_periph_ARSIZE,
      M_AXI_arvalid => m05_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m05_couplers_to_processing_system7_0_axi_periph_AWADDR,
      M_AXI_awburst => m05_couplers_to_processing_system7_0_axi_periph_AWBURST,
      M_AXI_awcache => m05_couplers_to_processing_system7_0_axi_periph_AWCACHE,
      M_AXI_awid => m05_couplers_to_processing_system7_0_axi_periph_AWID,
      M_AXI_awlen => m05_couplers_to_processing_system7_0_axi_periph_AWLEN,
      M_AXI_awlock => m05_couplers_to_processing_system7_0_axi_periph_AWLOCK,
      M_AXI_awprot => m05_couplers_to_processing_system7_0_axi_periph_AWPROT,
      M_AXI_awqos => m05_couplers_to_processing_system7_0_axi_periph_AWQOS,
      M_AXI_awready => m05_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awregion => m05_couplers_to_processing_system7_0_axi_periph_AWREGION,
      M_AXI_awsize => m05_couplers_to_processing_system7_0_axi_periph_AWSIZE,
      M_AXI_awvalid => m05_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bid => m05_couplers_to_processing_system7_0_axi_periph_BID,
      M_AXI_bready => m05_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp => m05_couplers_to_processing_system7_0_axi_periph_BRESP,
      M_AXI_bvalid => m05_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata => m05_couplers_to_processing_system7_0_axi_periph_RDATA,
      M_AXI_rid => m05_couplers_to_processing_system7_0_axi_periph_RID,
      M_AXI_rlast => m05_couplers_to_processing_system7_0_axi_periph_RLAST,
      M_AXI_rready => m05_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp => m05_couplers_to_processing_system7_0_axi_periph_RRESP,
      M_AXI_rvalid => m05_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata => m05_couplers_to_processing_system7_0_axi_periph_WDATA,
      M_AXI_wlast => m05_couplers_to_processing_system7_0_axi_periph_WLAST,
      M_AXI_wready => m05_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb => m05_couplers_to_processing_system7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m05_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m05_couplers_ARADDR(160),
      S_AXI_arburst => xbar_to_m05_couplers_ARBURST(10),
      S_AXI_arcache => xbar_to_m05_couplers_ARCACHE(20),
      S_AXI_arid => xbar_to_m05_couplers_ARID(60),
      S_AXI_arlen => xbar_to_m05_couplers_ARLEN(40),
      S_AXI_arlock => xbar_to_m05_couplers_ARLOCK(5),
      S_AXI_arprot => xbar_to_m05_couplers_ARPROT(15),
      S_AXI_arqos => xbar_to_m05_couplers_ARQOS(20),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m05_couplers_ARREGION(20),
      S_AXI_arsize => xbar_to_m05_couplers_ARSIZE(15),
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr => xbar_to_m05_couplers_AWADDR(160),
      S_AXI_awburst => xbar_to_m05_couplers_AWBURST(10),
      S_AXI_awcache => xbar_to_m05_couplers_AWCACHE(20),
      S_AXI_awid => xbar_to_m05_couplers_AWID(60),
      S_AXI_awlen => xbar_to_m05_couplers_AWLEN(40),
      S_AXI_awlock => xbar_to_m05_couplers_AWLOCK(5),
      S_AXI_awprot => xbar_to_m05_couplers_AWPROT(15),
      S_AXI_awqos => xbar_to_m05_couplers_AWQOS(20),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m05_couplers_AWREGION(20),
      S_AXI_awsize => xbar_to_m05_couplers_AWSIZE(15),
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bid => xbar_to_m05_couplers_BID,
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp => xbar_to_m05_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata => xbar_to_m05_couplers_RDATA,
      S_AXI_rid => xbar_to_m05_couplers_RID,
      S_AXI_rlast => xbar_to_m05_couplers_RLAST,
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp => xbar_to_m05_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata => xbar_to_m05_couplers_WDATA(160),
      S_AXI_wlast => xbar_to_m05_couplers_WLAST(5),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m05_couplers_WSTRB(20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_1EWAU8
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN => M06_ARESETN_1,
      M_AXI_araddr => m06_couplers_to_processing_system7_0_axi_periph_ARADDR,
      M_AXI_arburst => m06_couplers_to_processing_system7_0_axi_periph_ARBURST,
      M_AXI_arcache => m06_couplers_to_processing_system7_0_axi_periph_ARCACHE,
      M_AXI_arid => m06_couplers_to_processing_system7_0_axi_periph_ARID,
      M_AXI_arlen => m06_couplers_to_processing_system7_0_axi_periph_ARLEN,
      M_AXI_arlock => m06_couplers_to_processing_system7_0_axi_periph_ARLOCK,
      M_AXI_arprot => m06_couplers_to_processing_system7_0_axi_periph_ARPROT,
      M_AXI_arqos => m06_couplers_to_processing_system7_0_axi_periph_ARQOS,
      M_AXI_arready => m06_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arregion => m06_couplers_to_processing_system7_0_axi_periph_ARREGION,
      M_AXI_arsize => m06_couplers_to_processing_system7_0_axi_periph_ARSIZE,
      M_AXI_arvalid => m06_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m06_couplers_to_processing_system7_0_axi_periph_AWADDR,
      M_AXI_awburst => m06_couplers_to_processing_system7_0_axi_periph_AWBURST,
      M_AXI_awcache => m06_couplers_to_processing_system7_0_axi_periph_AWCACHE,
      M_AXI_awid => m06_couplers_to_processing_system7_0_axi_periph_AWID,
      M_AXI_awlen => m06_couplers_to_processing_system7_0_axi_periph_AWLEN,
      M_AXI_awlock => m06_couplers_to_processing_system7_0_axi_periph_AWLOCK,
      M_AXI_awprot => m06_couplers_to_processing_system7_0_axi_periph_AWPROT,
      M_AXI_awqos => m06_couplers_to_processing_system7_0_axi_periph_AWQOS,
      M_AXI_awready => m06_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awregion => m06_couplers_to_processing_system7_0_axi_periph_AWREGION,
      M_AXI_awsize => m06_couplers_to_processing_system7_0_axi_periph_AWSIZE,
      M_AXI_awvalid => m06_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bid => m06_couplers_to_processing_system7_0_axi_periph_BID,
      M_AXI_bready => m06_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp => m06_couplers_to_processing_system7_0_axi_periph_BRESP,
      M_AXI_bvalid => m06_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata => m06_couplers_to_processing_system7_0_axi_periph_RDATA,
      M_AXI_rid => m06_couplers_to_processing_system7_0_axi_periph_RID,
      M_AXI_rlast => m06_couplers_to_processing_system7_0_axi_periph_RLAST,
      M_AXI_rready => m06_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp => m06_couplers_to_processing_system7_0_axi_periph_RRESP,
      M_AXI_rvalid => m06_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata => m06_couplers_to_processing_system7_0_axi_periph_WDATA,
      M_AXI_wlast => m06_couplers_to_processing_system7_0_axi_periph_WLAST,
      M_AXI_wready => m06_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb => m06_couplers_to_processing_system7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m06_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m06_couplers_ARADDR(192),
      S_AXI_arburst => xbar_to_m06_couplers_ARBURST(12),
      S_AXI_arcache => xbar_to_m06_couplers_ARCACHE(24),
      S_AXI_arid => xbar_to_m06_couplers_ARID(72),
      S_AXI_arlen => xbar_to_m06_couplers_ARLEN(48),
      S_AXI_arlock => xbar_to_m06_couplers_ARLOCK(6),
      S_AXI_arprot => xbar_to_m06_couplers_ARPROT(18),
      S_AXI_arqos => xbar_to_m06_couplers_ARQOS(24),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m06_couplers_ARREGION(24),
      S_AXI_arsize => xbar_to_m06_couplers_ARSIZE(18),
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr => xbar_to_m06_couplers_AWADDR(192),
      S_AXI_awburst => xbar_to_m06_couplers_AWBURST(12),
      S_AXI_awcache => xbar_to_m06_couplers_AWCACHE(24),
      S_AXI_awid => xbar_to_m06_couplers_AWID(72),
      S_AXI_awlen => xbar_to_m06_couplers_AWLEN(48),
      S_AXI_awlock => xbar_to_m06_couplers_AWLOCK(6),
      S_AXI_awprot => xbar_to_m06_couplers_AWPROT(18),
      S_AXI_awqos => xbar_to_m06_couplers_AWQOS(24),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m06_couplers_AWREGION(24),
      S_AXI_awsize => xbar_to_m06_couplers_AWSIZE(18),
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bid => xbar_to_m06_couplers_BID,
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp => xbar_to_m06_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata => xbar_to_m06_couplers_RDATA,
      S_AXI_rid => xbar_to_m06_couplers_RID,
      S_AXI_rlast => xbar_to_m06_couplers_RLAST,
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp => xbar_to_m06_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata => xbar_to_m06_couplers_WDATA(192),
      S_AXI_wlast => xbar_to_m06_couplers_WLAST(6),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m06_couplers_WSTRB(24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1T0A0OX
     port map (
      M_ACLK => M07_ACLK_1,
      M_ARESETN => M07_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m07_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m07_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m07_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m07_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m07_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m07_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m07_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m07_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m07_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m07_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arburst(1 downto 0) => xbar_to_m07_couplers_ARBURST(15 downto 14),
      S_AXI_arcache(3 downto 0) => xbar_to_m07_couplers_ARCACHE(31 downto 28),
      S_AXI_arid(11 downto 0) => xbar_to_m07_couplers_ARID(95 downto 84),
      S_AXI_arlen(7 downto 0) => xbar_to_m07_couplers_ARLEN(63 downto 56),
      S_AXI_arlock(0) => xbar_to_m07_couplers_ARLOCK(7),
      S_AXI_arprot(2 downto 0) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      S_AXI_arqos(3 downto 0) => xbar_to_m07_couplers_ARQOS(31 downto 28),
      S_AXI_arready => xbar_to_m07_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m07_couplers_ARREGION(31 downto 28),
      S_AXI_arsize(2 downto 0) => xbar_to_m07_couplers_ARSIZE(23 downto 21),
      S_AXI_arvalid => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awburst(1 downto 0) => xbar_to_m07_couplers_AWBURST(15 downto 14),
      S_AXI_awcache(3 downto 0) => xbar_to_m07_couplers_AWCACHE(31 downto 28),
      S_AXI_awid(11 downto 0) => xbar_to_m07_couplers_AWID(95 downto 84),
      S_AXI_awlen(7 downto 0) => xbar_to_m07_couplers_AWLEN(63 downto 56),
      S_AXI_awlock(0) => xbar_to_m07_couplers_AWLOCK(7),
      S_AXI_awprot(2 downto 0) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      S_AXI_awqos(3 downto 0) => xbar_to_m07_couplers_AWQOS(31 downto 28),
      S_AXI_awready => xbar_to_m07_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m07_couplers_AWREGION(31 downto 28),
      S_AXI_awsize(2 downto 0) => xbar_to_m07_couplers_AWSIZE(23 downto 21),
      S_AXI_awvalid => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bid(11 downto 0) => xbar_to_m07_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m07_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m07_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m07_couplers_RLAST,
      S_AXI_rready => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m07_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wlast => xbar_to_m07_couplers_WLAST(7),
      S_AXI_wready => xbar_to_m07_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_7TRM95
     port map (
      M_ACLK => M08_ACLK_1,
      M_ARESETN => M08_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_ARCACHE(3 downto 0),
      M_AXI_arid(11 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_ARID(11 downto 0),
      M_AXI_arlen(7 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_ARLEN(7 downto 0),
      M_AXI_arlock => m08_couplers_to_processing_system7_0_axi_periph_ARLOCK,
      M_AXI_arprot(2 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_ARQOS(3 downto 0),
      M_AXI_arready => m08_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arregion(3 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_ARREGION(3 downto 0),
      M_AXI_arsize(2 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_ARSIZE(2 downto 0),
      M_AXI_arvalid => m08_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_AWCACHE(3 downto 0),
      M_AXI_awid(11 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_AWID(11 downto 0),
      M_AXI_awlen(7 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_AWLEN(7 downto 0),
      M_AXI_awlock => m08_couplers_to_processing_system7_0_axi_periph_AWLOCK,
      M_AXI_awprot(2 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_AWQOS(3 downto 0),
      M_AXI_awready => m08_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awregion(3 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_AWREGION(3 downto 0),
      M_AXI_awsize(2 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_AWSIZE(2 downto 0),
      M_AXI_awvalid => m08_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bid(11 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_BID(11 downto 0),
      M_AXI_bready => m08_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m08_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rid(11 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_RID(11 downto 0),
      M_AXI_rlast => m08_couplers_to_processing_system7_0_axi_periph_RLAST,
      M_AXI_rready => m08_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m08_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wlast => m08_couplers_to_processing_system7_0_axi_periph_WLAST,
      M_AXI_wready => m08_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m08_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      S_AXI_arburst(1 downto 0) => xbar_to_m08_couplers_ARBURST(17 downto 16),
      S_AXI_arcache(3 downto 0) => xbar_to_m08_couplers_ARCACHE(35 downto 32),
      S_AXI_arid(11 downto 0) => xbar_to_m08_couplers_ARID(107 downto 96),
      S_AXI_arlen(7 downto 0) => xbar_to_m08_couplers_ARLEN(71 downto 64),
      S_AXI_arlock => xbar_to_m08_couplers_ARLOCK(8),
      S_AXI_arprot(2 downto 0) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      S_AXI_arqos(3 downto 0) => xbar_to_m08_couplers_ARQOS(35 downto 32),
      S_AXI_arready => xbar_to_m08_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m08_couplers_ARREGION(35 downto 32),
      S_AXI_arsize(2 downto 0) => xbar_to_m08_couplers_ARSIZE(26 downto 24),
      S_AXI_arvalid => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr(31 downto 0) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      S_AXI_awburst(1 downto 0) => xbar_to_m08_couplers_AWBURST(17 downto 16),
      S_AXI_awcache(3 downto 0) => xbar_to_m08_couplers_AWCACHE(35 downto 32),
      S_AXI_awid(11 downto 0) => xbar_to_m08_couplers_AWID(107 downto 96),
      S_AXI_awlen(7 downto 0) => xbar_to_m08_couplers_AWLEN(71 downto 64),
      S_AXI_awlock => xbar_to_m08_couplers_AWLOCK(8),
      S_AXI_awprot(2 downto 0) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      S_AXI_awqos(3 downto 0) => xbar_to_m08_couplers_AWQOS(35 downto 32),
      S_AXI_awready => xbar_to_m08_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m08_couplers_AWREGION(35 downto 32),
      S_AXI_awsize(2 downto 0) => xbar_to_m08_couplers_AWSIZE(26 downto 24),
      S_AXI_awvalid => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bid(11 downto 0) => xbar_to_m08_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp(1 downto 0) => xbar_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m08_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m08_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m08_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m08_couplers_RLAST,
      S_AXI_rready => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp(1 downto 0) => xbar_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m08_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m08_couplers_WDATA(287 downto 256),
      S_AXI_wlast => xbar_to_m08_couplers_WLAST(8),
      S_AXI_wready => xbar_to_m08_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      S_AXI_wvalid => xbar_to_m08_couplers_WVALID(8)
    );
m09_couplers: entity work.m09_couplers_imp_1VJB6H4
     port map (
      M_ACLK => M09_ACLK_1,
      M_ARESETN => M09_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_ARCACHE(3 downto 0),
      M_AXI_arid(11 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_ARID(11 downto 0),
      M_AXI_arlen(7 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_ARLEN(7 downto 0),
      M_AXI_arlock => m09_couplers_to_processing_system7_0_axi_periph_ARLOCK,
      M_AXI_arprot(2 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_ARQOS(3 downto 0),
      M_AXI_arready => m09_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arregion(3 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_ARREGION(3 downto 0),
      M_AXI_arsize(2 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_ARSIZE(2 downto 0),
      M_AXI_arvalid => m09_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_AWCACHE(3 downto 0),
      M_AXI_awid(11 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_AWID(11 downto 0),
      M_AXI_awlen(7 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_AWLEN(7 downto 0),
      M_AXI_awlock => m09_couplers_to_processing_system7_0_axi_periph_AWLOCK,
      M_AXI_awprot(2 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_AWQOS(3 downto 0),
      M_AXI_awready => m09_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awregion(3 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_AWREGION(3 downto 0),
      M_AXI_awsize(2 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_AWSIZE(2 downto 0),
      M_AXI_awvalid => m09_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bid(11 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_BID(11 downto 0),
      M_AXI_bready => m09_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m09_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rid(11 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_RID(11 downto 0),
      M_AXI_rlast => m09_couplers_to_processing_system7_0_axi_periph_RLAST,
      M_AXI_rready => m09_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m09_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wlast => m09_couplers_to_processing_system7_0_axi_periph_WLAST,
      M_AXI_wready => m09_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m09_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      S_AXI_arburst(1 downto 0) => xbar_to_m09_couplers_ARBURST(19 downto 18),
      S_AXI_arcache(3 downto 0) => xbar_to_m09_couplers_ARCACHE(39 downto 36),
      S_AXI_arid(11 downto 0) => xbar_to_m09_couplers_ARID(119 downto 108),
      S_AXI_arlen(7 downto 0) => xbar_to_m09_couplers_ARLEN(79 downto 72),
      S_AXI_arlock => xbar_to_m09_couplers_ARLOCK(9),
      S_AXI_arprot(2 downto 0) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      S_AXI_arqos(3 downto 0) => xbar_to_m09_couplers_ARQOS(39 downto 36),
      S_AXI_arready => xbar_to_m09_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m09_couplers_ARREGION(39 downto 36),
      S_AXI_arsize(2 downto 0) => xbar_to_m09_couplers_ARSIZE(29 downto 27),
      S_AXI_arvalid => xbar_to_m09_couplers_ARVALID(9),
      S_AXI_awaddr(31 downto 0) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      S_AXI_awburst(1 downto 0) => xbar_to_m09_couplers_AWBURST(19 downto 18),
      S_AXI_awcache(3 downto 0) => xbar_to_m09_couplers_AWCACHE(39 downto 36),
      S_AXI_awid(11 downto 0) => xbar_to_m09_couplers_AWID(119 downto 108),
      S_AXI_awlen(7 downto 0) => xbar_to_m09_couplers_AWLEN(79 downto 72),
      S_AXI_awlock => xbar_to_m09_couplers_AWLOCK(9),
      S_AXI_awprot(2 downto 0) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      S_AXI_awqos(3 downto 0) => xbar_to_m09_couplers_AWQOS(39 downto 36),
      S_AXI_awready => xbar_to_m09_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m09_couplers_AWREGION(39 downto 36),
      S_AXI_awsize(2 downto 0) => xbar_to_m09_couplers_AWSIZE(29 downto 27),
      S_AXI_awvalid => xbar_to_m09_couplers_AWVALID(9),
      S_AXI_bid(11 downto 0) => xbar_to_m09_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m09_couplers_BREADY(9),
      S_AXI_bresp(1 downto 0) => xbar_to_m09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m09_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m09_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m09_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m09_couplers_RLAST,
      S_AXI_rready => xbar_to_m09_couplers_RREADY(9),
      S_AXI_rresp(1 downto 0) => xbar_to_m09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m09_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m09_couplers_WDATA(319 downto 288),
      S_AXI_wlast => xbar_to_m09_couplers_WLAST(9),
      S_AXI_wready => xbar_to_m09_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      S_AXI_wvalid => xbar_to_m09_couplers_WVALID(9)
    );
m10_couplers: entity work.m10_couplers_imp_1P6RBCT
     port map (
      M_ACLK => M10_ACLK_1,
      M_ARESETN => M10_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m10_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m10_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m10_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m10_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m10_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m10_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m10_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m10_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m10_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m10_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      S_AXI_arburst(1 downto 0) => xbar_to_m10_couplers_ARBURST(21 downto 20),
      S_AXI_arcache(3 downto 0) => xbar_to_m10_couplers_ARCACHE(43 downto 40),
      S_AXI_arid(11 downto 0) => xbar_to_m10_couplers_ARID(131 downto 120),
      S_AXI_arlen(7 downto 0) => xbar_to_m10_couplers_ARLEN(87 downto 80),
      S_AXI_arlock(0) => xbar_to_m10_couplers_ARLOCK(10),
      S_AXI_arprot(2 downto 0) => xbar_to_m10_couplers_ARPROT(32 downto 30),
      S_AXI_arqos(3 downto 0) => xbar_to_m10_couplers_ARQOS(43 downto 40),
      S_AXI_arready => xbar_to_m10_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m10_couplers_ARREGION(43 downto 40),
      S_AXI_arsize(2 downto 0) => xbar_to_m10_couplers_ARSIZE(32 downto 30),
      S_AXI_arvalid => xbar_to_m10_couplers_ARVALID(10),
      S_AXI_awaddr(31 downto 0) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      S_AXI_awburst(1 downto 0) => xbar_to_m10_couplers_AWBURST(21 downto 20),
      S_AXI_awcache(3 downto 0) => xbar_to_m10_couplers_AWCACHE(43 downto 40),
      S_AXI_awid(11 downto 0) => xbar_to_m10_couplers_AWID(131 downto 120),
      S_AXI_awlen(7 downto 0) => xbar_to_m10_couplers_AWLEN(87 downto 80),
      S_AXI_awlock(0) => xbar_to_m10_couplers_AWLOCK(10),
      S_AXI_awprot(2 downto 0) => xbar_to_m10_couplers_AWPROT(32 downto 30),
      S_AXI_awqos(3 downto 0) => xbar_to_m10_couplers_AWQOS(43 downto 40),
      S_AXI_awready => xbar_to_m10_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m10_couplers_AWREGION(43 downto 40),
      S_AXI_awsize(2 downto 0) => xbar_to_m10_couplers_AWSIZE(32 downto 30),
      S_AXI_awvalid => xbar_to_m10_couplers_AWVALID(10),
      S_AXI_bid(11 downto 0) => xbar_to_m10_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m10_couplers_BREADY(10),
      S_AXI_bresp(1 downto 0) => xbar_to_m10_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m10_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m10_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m10_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m10_couplers_RLAST,
      S_AXI_rready => xbar_to_m10_couplers_RREADY(10),
      S_AXI_rresp(1 downto 0) => xbar_to_m10_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m10_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m10_couplers_WDATA(351 downto 320),
      S_AXI_wlast => xbar_to_m10_couplers_WLAST(10),
      S_AXI_wready => xbar_to_m10_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      S_AXI_wvalid => xbar_to_m10_couplers_WVALID(10)
    );
m11_couplers: entity work.m11_couplers_imp_EDQGGS
     port map (
      M_ACLK => M11_ACLK_1,
      M_ARESETN => M11_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m11_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m11_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m11_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m11_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m11_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m11_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m11_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m11_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m11_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m11_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m11_couplers_ARADDR(383 downto 352),
      S_AXI_arburst(1 downto 0) => xbar_to_m11_couplers_ARBURST(23 downto 22),
      S_AXI_arcache(3 downto 0) => xbar_to_m11_couplers_ARCACHE(47 downto 44),
      S_AXI_arid(11 downto 0) => xbar_to_m11_couplers_ARID(143 downto 132),
      S_AXI_arlen(7 downto 0) => xbar_to_m11_couplers_ARLEN(95 downto 88),
      S_AXI_arlock(0) => xbar_to_m11_couplers_ARLOCK(11),
      S_AXI_arprot(2 downto 0) => xbar_to_m11_couplers_ARPROT(35 downto 33),
      S_AXI_arqos(3 downto 0) => xbar_to_m11_couplers_ARQOS(47 downto 44),
      S_AXI_arready => xbar_to_m11_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m11_couplers_ARREGION(47 downto 44),
      S_AXI_arsize(2 downto 0) => xbar_to_m11_couplers_ARSIZE(35 downto 33),
      S_AXI_arvalid => xbar_to_m11_couplers_ARVALID(11),
      S_AXI_awaddr(31 downto 0) => xbar_to_m11_couplers_AWADDR(383 downto 352),
      S_AXI_awburst(1 downto 0) => xbar_to_m11_couplers_AWBURST(23 downto 22),
      S_AXI_awcache(3 downto 0) => xbar_to_m11_couplers_AWCACHE(47 downto 44),
      S_AXI_awid(11 downto 0) => xbar_to_m11_couplers_AWID(143 downto 132),
      S_AXI_awlen(7 downto 0) => xbar_to_m11_couplers_AWLEN(95 downto 88),
      S_AXI_awlock(0) => xbar_to_m11_couplers_AWLOCK(11),
      S_AXI_awprot(2 downto 0) => xbar_to_m11_couplers_AWPROT(35 downto 33),
      S_AXI_awqos(3 downto 0) => xbar_to_m11_couplers_AWQOS(47 downto 44),
      S_AXI_awready => xbar_to_m11_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m11_couplers_AWREGION(47 downto 44),
      S_AXI_awsize(2 downto 0) => xbar_to_m11_couplers_AWSIZE(35 downto 33),
      S_AXI_awvalid => xbar_to_m11_couplers_AWVALID(11),
      S_AXI_bid(11 downto 0) => xbar_to_m11_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m11_couplers_BREADY(11),
      S_AXI_bresp(1 downto 0) => xbar_to_m11_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m11_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m11_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m11_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m11_couplers_RLAST,
      S_AXI_rready => xbar_to_m11_couplers_RREADY(11),
      S_AXI_rresp(1 downto 0) => xbar_to_m11_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m11_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m11_couplers_WDATA(383 downto 352),
      S_AXI_wlast => xbar_to_m11_couplers_WLAST(11),
      S_AXI_wready => xbar_to_m11_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      S_AXI_wvalid => xbar_to_m11_couplers_WVALID(11)
    );
s00_couplers: entity work.s00_couplers_imp_1V8SEG7
     port map (
      M_ACLK => processing_system7_0_axi_periph_ACLK_net,
      M_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(11 downto 0) => s00_couplers_to_xbar_ARID(11 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(11 downto 0) => s00_couplers_to_xbar_AWID(11 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bid(11 downto 0) => s00_couplers_to_xbar_BID(11 downto 0),
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rid(11 downto 0) => s00_couplers_to_xbar_RID(11 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => processing_system7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => processing_system7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => processing_system7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => processing_system7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => processing_system7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => processing_system7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => processing_system7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => processing_system7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => processing_system7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => processing_system7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => processing_system7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => processing_system7_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component design_2_xbar_0
     port map (
      aclk => processing_system7_0_axi_periph_ACLK_net,
      aresetn => processing_system7_0_axi_periph_ARESETN_net,
      m_axi_araddr(383 downto 352) => xbar_to_m11_couplers_ARADDR(383 downto 352),
      m_axi_araddr(351 downto 320) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      m_axi_araddr(319 downto 288) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(23 downto 22) => xbar_to_m11_couplers_ARBURST(23 downto 22),
      m_axi_arburst(21 downto 20) => xbar_to_m10_couplers_ARBURST(21 downto 20),
      m_axi_arburst(19 downto 18) => xbar_to_m09_couplers_ARBURST(19 downto 18),
      m_axi_arburst(17 downto 16) => xbar_to_m08_couplers_ARBURST(17 downto 16),
      m_axi_arburst(15 downto 14) => xbar_to_m07_couplers_ARBURST(15 downto 14),
      m_axi_arburst(13 downto 12) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      m_axi_arburst(11 downto 10) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      m_axi_arburst(9 downto 8) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      m_axi_arburst(7 downto 6) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(47 downto 44) => xbar_to_m11_couplers_ARCACHE(47 downto 44),
      m_axi_arcache(43 downto 40) => xbar_to_m10_couplers_ARCACHE(43 downto 40),
      m_axi_arcache(39 downto 36) => xbar_to_m09_couplers_ARCACHE(39 downto 36),
      m_axi_arcache(35 downto 32) => xbar_to_m08_couplers_ARCACHE(35 downto 32),
      m_axi_arcache(31 downto 28) => xbar_to_m07_couplers_ARCACHE(31 downto 28),
      m_axi_arcache(27 downto 24) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      m_axi_arcache(23 downto 20) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      m_axi_arcache(19 downto 16) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      m_axi_arcache(15 downto 12) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(143 downto 132) => xbar_to_m11_couplers_ARID(143 downto 132),
      m_axi_arid(131 downto 120) => xbar_to_m10_couplers_ARID(131 downto 120),
      m_axi_arid(119 downto 108) => xbar_to_m09_couplers_ARID(119 downto 108),
      m_axi_arid(107 downto 96) => xbar_to_m08_couplers_ARID(107 downto 96),
      m_axi_arid(95 downto 84) => xbar_to_m07_couplers_ARID(95 downto 84),
      m_axi_arid(83 downto 72) => xbar_to_m06_couplers_ARID(83 downto 72),
      m_axi_arid(71 downto 60) => xbar_to_m05_couplers_ARID(71 downto 60),
      m_axi_arid(59 downto 48) => xbar_to_m04_couplers_ARID(59 downto 48),
      m_axi_arid(47 downto 36) => xbar_to_m03_couplers_ARID(47 downto 36),
      m_axi_arid(35 downto 24) => xbar_to_m02_couplers_ARID(35 downto 24),
      m_axi_arid(23 downto 12) => xbar_to_m01_couplers_ARID(23 downto 12),
      m_axi_arid(11 downto 0) => xbar_to_m00_couplers_ARID(11 downto 0),
      m_axi_arlen(95 downto 88) => xbar_to_m11_couplers_ARLEN(95 downto 88),
      m_axi_arlen(87 downto 80) => xbar_to_m10_couplers_ARLEN(87 downto 80),
      m_axi_arlen(79 downto 72) => xbar_to_m09_couplers_ARLEN(79 downto 72),
      m_axi_arlen(71 downto 64) => xbar_to_m08_couplers_ARLEN(71 downto 64),
      m_axi_arlen(63 downto 56) => xbar_to_m07_couplers_ARLEN(63 downto 56),
      m_axi_arlen(55 downto 48) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      m_axi_arlen(47 downto 40) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      m_axi_arlen(39 downto 32) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      m_axi_arlen(31 downto 24) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(11) => xbar_to_m11_couplers_ARLOCK(11),
      m_axi_arlock(10) => xbar_to_m10_couplers_ARLOCK(10),
      m_axi_arlock(9) => xbar_to_m09_couplers_ARLOCK(9),
      m_axi_arlock(8) => xbar_to_m08_couplers_ARLOCK(8),
      m_axi_arlock(7) => xbar_to_m07_couplers_ARLOCK(7),
      m_axi_arlock(6) => xbar_to_m06_couplers_ARLOCK(6),
      m_axi_arlock(5) => xbar_to_m05_couplers_ARLOCK(5),
      m_axi_arlock(4) => xbar_to_m04_couplers_ARLOCK(4),
      m_axi_arlock(3) => xbar_to_m03_couplers_ARLOCK(3),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(35 downto 33) => xbar_to_m11_couplers_ARPROT(35 downto 33),
      m_axi_arprot(32 downto 30) => xbar_to_m10_couplers_ARPROT(32 downto 30),
      m_axi_arprot(29 downto 27) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      m_axi_arprot(26 downto 24) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      m_axi_arprot(23 downto 21) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(47 downto 44) => xbar_to_m11_couplers_ARQOS(47 downto 44),
      m_axi_arqos(43 downto 40) => xbar_to_m10_couplers_ARQOS(43 downto 40),
      m_axi_arqos(39 downto 36) => xbar_to_m09_couplers_ARQOS(39 downto 36),
      m_axi_arqos(35 downto 32) => xbar_to_m08_couplers_ARQOS(35 downto 32),
      m_axi_arqos(31 downto 28) => xbar_to_m07_couplers_ARQOS(31 downto 28),
      m_axi_arqos(27 downto 24) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      m_axi_arqos(23 downto 20) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      m_axi_arqos(19 downto 16) => xbar_to_m04_couplers_ARQOS(19 downto 16),
      m_axi_arqos(15 downto 12) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      m_axi_arqos(11 downto 8) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(11) => xbar_to_m11_couplers_ARREADY,
      m_axi_arready(10) => xbar_to_m10_couplers_ARREADY,
      m_axi_arready(9) => xbar_to_m09_couplers_ARREADY,
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY,
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY,
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(47 downto 44) => xbar_to_m11_couplers_ARREGION(47 downto 44),
      m_axi_arregion(43 downto 40) => xbar_to_m10_couplers_ARREGION(43 downto 40),
      m_axi_arregion(39 downto 36) => xbar_to_m09_couplers_ARREGION(39 downto 36),
      m_axi_arregion(35 downto 32) => xbar_to_m08_couplers_ARREGION(35 downto 32),
      m_axi_arregion(31 downto 28) => xbar_to_m07_couplers_ARREGION(31 downto 28),
      m_axi_arregion(27 downto 24) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      m_axi_arregion(23 downto 20) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      m_axi_arregion(19 downto 16) => xbar_to_m04_couplers_ARREGION(19 downto 16),
      m_axi_arregion(15 downto 12) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      m_axi_arregion(11 downto 8) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(35 downto 33) => xbar_to_m11_couplers_ARSIZE(35 downto 33),
      m_axi_arsize(32 downto 30) => xbar_to_m10_couplers_ARSIZE(32 downto 30),
      m_axi_arsize(29 downto 27) => xbar_to_m09_couplers_ARSIZE(29 downto 27),
      m_axi_arsize(26 downto 24) => xbar_to_m08_couplers_ARSIZE(26 downto 24),
      m_axi_arsize(23 downto 21) => xbar_to_m07_couplers_ARSIZE(23 downto 21),
      m_axi_arsize(20 downto 18) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      m_axi_arsize(17 downto 15) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      m_axi_arsize(14 downto 12) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      m_axi_arsize(11 downto 9) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(11) => xbar_to_m11_couplers_ARVALID(11),
      m_axi_arvalid(10) => xbar_to_m10_couplers_ARVALID(10),
      m_axi_arvalid(9) => xbar_to_m09_couplers_ARVALID(9),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(383 downto 352) => xbar_to_m11_couplers_AWADDR(383 downto 352),
      m_axi_awaddr(351 downto 320) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      m_axi_awaddr(319 downto 288) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(23 downto 22) => xbar_to_m11_couplers_AWBURST(23 downto 22),
      m_axi_awburst(21 downto 20) => xbar_to_m10_couplers_AWBURST(21 downto 20),
      m_axi_awburst(19 downto 18) => xbar_to_m09_couplers_AWBURST(19 downto 18),
      m_axi_awburst(17 downto 16) => xbar_to_m08_couplers_AWBURST(17 downto 16),
      m_axi_awburst(15 downto 14) => xbar_to_m07_couplers_AWBURST(15 downto 14),
      m_axi_awburst(13 downto 12) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      m_axi_awburst(11 downto 10) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      m_axi_awburst(9 downto 8) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      m_axi_awburst(7 downto 6) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(47 downto 44) => xbar_to_m11_couplers_AWCACHE(47 downto 44),
      m_axi_awcache(43 downto 40) => xbar_to_m10_couplers_AWCACHE(43 downto 40),
      m_axi_awcache(39 downto 36) => xbar_to_m09_couplers_AWCACHE(39 downto 36),
      m_axi_awcache(35 downto 32) => xbar_to_m08_couplers_AWCACHE(35 downto 32),
      m_axi_awcache(31 downto 28) => xbar_to_m07_couplers_AWCACHE(31 downto 28),
      m_axi_awcache(27 downto 24) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      m_axi_awcache(23 downto 20) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      m_axi_awcache(19 downto 16) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      m_axi_awcache(15 downto 12) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(143 downto 132) => xbar_to_m11_couplers_AWID(143 downto 132),
      m_axi_awid(131 downto 120) => xbar_to_m10_couplers_AWID(131 downto 120),
      m_axi_awid(119 downto 108) => xbar_to_m09_couplers_AWID(119 downto 108),
      m_axi_awid(107 downto 96) => xbar_to_m08_couplers_AWID(107 downto 96),
      m_axi_awid(95 downto 84) => xbar_to_m07_couplers_AWID(95 downto 84),
      m_axi_awid(83 downto 72) => xbar_to_m06_couplers_AWID(83 downto 72),
      m_axi_awid(71 downto 60) => xbar_to_m05_couplers_AWID(71 downto 60),
      m_axi_awid(59 downto 48) => xbar_to_m04_couplers_AWID(59 downto 48),
      m_axi_awid(47 downto 36) => xbar_to_m03_couplers_AWID(47 downto 36),
      m_axi_awid(35 downto 24) => xbar_to_m02_couplers_AWID(35 downto 24),
      m_axi_awid(23 downto 12) => xbar_to_m01_couplers_AWID(23 downto 12),
      m_axi_awid(11 downto 0) => xbar_to_m00_couplers_AWID(11 downto 0),
      m_axi_awlen(95 downto 88) => xbar_to_m11_couplers_AWLEN(95 downto 88),
      m_axi_awlen(87 downto 80) => xbar_to_m10_couplers_AWLEN(87 downto 80),
      m_axi_awlen(79 downto 72) => xbar_to_m09_couplers_AWLEN(79 downto 72),
      m_axi_awlen(71 downto 64) => xbar_to_m08_couplers_AWLEN(71 downto 64),
      m_axi_awlen(63 downto 56) => xbar_to_m07_couplers_AWLEN(63 downto 56),
      m_axi_awlen(55 downto 48) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      m_axi_awlen(47 downto 40) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      m_axi_awlen(39 downto 32) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      m_axi_awlen(31 downto 24) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(11) => xbar_to_m11_couplers_AWLOCK(11),
      m_axi_awlock(10) => xbar_to_m10_couplers_AWLOCK(10),
      m_axi_awlock(9) => xbar_to_m09_couplers_AWLOCK(9),
      m_axi_awlock(8) => xbar_to_m08_couplers_AWLOCK(8),
      m_axi_awlock(7) => xbar_to_m07_couplers_AWLOCK(7),
      m_axi_awlock(6) => xbar_to_m06_couplers_AWLOCK(6),
      m_axi_awlock(5) => xbar_to_m05_couplers_AWLOCK(5),
      m_axi_awlock(4) => xbar_to_m04_couplers_AWLOCK(4),
      m_axi_awlock(3) => xbar_to_m03_couplers_AWLOCK(3),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(35 downto 33) => xbar_to_m11_couplers_AWPROT(35 downto 33),
      m_axi_awprot(32 downto 30) => xbar_to_m10_couplers_AWPROT(32 downto 30),
      m_axi_awprot(29 downto 27) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      m_axi_awprot(26 downto 24) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      m_axi_awprot(23 downto 21) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(47 downto 44) => xbar_to_m11_couplers_AWQOS(47 downto 44),
      m_axi_awqos(43 downto 40) => xbar_to_m10_couplers_AWQOS(43 downto 40),
      m_axi_awqos(39 downto 36) => xbar_to_m09_couplers_AWQOS(39 downto 36),
      m_axi_awqos(35 downto 32) => xbar_to_m08_couplers_AWQOS(35 downto 32),
      m_axi_awqos(31 downto 28) => xbar_to_m07_couplers_AWQOS(31 downto 28),
      m_axi_awqos(27 downto 24) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      m_axi_awqos(23 downto 20) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      m_axi_awqos(19 downto 16) => xbar_to_m04_couplers_AWQOS(19 downto 16),
      m_axi_awqos(15 downto 12) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      m_axi_awqos(11 downto 8) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(11) => xbar_to_m11_couplers_AWREADY,
      m_axi_awready(10) => xbar_to_m10_couplers_AWREADY,
      m_axi_awready(9) => xbar_to_m09_couplers_AWREADY,
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY,
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY,
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(47 downto 44) => xbar_to_m11_couplers_AWREGION(47 downto 44),
      m_axi_awregion(43 downto 40) => xbar_to_m10_couplers_AWREGION(43 downto 40),
      m_axi_awregion(39 downto 36) => xbar_to_m09_couplers_AWREGION(39 downto 36),
      m_axi_awregion(35 downto 32) => xbar_to_m08_couplers_AWREGION(35 downto 32),
      m_axi_awregion(31 downto 28) => xbar_to_m07_couplers_AWREGION(31 downto 28),
      m_axi_awregion(27 downto 24) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      m_axi_awregion(23 downto 20) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      m_axi_awregion(19 downto 16) => xbar_to_m04_couplers_AWREGION(19 downto 16),
      m_axi_awregion(15 downto 12) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      m_axi_awregion(11 downto 8) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(35 downto 33) => xbar_to_m11_couplers_AWSIZE(35 downto 33),
      m_axi_awsize(32 downto 30) => xbar_to_m10_couplers_AWSIZE(32 downto 30),
      m_axi_awsize(29 downto 27) => xbar_to_m09_couplers_AWSIZE(29 downto 27),
      m_axi_awsize(26 downto 24) => xbar_to_m08_couplers_AWSIZE(26 downto 24),
      m_axi_awsize(23 downto 21) => xbar_to_m07_couplers_AWSIZE(23 downto 21),
      m_axi_awsize(20 downto 18) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      m_axi_awsize(17 downto 15) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      m_axi_awsize(14 downto 12) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      m_axi_awsize(11 downto 9) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(11) => xbar_to_m11_couplers_AWVALID(11),
      m_axi_awvalid(10) => xbar_to_m10_couplers_AWVALID(10),
      m_axi_awvalid(9) => xbar_to_m09_couplers_AWVALID(9),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(143 downto 132) => xbar_to_m11_couplers_BID(11 downto 0),
      m_axi_bid(131 downto 120) => xbar_to_m10_couplers_BID(11 downto 0),
      m_axi_bid(119 downto 108) => xbar_to_m09_couplers_BID(11 downto 0),
      m_axi_bid(107 downto 96) => xbar_to_m08_couplers_BID(11 downto 0),
      m_axi_bid(95 downto 84) => xbar_to_m07_couplers_BID(11 downto 0),
      m_axi_bid(83) => xbar_to_m06_couplers_BID,
      m_axi_bid(82) => xbar_to_m06_couplers_BID,
      m_axi_bid(81) => xbar_to_m06_couplers_BID,
      m_axi_bid(80) => xbar_to_m06_couplers_BID,
      m_axi_bid(79) => xbar_to_m06_couplers_BID,
      m_axi_bid(78) => xbar_to_m06_couplers_BID,
      m_axi_bid(77) => xbar_to_m06_couplers_BID,
      m_axi_bid(76) => xbar_to_m06_couplers_BID,
      m_axi_bid(75) => xbar_to_m06_couplers_BID,
      m_axi_bid(74) => xbar_to_m06_couplers_BID,
      m_axi_bid(73) => xbar_to_m06_couplers_BID,
      m_axi_bid(72) => xbar_to_m06_couplers_BID,
      m_axi_bid(71) => xbar_to_m05_couplers_BID,
      m_axi_bid(70) => xbar_to_m05_couplers_BID,
      m_axi_bid(69) => xbar_to_m05_couplers_BID,
      m_axi_bid(68) => xbar_to_m05_couplers_BID,
      m_axi_bid(67) => xbar_to_m05_couplers_BID,
      m_axi_bid(66) => xbar_to_m05_couplers_BID,
      m_axi_bid(65) => xbar_to_m05_couplers_BID,
      m_axi_bid(64) => xbar_to_m05_couplers_BID,
      m_axi_bid(63) => xbar_to_m05_couplers_BID,
      m_axi_bid(62) => xbar_to_m05_couplers_BID,
      m_axi_bid(61) => xbar_to_m05_couplers_BID,
      m_axi_bid(60) => xbar_to_m05_couplers_BID,
      m_axi_bid(59) => xbar_to_m04_couplers_BID,
      m_axi_bid(58) => xbar_to_m04_couplers_BID,
      m_axi_bid(57) => xbar_to_m04_couplers_BID,
      m_axi_bid(56) => xbar_to_m04_couplers_BID,
      m_axi_bid(55) => xbar_to_m04_couplers_BID,
      m_axi_bid(54) => xbar_to_m04_couplers_BID,
      m_axi_bid(53) => xbar_to_m04_couplers_BID,
      m_axi_bid(52) => xbar_to_m04_couplers_BID,
      m_axi_bid(51) => xbar_to_m04_couplers_BID,
      m_axi_bid(50) => xbar_to_m04_couplers_BID,
      m_axi_bid(49) => xbar_to_m04_couplers_BID,
      m_axi_bid(48) => xbar_to_m04_couplers_BID,
      m_axi_bid(47) => xbar_to_m03_couplers_BID,
      m_axi_bid(46) => xbar_to_m03_couplers_BID,
      m_axi_bid(45) => xbar_to_m03_couplers_BID,
      m_axi_bid(44) => xbar_to_m03_couplers_BID,
      m_axi_bid(43) => xbar_to_m03_couplers_BID,
      m_axi_bid(42) => xbar_to_m03_couplers_BID,
      m_axi_bid(41) => xbar_to_m03_couplers_BID,
      m_axi_bid(40) => xbar_to_m03_couplers_BID,
      m_axi_bid(39) => xbar_to_m03_couplers_BID,
      m_axi_bid(38) => xbar_to_m03_couplers_BID,
      m_axi_bid(37) => xbar_to_m03_couplers_BID,
      m_axi_bid(36) => xbar_to_m03_couplers_BID,
      m_axi_bid(35 downto 24) => xbar_to_m02_couplers_BID(11 downto 0),
      m_axi_bid(23) => xbar_to_m01_couplers_BID,
      m_axi_bid(22) => xbar_to_m01_couplers_BID,
      m_axi_bid(21) => xbar_to_m01_couplers_BID,
      m_axi_bid(20) => xbar_to_m01_couplers_BID,
      m_axi_bid(19) => xbar_to_m01_couplers_BID,
      m_axi_bid(18) => xbar_to_m01_couplers_BID,
      m_axi_bid(17) => xbar_to_m01_couplers_BID,
      m_axi_bid(16) => xbar_to_m01_couplers_BID,
      m_axi_bid(15) => xbar_to_m01_couplers_BID,
      m_axi_bid(14) => xbar_to_m01_couplers_BID,
      m_axi_bid(13) => xbar_to_m01_couplers_BID,
      m_axi_bid(12) => xbar_to_m01_couplers_BID,
      m_axi_bid(11 downto 0) => xbar_to_m00_couplers_BID(11 downto 0),
      m_axi_bready(11) => xbar_to_m11_couplers_BREADY(11),
      m_axi_bready(10) => xbar_to_m10_couplers_BREADY(10),
      m_axi_bready(9) => xbar_to_m09_couplers_BREADY(9),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(23 downto 22) => xbar_to_m11_couplers_BRESP(1 downto 0),
      m_axi_bresp(21 downto 20) => xbar_to_m10_couplers_BRESP(1 downto 0),
      m_axi_bresp(19 downto 18) => xbar_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(17 downto 16) => xbar_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13) => xbar_to_m06_couplers_BRESP,
      m_axi_bresp(12) => xbar_to_m06_couplers_BRESP,
      m_axi_bresp(11) => xbar_to_m05_couplers_BRESP,
      m_axi_bresp(10) => xbar_to_m05_couplers_BRESP,
      m_axi_bresp(9) => xbar_to_m04_couplers_BRESP,
      m_axi_bresp(8) => xbar_to_m04_couplers_BRESP,
      m_axi_bresp(7) => xbar_to_m03_couplers_BRESP,
      m_axi_bresp(6) => xbar_to_m03_couplers_BRESP,
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(2) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(11) => xbar_to_m11_couplers_BVALID,
      m_axi_bvalid(10) => xbar_to_m10_couplers_BVALID,
      m_axi_bvalid(9) => xbar_to_m09_couplers_BVALID,
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID,
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(383 downto 352) => xbar_to_m11_couplers_RDATA(31 downto 0),
      m_axi_rdata(351 downto 320) => xbar_to_m10_couplers_RDATA(31 downto 0),
      m_axi_rdata(319 downto 288) => xbar_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(287 downto 256) => xbar_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(222) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(221) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(220) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(219) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(218) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(217) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(216) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(215) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(214) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(213) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(212) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(211) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(210) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(209) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(208) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(207) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(206) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(205) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(204) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(203) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(202) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(201) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(200) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(199) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(198) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(197) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(196) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(195) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(194) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(193) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(192) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(191) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(190) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(189) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(188) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(187) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(186) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(185) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(184) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(183) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(182) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(181) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(180) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(179) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(178) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(177) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(176) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(175) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(174) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(173) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(172) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(171) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(170) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(169) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(168) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(167) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(166) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(165) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(164) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(163) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(162) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(161) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(160) => xbar_to_m05_couplers_RDATA,
      m_axi_rdata(159) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(158) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(157) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(156) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(155) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(154) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(153) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(152) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(151) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(150) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(149) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(148) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(147) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(146) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(145) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(144) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(143) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(142) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(141) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(140) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(139) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(138) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(137) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(136) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(135) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(134) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(133) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(132) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(131) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(130) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(129) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(128) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(127) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(126) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(125) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(124) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(123) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(122) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(121) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(120) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(119) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(118) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(117) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(116) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(115) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(114) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(113) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(112) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(111) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(110) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(109) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(108) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(107) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(106) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(105) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(104) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(103) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(102) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(101) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(100) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(99) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(98) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(97) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(96) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(62) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(61) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(60) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(59) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(58) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(57) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(56) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(55) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(54) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(53) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(52) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(51) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(50) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(49) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(48) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(47) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(46) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(45) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(44) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(43) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(42) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(41) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(40) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(39) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(38) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(37) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(36) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(35) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(34) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(33) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(32) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(143 downto 132) => xbar_to_m11_couplers_RID(11 downto 0),
      m_axi_rid(131 downto 120) => xbar_to_m10_couplers_RID(11 downto 0),
      m_axi_rid(119 downto 108) => xbar_to_m09_couplers_RID(11 downto 0),
      m_axi_rid(107 downto 96) => xbar_to_m08_couplers_RID(11 downto 0),
      m_axi_rid(95 downto 84) => xbar_to_m07_couplers_RID(11 downto 0),
      m_axi_rid(83) => xbar_to_m06_couplers_RID,
      m_axi_rid(82) => xbar_to_m06_couplers_RID,
      m_axi_rid(81) => xbar_to_m06_couplers_RID,
      m_axi_rid(80) => xbar_to_m06_couplers_RID,
      m_axi_rid(79) => xbar_to_m06_couplers_RID,
      m_axi_rid(78) => xbar_to_m06_couplers_RID,
      m_axi_rid(77) => xbar_to_m06_couplers_RID,
      m_axi_rid(76) => xbar_to_m06_couplers_RID,
      m_axi_rid(75) => xbar_to_m06_couplers_RID,
      m_axi_rid(74) => xbar_to_m06_couplers_RID,
      m_axi_rid(73) => xbar_to_m06_couplers_RID,
      m_axi_rid(72) => xbar_to_m06_couplers_RID,
      m_axi_rid(71) => xbar_to_m05_couplers_RID,
      m_axi_rid(70) => xbar_to_m05_couplers_RID,
      m_axi_rid(69) => xbar_to_m05_couplers_RID,
      m_axi_rid(68) => xbar_to_m05_couplers_RID,
      m_axi_rid(67) => xbar_to_m05_couplers_RID,
      m_axi_rid(66) => xbar_to_m05_couplers_RID,
      m_axi_rid(65) => xbar_to_m05_couplers_RID,
      m_axi_rid(64) => xbar_to_m05_couplers_RID,
      m_axi_rid(63) => xbar_to_m05_couplers_RID,
      m_axi_rid(62) => xbar_to_m05_couplers_RID,
      m_axi_rid(61) => xbar_to_m05_couplers_RID,
      m_axi_rid(60) => xbar_to_m05_couplers_RID,
      m_axi_rid(59) => xbar_to_m04_couplers_RID,
      m_axi_rid(58) => xbar_to_m04_couplers_RID,
      m_axi_rid(57) => xbar_to_m04_couplers_RID,
      m_axi_rid(56) => xbar_to_m04_couplers_RID,
      m_axi_rid(55) => xbar_to_m04_couplers_RID,
      m_axi_rid(54) => xbar_to_m04_couplers_RID,
      m_axi_rid(53) => xbar_to_m04_couplers_RID,
      m_axi_rid(52) => xbar_to_m04_couplers_RID,
      m_axi_rid(51) => xbar_to_m04_couplers_RID,
      m_axi_rid(50) => xbar_to_m04_couplers_RID,
      m_axi_rid(49) => xbar_to_m04_couplers_RID,
      m_axi_rid(48) => xbar_to_m04_couplers_RID,
      m_axi_rid(47) => xbar_to_m03_couplers_RID,
      m_axi_rid(46) => xbar_to_m03_couplers_RID,
      m_axi_rid(45) => xbar_to_m03_couplers_RID,
      m_axi_rid(44) => xbar_to_m03_couplers_RID,
      m_axi_rid(43) => xbar_to_m03_couplers_RID,
      m_axi_rid(42) => xbar_to_m03_couplers_RID,
      m_axi_rid(41) => xbar_to_m03_couplers_RID,
      m_axi_rid(40) => xbar_to_m03_couplers_RID,
      m_axi_rid(39) => xbar_to_m03_couplers_RID,
      m_axi_rid(38) => xbar_to_m03_couplers_RID,
      m_axi_rid(37) => xbar_to_m03_couplers_RID,
      m_axi_rid(36) => xbar_to_m03_couplers_RID,
      m_axi_rid(35 downto 24) => xbar_to_m02_couplers_RID(11 downto 0),
      m_axi_rid(23) => xbar_to_m01_couplers_RID,
      m_axi_rid(22) => xbar_to_m01_couplers_RID,
      m_axi_rid(21) => xbar_to_m01_couplers_RID,
      m_axi_rid(20) => xbar_to_m01_couplers_RID,
      m_axi_rid(19) => xbar_to_m01_couplers_RID,
      m_axi_rid(18) => xbar_to_m01_couplers_RID,
      m_axi_rid(17) => xbar_to_m01_couplers_RID,
      m_axi_rid(16) => xbar_to_m01_couplers_RID,
      m_axi_rid(15) => xbar_to_m01_couplers_RID,
      m_axi_rid(14) => xbar_to_m01_couplers_RID,
      m_axi_rid(13) => xbar_to_m01_couplers_RID,
      m_axi_rid(12) => xbar_to_m01_couplers_RID,
      m_axi_rid(11 downto 0) => xbar_to_m00_couplers_RID(11 downto 0),
      m_axi_rlast(11) => xbar_to_m11_couplers_RLAST,
      m_axi_rlast(10) => xbar_to_m10_couplers_RLAST,
      m_axi_rlast(9) => xbar_to_m09_couplers_RLAST,
      m_axi_rlast(8) => xbar_to_m08_couplers_RLAST,
      m_axi_rlast(7) => xbar_to_m07_couplers_RLAST,
      m_axi_rlast(6) => xbar_to_m06_couplers_RLAST,
      m_axi_rlast(5) => xbar_to_m05_couplers_RLAST,
      m_axi_rlast(4) => xbar_to_m04_couplers_RLAST,
      m_axi_rlast(3) => xbar_to_m03_couplers_RLAST,
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST,
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(11) => xbar_to_m11_couplers_RREADY(11),
      m_axi_rready(10) => xbar_to_m10_couplers_RREADY(10),
      m_axi_rready(9) => xbar_to_m09_couplers_RREADY(9),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(23 downto 22) => xbar_to_m11_couplers_RRESP(1 downto 0),
      m_axi_rresp(21 downto 20) => xbar_to_m10_couplers_RRESP(1 downto 0),
      m_axi_rresp(19 downto 18) => xbar_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(17 downto 16) => xbar_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13) => xbar_to_m06_couplers_RRESP,
      m_axi_rresp(12) => xbar_to_m06_couplers_RRESP,
      m_axi_rresp(11) => xbar_to_m05_couplers_RRESP,
      m_axi_rresp(10) => xbar_to_m05_couplers_RRESP,
      m_axi_rresp(9) => xbar_to_m04_couplers_RRESP,
      m_axi_rresp(8) => xbar_to_m04_couplers_RRESP,
      m_axi_rresp(7) => xbar_to_m03_couplers_RRESP,
      m_axi_rresp(6) => xbar_to_m03_couplers_RRESP,
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(2) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(11) => xbar_to_m11_couplers_RVALID,
      m_axi_rvalid(10) => xbar_to_m10_couplers_RVALID,
      m_axi_rvalid(9) => xbar_to_m09_couplers_RVALID,
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID,
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(383 downto 352) => xbar_to_m11_couplers_WDATA(383 downto 352),
      m_axi_wdata(351 downto 320) => xbar_to_m10_couplers_WDATA(351 downto 320),
      m_axi_wdata(319 downto 288) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(11) => xbar_to_m11_couplers_WLAST(11),
      m_axi_wlast(10) => xbar_to_m10_couplers_WLAST(10),
      m_axi_wlast(9) => xbar_to_m09_couplers_WLAST(9),
      m_axi_wlast(8) => xbar_to_m08_couplers_WLAST(8),
      m_axi_wlast(7) => xbar_to_m07_couplers_WLAST(7),
      m_axi_wlast(6) => xbar_to_m06_couplers_WLAST(6),
      m_axi_wlast(5) => xbar_to_m05_couplers_WLAST(5),
      m_axi_wlast(4) => xbar_to_m04_couplers_WLAST(4),
      m_axi_wlast(3) => xbar_to_m03_couplers_WLAST(3),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(11) => xbar_to_m11_couplers_WREADY,
      m_axi_wready(10) => xbar_to_m10_couplers_WREADY,
      m_axi_wready(9) => xbar_to_m09_couplers_WREADY,
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY,
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY,
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(47 downto 44) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      m_axi_wstrb(43 downto 40) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      m_axi_wstrb(39 downto 36) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(11) => xbar_to_m11_couplers_WVALID(11),
      m_axi_wvalid(10) => xbar_to_m10_couplers_WVALID(10),
      m_axi_wvalid(9) => xbar_to_m09_couplers_WVALID(9),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_xbar_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_xbar_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_xbar_BID(11 downto 0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_xbar_RID(11 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Processing_System_imp_FN0UVH is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IIC_0_0_scl_i : in STD_LOGIC;
    IIC_0_0_scl_o : out STD_LOGIC;
    IIC_0_0_scl_t : out STD_LOGIC;
    IIC_0_0_sda_i : in STD_LOGIC;
    IIC_0_0_sda_o : out STD_LOGIC;
    IIC_0_0_sda_t : out STD_LOGIC;
    IRQ_F2P : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC;
    M01_AXI_arburst : out STD_LOGIC;
    M01_AXI_arcache : out STD_LOGIC;
    M01_AXI_arid : out STD_LOGIC;
    M01_AXI_arlen : out STD_LOGIC;
    M01_AXI_arlock : out STD_LOGIC;
    M01_AXI_arprot : out STD_LOGIC;
    M01_AXI_arqos : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arregion : out STD_LOGIC;
    M01_AXI_arsize : out STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC;
    M01_AXI_awburst : out STD_LOGIC;
    M01_AXI_awcache : out STD_LOGIC;
    M01_AXI_awid : out STD_LOGIC;
    M01_AXI_awlen : out STD_LOGIC;
    M01_AXI_awlock : out STD_LOGIC;
    M01_AXI_awprot : out STD_LOGIC;
    M01_AXI_awqos : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awregion : out STD_LOGIC;
    M01_AXI_awsize : out STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC;
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC;
    M01_AXI_rid : in STD_LOGIC;
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC;
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC;
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC;
    M03_AXI_arburst : out STD_LOGIC;
    M03_AXI_arcache : out STD_LOGIC;
    M03_AXI_arid : out STD_LOGIC;
    M03_AXI_arlen : out STD_LOGIC;
    M03_AXI_arlock : out STD_LOGIC;
    M03_AXI_arprot : out STD_LOGIC;
    M03_AXI_arqos : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arregion : out STD_LOGIC;
    M03_AXI_arsize : out STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC;
    M03_AXI_awburst : out STD_LOGIC;
    M03_AXI_awcache : out STD_LOGIC;
    M03_AXI_awid : out STD_LOGIC;
    M03_AXI_awlen : out STD_LOGIC;
    M03_AXI_awlock : out STD_LOGIC;
    M03_AXI_awprot : out STD_LOGIC;
    M03_AXI_awqos : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awregion : out STD_LOGIC;
    M03_AXI_awsize : out STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bid : in STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC;
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC;
    M03_AXI_rid : in STD_LOGIC;
    M03_AXI_rlast : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC;
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC;
    M03_AXI_wlast : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC;
    M03_AXI_wvalid : out STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC;
    M04_AXI_arburst : out STD_LOGIC;
    M04_AXI_arcache : out STD_LOGIC;
    M04_AXI_arid : out STD_LOGIC;
    M04_AXI_arlen : out STD_LOGIC;
    M04_AXI_arlock : out STD_LOGIC;
    M04_AXI_arprot : out STD_LOGIC;
    M04_AXI_arqos : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arregion : out STD_LOGIC;
    M04_AXI_arsize : out STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC;
    M04_AXI_awburst : out STD_LOGIC;
    M04_AXI_awcache : out STD_LOGIC;
    M04_AXI_awid : out STD_LOGIC;
    M04_AXI_awlen : out STD_LOGIC;
    M04_AXI_awlock : out STD_LOGIC;
    M04_AXI_awprot : out STD_LOGIC;
    M04_AXI_awqos : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awregion : out STD_LOGIC;
    M04_AXI_awsize : out STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bid : in STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC;
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC;
    M04_AXI_rid : in STD_LOGIC;
    M04_AXI_rlast : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC;
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC;
    M04_AXI_wlast : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC;
    M04_AXI_wvalid : out STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC;
    M05_AXI_arburst : out STD_LOGIC;
    M05_AXI_arcache : out STD_LOGIC;
    M05_AXI_arid : out STD_LOGIC;
    M05_AXI_arlen : out STD_LOGIC;
    M05_AXI_arlock : out STD_LOGIC;
    M05_AXI_arprot : out STD_LOGIC;
    M05_AXI_arqos : out STD_LOGIC;
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arregion : out STD_LOGIC;
    M05_AXI_arsize : out STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC;
    M05_AXI_awburst : out STD_LOGIC;
    M05_AXI_awcache : out STD_LOGIC;
    M05_AXI_awid : out STD_LOGIC;
    M05_AXI_awlen : out STD_LOGIC;
    M05_AXI_awlock : out STD_LOGIC;
    M05_AXI_awprot : out STD_LOGIC;
    M05_AXI_awqos : out STD_LOGIC;
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awregion : out STD_LOGIC;
    M05_AXI_awsize : out STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bid : in STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC;
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC;
    M05_AXI_rid : in STD_LOGIC;
    M05_AXI_rlast : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC;
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC;
    M05_AXI_wlast : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC;
    M05_AXI_wvalid : out STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC;
    M06_AXI_arburst : out STD_LOGIC;
    M06_AXI_arcache : out STD_LOGIC;
    M06_AXI_arid : out STD_LOGIC;
    M06_AXI_arlen : out STD_LOGIC;
    M06_AXI_arlock : out STD_LOGIC;
    M06_AXI_arprot : out STD_LOGIC;
    M06_AXI_arqos : out STD_LOGIC;
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arregion : out STD_LOGIC;
    M06_AXI_arsize : out STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC;
    M06_AXI_awburst : out STD_LOGIC;
    M06_AXI_awcache : out STD_LOGIC;
    M06_AXI_awid : out STD_LOGIC;
    M06_AXI_awlen : out STD_LOGIC;
    M06_AXI_awlock : out STD_LOGIC;
    M06_AXI_awprot : out STD_LOGIC;
    M06_AXI_awqos : out STD_LOGIC;
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awregion : out STD_LOGIC;
    M06_AXI_awsize : out STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bid : in STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC;
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC;
    M06_AXI_rid : in STD_LOGIC;
    M06_AXI_rlast : in STD_LOGIC;
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC;
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC;
    M06_AXI_wlast : out STD_LOGIC;
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC;
    M06_AXI_wvalid : out STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M08_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M08_AXI_arlock : out STD_LOGIC;
    M08_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M08_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M08_AXI_awlock : out STD_LOGIC;
    M08_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M08_AXI_rlast : in STD_LOGIC;
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wlast : out STD_LOGIC;
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M09_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M09_AXI_arlock : out STD_LOGIC;
    M09_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M09_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M09_AXI_awlock : out STD_LOGIC;
    M09_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M09_AXI_rlast : in STD_LOGIC;
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wlast : out STD_LOGIC;
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_arready : in STD_LOGIC;
    M10_AXI_arvalid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_awready : in STD_LOGIC;
    M10_AXI_awvalid : out STD_LOGIC;
    M10_AXI_bready : out STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC;
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC;
    M10_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_wvalid : out STD_LOGIC;
    M11_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_arready : in STD_LOGIC;
    M11_AXI_arvalid : out STD_LOGIC;
    M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_awready : in STD_LOGIC;
    M11_AXI_awvalid : out STD_LOGIC;
    M11_AXI_bready : out STD_LOGIC;
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_bvalid : in STD_LOGIC;
    M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_rready : out STD_LOGIC;
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rvalid : in STD_LOGIC;
    M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_wready : in STD_LOGIC;
    M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_wvalid : out STD_LOGIC;
    S_AXI_HP0_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_awready : out STD_LOGIC;
    S_AXI_HP0_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_awvalid : in STD_LOGIC;
    S_AXI_HP0_bready : in STD_LOGIC;
    S_AXI_HP0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_bvalid : out STD_LOGIC;
    S_AXI_HP0_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_wlast : in STD_LOGIC;
    S_AXI_HP0_wready : out STD_LOGIC;
    S_AXI_HP0_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_wvalid : in STD_LOGIC;
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn1 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Processing_System_imp_FN0UVH;

architecture STRUCTURE of Processing_System_imp_FN0UVH is
  component design_2_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_proc_sys_reset_0_0;
  component design_2_processing_system7_0_0 is
  port (
    ENET0_PTP_DELAY_REQ_RX : out STD_LOGIC;
    ENET0_PTP_DELAY_REQ_TX : out STD_LOGIC;
    ENET0_PTP_PDELAY_REQ_RX : out STD_LOGIC;
    ENET0_PTP_PDELAY_REQ_TX : out STD_LOGIC;
    ENET0_PTP_PDELAY_RESP_RX : out STD_LOGIC;
    ENET0_PTP_PDELAY_RESP_TX : out STD_LOGIC;
    ENET0_PTP_SYNC_FRAME_RX : out STD_LOGIC;
    ENET0_PTP_SYNC_FRAME_TX : out STD_LOGIC;
    ENET0_SOF_RX : out STD_LOGIC;
    ENET0_SOF_TX : out STD_LOGIC;
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 0 to 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component design_2_processing_system7_0_0;
  signal Conn1_ARADDR : STD_LOGIC;
  signal Conn1_ARBURST : STD_LOGIC;
  signal Conn1_ARCACHE : STD_LOGIC;
  signal Conn1_ARID : STD_LOGIC;
  signal Conn1_ARLEN : STD_LOGIC;
  signal Conn1_ARLOCK : STD_LOGIC;
  signal Conn1_ARPROT : STD_LOGIC;
  signal Conn1_ARQOS : STD_LOGIC;
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARREGION : STD_LOGIC;
  signal Conn1_ARSIZE : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC;
  signal Conn1_AWADDR : STD_LOGIC;
  signal Conn1_AWBURST : STD_LOGIC;
  signal Conn1_AWCACHE : STD_LOGIC;
  signal Conn1_AWID : STD_LOGIC;
  signal Conn1_AWLEN : STD_LOGIC;
  signal Conn1_AWLOCK : STD_LOGIC;
  signal Conn1_AWPROT : STD_LOGIC;
  signal Conn1_AWQOS : STD_LOGIC;
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWREGION : STD_LOGIC;
  signal Conn1_AWSIZE : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BID : STD_LOGIC;
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC;
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC;
  signal Conn1_RID : STD_LOGIC;
  signal Conn1_RLAST : STD_LOGIC;
  signal Conn1_RREADY : STD_LOGIC;
  signal Conn1_RRESP : STD_LOGIC;
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC;
  signal Conn1_WLAST : STD_LOGIC;
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC;
  signal Conn1_WVALID : STD_LOGIC;
  signal Conn2_SCL_I : STD_LOGIC;
  signal Conn2_SCL_O : STD_LOGIC;
  signal Conn2_SCL_T : STD_LOGIC;
  signal Conn2_SDA_I : STD_LOGIC;
  signal Conn2_SDA_O : STD_LOGIC;
  signal Conn2_SDA_T : STD_LOGIC;
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC;
  signal Conn3_ARVALID : STD_LOGIC;
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC;
  signal Conn3_AWVALID : STD_LOGIC;
  signal Conn3_BREADY : STD_LOGIC;
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC;
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RREADY : STD_LOGIC;
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC;
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WREADY : STD_LOGIC;
  signal Conn3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_WVALID : STD_LOGIC;
  signal Conn4_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn4_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn4_ARLOCK : STD_LOGIC;
  signal Conn4_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_ARREADY : STD_LOGIC;
  signal Conn4_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_ARVALID : STD_LOGIC;
  signal Conn4_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn4_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn4_AWLOCK : STD_LOGIC;
  signal Conn4_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_AWREADY : STD_LOGIC;
  signal Conn4_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_AWVALID : STD_LOGIC;
  signal Conn4_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn4_BREADY : STD_LOGIC;
  signal Conn4_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_BVALID : STD_LOGIC;
  signal Conn4_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn4_RLAST : STD_LOGIC;
  signal Conn4_RREADY : STD_LOGIC;
  signal Conn4_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_RVALID : STD_LOGIC;
  signal Conn4_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_WLAST : STD_LOGIC;
  signal Conn4_WREADY : STD_LOGIC;
  signal Conn4_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_WVALID : STD_LOGIC;
  signal Conn5_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn5_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn5_ARLOCK : STD_LOGIC;
  signal Conn5_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn5_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_ARREADY : STD_LOGIC;
  signal Conn5_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn5_ARVALID : STD_LOGIC;
  signal Conn5_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn5_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn5_AWLOCK : STD_LOGIC;
  signal Conn5_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn5_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_AWREADY : STD_LOGIC;
  signal Conn5_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn5_AWVALID : STD_LOGIC;
  signal Conn5_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn5_BREADY : STD_LOGIC;
  signal Conn5_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_BVALID : STD_LOGIC;
  signal Conn5_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn5_RLAST : STD_LOGIC;
  signal Conn5_RREADY : STD_LOGIC;
  signal Conn5_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_RVALID : STD_LOGIC;
  signal Conn5_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_WLAST : STD_LOGIC;
  signal Conn5_WREADY : STD_LOGIC;
  signal Conn5_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_WVALID : STD_LOGIC;
  signal Conn6_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_ARREADY : STD_LOGIC;
  signal Conn6_ARVALID : STD_LOGIC;
  signal Conn6_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_AWREADY : STD_LOGIC;
  signal Conn6_AWVALID : STD_LOGIC;
  signal Conn6_BREADY : STD_LOGIC;
  signal Conn6_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn6_BVALID : STD_LOGIC;
  signal Conn6_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_RREADY : STD_LOGIC;
  signal Conn6_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn6_RVALID : STD_LOGIC;
  signal Conn6_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_WREADY : STD_LOGIC;
  signal Conn6_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn6_WVALID : STD_LOGIC;
  signal Conn7_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_ARREADY : STD_LOGIC;
  signal Conn7_ARVALID : STD_LOGIC;
  signal Conn7_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_AWREADY : STD_LOGIC;
  signal Conn7_AWVALID : STD_LOGIC;
  signal Conn7_BREADY : STD_LOGIC;
  signal Conn7_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn7_BVALID : STD_LOGIC;
  signal Conn7_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_RREADY : STD_LOGIC;
  signal Conn7_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn7_RVALID : STD_LOGIC;
  signal Conn7_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_WREADY : STD_LOGIC;
  signal Conn7_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn7_WVALID : STD_LOGIC;
  signal S_AXI_HP0_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_HP0_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_HP0_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_HP0_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_HP0_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_HP0_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_HP0_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_HP0_1_AWREADY : STD_LOGIC;
  signal S_AXI_HP0_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_HP0_1_AWVALID : STD_LOGIC;
  signal S_AXI_HP0_1_BREADY : STD_LOGIC;
  signal S_AXI_HP0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_HP0_1_BVALID : STD_LOGIC;
  signal S_AXI_HP0_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXI_HP0_1_WLAST : STD_LOGIC;
  signal S_AXI_HP0_1_WREADY : STD_LOGIC;
  signal S_AXI_HP0_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_HP0_1_WVALID : STD_LOGIC;
  signal axi_dma_0_s2mm_introut : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARBURST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARCACHE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARLEN : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARLOCK : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARPROT : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARQOS : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARREGION : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARSIZE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWBURST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWCACHE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWLEN : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWLOCK : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWPROT : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWQOS : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWREGION : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWSIZE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_BID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_RID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_RLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_WLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARBURST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARCACHE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARLEN : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARLOCK : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARPROT : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARQOS : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARREGION : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARSIZE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWBURST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWCACHE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWLEN : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWLOCK : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWPROT : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWQOS : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWREGION : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWSIZE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_BID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_BRESP : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_RDATA : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_RID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_RLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_RRESP : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_WDATA : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_WLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARBURST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARCACHE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARLEN : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARLOCK : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARPROT : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARQOS : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARREGION : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARSIZE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWBURST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWCACHE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWLEN : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWLOCK : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWPROT : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWQOS : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWREGION : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWSIZE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_BID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_BRESP : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_RDATA : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_RID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_RLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_RRESP : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_WDATA : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_WLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARBURST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARCACHE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARLEN : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARLOCK : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARPROT : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARQOS : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARREGION : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARSIZE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWBURST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWCACHE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWLEN : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWLOCK : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWPROT : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWQOS : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWREGION : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWSIZE : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_BID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_BRESP : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_RDATA : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_RID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_RLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_RRESP : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_WDATA : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_WLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_WVALID : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_ENET0_PTP_DELAY_REQ_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_PTP_DELAY_REQ_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_PTP_PDELAY_REQ_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_PTP_PDELAY_REQ_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_PTP_PDELAY_RESP_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_PTP_PDELAY_RESP_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_PTP_SYNC_FRAME_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_PTP_SYNC_FRAME_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_SOF_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET0_SOF_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_FCLK_CLK1_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Conn1_ARREADY <= M06_AXI_arready;
  Conn1_AWREADY <= M06_AXI_awready;
  Conn1_BID <= M06_AXI_bid;
  Conn1_BRESP <= M06_AXI_bresp;
  Conn1_BVALID <= M06_AXI_bvalid;
  Conn1_RDATA <= M06_AXI_rdata;
  Conn1_RID <= M06_AXI_rid;
  Conn1_RLAST <= M06_AXI_rlast;
  Conn1_RRESP <= M06_AXI_rresp;
  Conn1_RVALID <= M06_AXI_rvalid;
  Conn1_WREADY <= M06_AXI_wready;
  Conn2_SCL_I <= IIC_0_0_scl_i;
  Conn2_SDA_I <= IIC_0_0_sda_i;
  Conn3_ARREADY <= M07_AXI_arready;
  Conn3_AWREADY <= M07_AXI_awready;
  Conn3_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  Conn3_BVALID <= M07_AXI_bvalid;
  Conn3_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  Conn3_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  Conn3_RVALID <= M07_AXI_rvalid;
  Conn3_WREADY <= M07_AXI_wready;
  Conn4_ARREADY <= M08_AXI_arready;
  Conn4_AWREADY <= M08_AXI_awready;
  Conn4_BID(11 downto 0) <= M08_AXI_bid(11 downto 0);
  Conn4_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  Conn4_BVALID <= M08_AXI_bvalid;
  Conn4_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  Conn4_RID(11 downto 0) <= M08_AXI_rid(11 downto 0);
  Conn4_RLAST <= M08_AXI_rlast;
  Conn4_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  Conn4_RVALID <= M08_AXI_rvalid;
  Conn4_WREADY <= M08_AXI_wready;
  Conn5_ARREADY <= M09_AXI_arready;
  Conn5_AWREADY <= M09_AXI_awready;
  Conn5_BID(11 downto 0) <= M09_AXI_bid(11 downto 0);
  Conn5_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  Conn5_BVALID <= M09_AXI_bvalid;
  Conn5_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  Conn5_RID(11 downto 0) <= M09_AXI_rid(11 downto 0);
  Conn5_RLAST <= M09_AXI_rlast;
  Conn5_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  Conn5_RVALID <= M09_AXI_rvalid;
  Conn5_WREADY <= M09_AXI_wready;
  Conn6_ARREADY <= M10_AXI_arready;
  Conn6_AWREADY <= M10_AXI_awready;
  Conn6_BRESP(1 downto 0) <= M10_AXI_bresp(1 downto 0);
  Conn6_BVALID <= M10_AXI_bvalid;
  Conn6_RDATA(31 downto 0) <= M10_AXI_rdata(31 downto 0);
  Conn6_RRESP(1 downto 0) <= M10_AXI_rresp(1 downto 0);
  Conn6_RVALID <= M10_AXI_rvalid;
  Conn6_WREADY <= M10_AXI_wready;
  Conn7_ARREADY <= M11_AXI_arready;
  Conn7_AWREADY <= M11_AXI_awready;
  Conn7_BRESP(1 downto 0) <= M11_AXI_bresp(1 downto 0);
  Conn7_BVALID <= M11_AXI_bvalid;
  Conn7_RDATA(31 downto 0) <= M11_AXI_rdata(31 downto 0);
  Conn7_RRESP(1 downto 0) <= M11_AXI_rresp(1 downto 0);
  Conn7_RVALID <= M11_AXI_rvalid;
  Conn7_WREADY <= M11_AXI_wready;
  FCLK_CLK0 <= processing_system7_0_FCLK_CLK0;
  FCLK_CLK1 <= processing_system7_0_FCLK_CLK0;
  FCLK_RESET0_N <= processing_system7_0_FCLK_RESET0_N;
  IIC_0_0_scl_o <= Conn2_SCL_O;
  IIC_0_0_scl_t <= Conn2_SCL_T;
  IIC_0_0_sda_o <= Conn2_SDA_O;
  IIC_0_0_sda_t <= Conn2_SDA_T;
  M00_AXI_araddr(31 downto 0) <= processing_system7_0_axi_periph_M00_AXI_ARADDR(31 downto 0);
  M00_AXI_arvalid <= processing_system7_0_axi_periph_M00_AXI_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= processing_system7_0_axi_periph_M00_AXI_AWADDR(31 downto 0);
  M00_AXI_awvalid <= processing_system7_0_axi_periph_M00_AXI_AWVALID;
  M00_AXI_bready <= processing_system7_0_axi_periph_M00_AXI_BREADY;
  M00_AXI_rready <= processing_system7_0_axi_periph_M00_AXI_RREADY;
  M00_AXI_wdata(31 downto 0) <= processing_system7_0_axi_periph_M00_AXI_WDATA(31 downto 0);
  M00_AXI_wvalid <= processing_system7_0_axi_periph_M00_AXI_WVALID;
  M01_AXI_araddr <= processing_system7_0_axi_periph_M01_AXI_ARADDR;
  M01_AXI_arburst <= processing_system7_0_axi_periph_M01_AXI_ARBURST;
  M01_AXI_arcache <= processing_system7_0_axi_periph_M01_AXI_ARCACHE;
  M01_AXI_arid <= processing_system7_0_axi_periph_M01_AXI_ARID;
  M01_AXI_arlen <= processing_system7_0_axi_periph_M01_AXI_ARLEN;
  M01_AXI_arlock <= processing_system7_0_axi_periph_M01_AXI_ARLOCK;
  M01_AXI_arprot <= processing_system7_0_axi_periph_M01_AXI_ARPROT;
  M01_AXI_arqos <= processing_system7_0_axi_periph_M01_AXI_ARQOS;
  M01_AXI_arregion <= processing_system7_0_axi_periph_M01_AXI_ARREGION;
  M01_AXI_arsize <= processing_system7_0_axi_periph_M01_AXI_ARSIZE;
  M01_AXI_arvalid <= processing_system7_0_axi_periph_M01_AXI_ARVALID;
  M01_AXI_awaddr <= processing_system7_0_axi_periph_M01_AXI_AWADDR;
  M01_AXI_awburst <= processing_system7_0_axi_periph_M01_AXI_AWBURST;
  M01_AXI_awcache <= processing_system7_0_axi_periph_M01_AXI_AWCACHE;
  M01_AXI_awid <= processing_system7_0_axi_periph_M01_AXI_AWID;
  M01_AXI_awlen <= processing_system7_0_axi_periph_M01_AXI_AWLEN;
  M01_AXI_awlock <= processing_system7_0_axi_periph_M01_AXI_AWLOCK;
  M01_AXI_awprot <= processing_system7_0_axi_periph_M01_AXI_AWPROT;
  M01_AXI_awqos <= processing_system7_0_axi_periph_M01_AXI_AWQOS;
  M01_AXI_awregion <= processing_system7_0_axi_periph_M01_AXI_AWREGION;
  M01_AXI_awsize <= processing_system7_0_axi_periph_M01_AXI_AWSIZE;
  M01_AXI_awvalid <= processing_system7_0_axi_periph_M01_AXI_AWVALID;
  M01_AXI_bready <= processing_system7_0_axi_periph_M01_AXI_BREADY;
  M01_AXI_rready <= processing_system7_0_axi_periph_M01_AXI_RREADY;
  M01_AXI_wdata <= processing_system7_0_axi_periph_M01_AXI_WDATA;
  M01_AXI_wlast <= processing_system7_0_axi_periph_M01_AXI_WLAST;
  M01_AXI_wstrb <= processing_system7_0_axi_periph_M01_AXI_WSTRB;
  M01_AXI_wvalid <= processing_system7_0_axi_periph_M01_AXI_WVALID;
  M02_AXI_araddr(31 downto 0) <= processing_system7_0_axi_periph_M02_AXI_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= processing_system7_0_axi_periph_M02_AXI_ARPROT(2 downto 0);
  M02_AXI_arvalid <= processing_system7_0_axi_periph_M02_AXI_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= processing_system7_0_axi_periph_M02_AXI_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= processing_system7_0_axi_periph_M02_AXI_AWPROT(2 downto 0);
  M02_AXI_awvalid <= processing_system7_0_axi_periph_M02_AXI_AWVALID;
  M02_AXI_bready <= processing_system7_0_axi_periph_M02_AXI_BREADY;
  M02_AXI_rready <= processing_system7_0_axi_periph_M02_AXI_RREADY;
  M02_AXI_wdata(31 downto 0) <= processing_system7_0_axi_periph_M02_AXI_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= processing_system7_0_axi_periph_M02_AXI_WSTRB(3 downto 0);
  M02_AXI_wvalid <= processing_system7_0_axi_periph_M02_AXI_WVALID;
  M03_AXI_araddr <= processing_system7_0_axi_periph_M03_AXI_ARADDR;
  M03_AXI_arburst <= processing_system7_0_axi_periph_M03_AXI_ARBURST;
  M03_AXI_arcache <= processing_system7_0_axi_periph_M03_AXI_ARCACHE;
  M03_AXI_arid <= processing_system7_0_axi_periph_M03_AXI_ARID;
  M03_AXI_arlen <= processing_system7_0_axi_periph_M03_AXI_ARLEN;
  M03_AXI_arlock <= processing_system7_0_axi_periph_M03_AXI_ARLOCK;
  M03_AXI_arprot <= processing_system7_0_axi_periph_M03_AXI_ARPROT;
  M03_AXI_arqos <= processing_system7_0_axi_periph_M03_AXI_ARQOS;
  M03_AXI_arregion <= processing_system7_0_axi_periph_M03_AXI_ARREGION;
  M03_AXI_arsize <= processing_system7_0_axi_periph_M03_AXI_ARSIZE;
  M03_AXI_arvalid <= processing_system7_0_axi_periph_M03_AXI_ARVALID;
  M03_AXI_awaddr <= processing_system7_0_axi_periph_M03_AXI_AWADDR;
  M03_AXI_awburst <= processing_system7_0_axi_periph_M03_AXI_AWBURST;
  M03_AXI_awcache <= processing_system7_0_axi_periph_M03_AXI_AWCACHE;
  M03_AXI_awid <= processing_system7_0_axi_periph_M03_AXI_AWID;
  M03_AXI_awlen <= processing_system7_0_axi_periph_M03_AXI_AWLEN;
  M03_AXI_awlock <= processing_system7_0_axi_periph_M03_AXI_AWLOCK;
  M03_AXI_awprot <= processing_system7_0_axi_periph_M03_AXI_AWPROT;
  M03_AXI_awqos <= processing_system7_0_axi_periph_M03_AXI_AWQOS;
  M03_AXI_awregion <= processing_system7_0_axi_periph_M03_AXI_AWREGION;
  M03_AXI_awsize <= processing_system7_0_axi_periph_M03_AXI_AWSIZE;
  M03_AXI_awvalid <= processing_system7_0_axi_periph_M03_AXI_AWVALID;
  M03_AXI_bready <= processing_system7_0_axi_periph_M03_AXI_BREADY;
  M03_AXI_rready <= processing_system7_0_axi_periph_M03_AXI_RREADY;
  M03_AXI_wdata <= processing_system7_0_axi_periph_M03_AXI_WDATA;
  M03_AXI_wlast <= processing_system7_0_axi_periph_M03_AXI_WLAST;
  M03_AXI_wstrb <= processing_system7_0_axi_periph_M03_AXI_WSTRB;
  M03_AXI_wvalid <= processing_system7_0_axi_periph_M03_AXI_WVALID;
  M04_AXI_araddr <= processing_system7_0_axi_periph_M04_AXI_ARADDR;
  M04_AXI_arburst <= processing_system7_0_axi_periph_M04_AXI_ARBURST;
  M04_AXI_arcache <= processing_system7_0_axi_periph_M04_AXI_ARCACHE;
  M04_AXI_arid <= processing_system7_0_axi_periph_M04_AXI_ARID;
  M04_AXI_arlen <= processing_system7_0_axi_periph_M04_AXI_ARLEN;
  M04_AXI_arlock <= processing_system7_0_axi_periph_M04_AXI_ARLOCK;
  M04_AXI_arprot <= processing_system7_0_axi_periph_M04_AXI_ARPROT;
  M04_AXI_arqos <= processing_system7_0_axi_periph_M04_AXI_ARQOS;
  M04_AXI_arregion <= processing_system7_0_axi_periph_M04_AXI_ARREGION;
  M04_AXI_arsize <= processing_system7_0_axi_periph_M04_AXI_ARSIZE;
  M04_AXI_arvalid <= processing_system7_0_axi_periph_M04_AXI_ARVALID;
  M04_AXI_awaddr <= processing_system7_0_axi_periph_M04_AXI_AWADDR;
  M04_AXI_awburst <= processing_system7_0_axi_periph_M04_AXI_AWBURST;
  M04_AXI_awcache <= processing_system7_0_axi_periph_M04_AXI_AWCACHE;
  M04_AXI_awid <= processing_system7_0_axi_periph_M04_AXI_AWID;
  M04_AXI_awlen <= processing_system7_0_axi_periph_M04_AXI_AWLEN;
  M04_AXI_awlock <= processing_system7_0_axi_periph_M04_AXI_AWLOCK;
  M04_AXI_awprot <= processing_system7_0_axi_periph_M04_AXI_AWPROT;
  M04_AXI_awqos <= processing_system7_0_axi_periph_M04_AXI_AWQOS;
  M04_AXI_awregion <= processing_system7_0_axi_periph_M04_AXI_AWREGION;
  M04_AXI_awsize <= processing_system7_0_axi_periph_M04_AXI_AWSIZE;
  M04_AXI_awvalid <= processing_system7_0_axi_periph_M04_AXI_AWVALID;
  M04_AXI_bready <= processing_system7_0_axi_periph_M04_AXI_BREADY;
  M04_AXI_rready <= processing_system7_0_axi_periph_M04_AXI_RREADY;
  M04_AXI_wdata <= processing_system7_0_axi_periph_M04_AXI_WDATA;
  M04_AXI_wlast <= processing_system7_0_axi_periph_M04_AXI_WLAST;
  M04_AXI_wstrb <= processing_system7_0_axi_periph_M04_AXI_WSTRB;
  M04_AXI_wvalid <= processing_system7_0_axi_periph_M04_AXI_WVALID;
  M05_AXI_araddr <= processing_system7_0_axi_periph_M05_AXI_ARADDR;
  M05_AXI_arburst <= processing_system7_0_axi_periph_M05_AXI_ARBURST;
  M05_AXI_arcache <= processing_system7_0_axi_periph_M05_AXI_ARCACHE;
  M05_AXI_arid <= processing_system7_0_axi_periph_M05_AXI_ARID;
  M05_AXI_arlen <= processing_system7_0_axi_periph_M05_AXI_ARLEN;
  M05_AXI_arlock <= processing_system7_0_axi_periph_M05_AXI_ARLOCK;
  M05_AXI_arprot <= processing_system7_0_axi_periph_M05_AXI_ARPROT;
  M05_AXI_arqos <= processing_system7_0_axi_periph_M05_AXI_ARQOS;
  M05_AXI_arregion <= processing_system7_0_axi_periph_M05_AXI_ARREGION;
  M05_AXI_arsize <= processing_system7_0_axi_periph_M05_AXI_ARSIZE;
  M05_AXI_arvalid <= processing_system7_0_axi_periph_M05_AXI_ARVALID;
  M05_AXI_awaddr <= processing_system7_0_axi_periph_M05_AXI_AWADDR;
  M05_AXI_awburst <= processing_system7_0_axi_periph_M05_AXI_AWBURST;
  M05_AXI_awcache <= processing_system7_0_axi_periph_M05_AXI_AWCACHE;
  M05_AXI_awid <= processing_system7_0_axi_periph_M05_AXI_AWID;
  M05_AXI_awlen <= processing_system7_0_axi_periph_M05_AXI_AWLEN;
  M05_AXI_awlock <= processing_system7_0_axi_periph_M05_AXI_AWLOCK;
  M05_AXI_awprot <= processing_system7_0_axi_periph_M05_AXI_AWPROT;
  M05_AXI_awqos <= processing_system7_0_axi_periph_M05_AXI_AWQOS;
  M05_AXI_awregion <= processing_system7_0_axi_periph_M05_AXI_AWREGION;
  M05_AXI_awsize <= processing_system7_0_axi_periph_M05_AXI_AWSIZE;
  M05_AXI_awvalid <= processing_system7_0_axi_periph_M05_AXI_AWVALID;
  M05_AXI_bready <= processing_system7_0_axi_periph_M05_AXI_BREADY;
  M05_AXI_rready <= processing_system7_0_axi_periph_M05_AXI_RREADY;
  M05_AXI_wdata <= processing_system7_0_axi_periph_M05_AXI_WDATA;
  M05_AXI_wlast <= processing_system7_0_axi_periph_M05_AXI_WLAST;
  M05_AXI_wstrb <= processing_system7_0_axi_periph_M05_AXI_WSTRB;
  M05_AXI_wvalid <= processing_system7_0_axi_periph_M05_AXI_WVALID;
  M06_AXI_araddr <= Conn1_ARADDR;
  M06_AXI_arburst <= Conn1_ARBURST;
  M06_AXI_arcache <= Conn1_ARCACHE;
  M06_AXI_arid <= Conn1_ARID;
  M06_AXI_arlen <= Conn1_ARLEN;
  M06_AXI_arlock <= Conn1_ARLOCK;
  M06_AXI_arprot <= Conn1_ARPROT;
  M06_AXI_arqos <= Conn1_ARQOS;
  M06_AXI_arregion <= Conn1_ARREGION;
  M06_AXI_arsize <= Conn1_ARSIZE;
  M06_AXI_arvalid <= Conn1_ARVALID;
  M06_AXI_awaddr <= Conn1_AWADDR;
  M06_AXI_awburst <= Conn1_AWBURST;
  M06_AXI_awcache <= Conn1_AWCACHE;
  M06_AXI_awid <= Conn1_AWID;
  M06_AXI_awlen <= Conn1_AWLEN;
  M06_AXI_awlock <= Conn1_AWLOCK;
  M06_AXI_awprot <= Conn1_AWPROT;
  M06_AXI_awqos <= Conn1_AWQOS;
  M06_AXI_awregion <= Conn1_AWREGION;
  M06_AXI_awsize <= Conn1_AWSIZE;
  M06_AXI_awvalid <= Conn1_AWVALID;
  M06_AXI_bready <= Conn1_BREADY;
  M06_AXI_rready <= Conn1_RREADY;
  M06_AXI_wdata <= Conn1_WDATA;
  M06_AXI_wlast <= Conn1_WLAST;
  M06_AXI_wstrb <= Conn1_WSTRB;
  M06_AXI_wvalid <= Conn1_WVALID;
  M07_AXI_araddr(31 downto 0) <= Conn3_ARADDR(31 downto 0);
  M07_AXI_arprot(2 downto 0) <= Conn3_ARPROT(2 downto 0);
  M07_AXI_arvalid <= Conn3_ARVALID;
  M07_AXI_awaddr(31 downto 0) <= Conn3_AWADDR(31 downto 0);
  M07_AXI_awprot(2 downto 0) <= Conn3_AWPROT(2 downto 0);
  M07_AXI_awvalid <= Conn3_AWVALID;
  M07_AXI_bready <= Conn3_BREADY;
  M07_AXI_rready <= Conn3_RREADY;
  M07_AXI_wdata(31 downto 0) <= Conn3_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= Conn3_WSTRB(3 downto 0);
  M07_AXI_wvalid <= Conn3_WVALID;
  M08_AXI_araddr(31 downto 0) <= Conn4_ARADDR(31 downto 0);
  M08_AXI_arburst(1 downto 0) <= Conn4_ARBURST(1 downto 0);
  M08_AXI_arcache(3 downto 0) <= Conn4_ARCACHE(3 downto 0);
  M08_AXI_arid(11 downto 0) <= Conn4_ARID(11 downto 0);
  M08_AXI_arlen(7 downto 0) <= Conn4_ARLEN(7 downto 0);
  M08_AXI_arlock <= Conn4_ARLOCK;
  M08_AXI_arprot(2 downto 0) <= Conn4_ARPROT(2 downto 0);
  M08_AXI_arqos(3 downto 0) <= Conn4_ARQOS(3 downto 0);
  M08_AXI_arregion(3 downto 0) <= Conn4_ARREGION(3 downto 0);
  M08_AXI_arsize(2 downto 0) <= Conn4_ARSIZE(2 downto 0);
  M08_AXI_arvalid <= Conn4_ARVALID;
  M08_AXI_awaddr(31 downto 0) <= Conn4_AWADDR(31 downto 0);
  M08_AXI_awburst(1 downto 0) <= Conn4_AWBURST(1 downto 0);
  M08_AXI_awcache(3 downto 0) <= Conn4_AWCACHE(3 downto 0);
  M08_AXI_awid(11 downto 0) <= Conn4_AWID(11 downto 0);
  M08_AXI_awlen(7 downto 0) <= Conn4_AWLEN(7 downto 0);
  M08_AXI_awlock <= Conn4_AWLOCK;
  M08_AXI_awprot(2 downto 0) <= Conn4_AWPROT(2 downto 0);
  M08_AXI_awqos(3 downto 0) <= Conn4_AWQOS(3 downto 0);
  M08_AXI_awregion(3 downto 0) <= Conn4_AWREGION(3 downto 0);
  M08_AXI_awsize(2 downto 0) <= Conn4_AWSIZE(2 downto 0);
  M08_AXI_awvalid <= Conn4_AWVALID;
  M08_AXI_bready <= Conn4_BREADY;
  M08_AXI_rready <= Conn4_RREADY;
  M08_AXI_wdata(31 downto 0) <= Conn4_WDATA(31 downto 0);
  M08_AXI_wlast <= Conn4_WLAST;
  M08_AXI_wstrb(3 downto 0) <= Conn4_WSTRB(3 downto 0);
  M08_AXI_wvalid <= Conn4_WVALID;
  M09_AXI_araddr(31 downto 0) <= Conn5_ARADDR(31 downto 0);
  M09_AXI_arburst(1 downto 0) <= Conn5_ARBURST(1 downto 0);
  M09_AXI_arcache(3 downto 0) <= Conn5_ARCACHE(3 downto 0);
  M09_AXI_arid(11 downto 0) <= Conn5_ARID(11 downto 0);
  M09_AXI_arlen(7 downto 0) <= Conn5_ARLEN(7 downto 0);
  M09_AXI_arlock <= Conn5_ARLOCK;
  M09_AXI_arprot(2 downto 0) <= Conn5_ARPROT(2 downto 0);
  M09_AXI_arqos(3 downto 0) <= Conn5_ARQOS(3 downto 0);
  M09_AXI_arregion(3 downto 0) <= Conn5_ARREGION(3 downto 0);
  M09_AXI_arsize(2 downto 0) <= Conn5_ARSIZE(2 downto 0);
  M09_AXI_arvalid <= Conn5_ARVALID;
  M09_AXI_awaddr(31 downto 0) <= Conn5_AWADDR(31 downto 0);
  M09_AXI_awburst(1 downto 0) <= Conn5_AWBURST(1 downto 0);
  M09_AXI_awcache(3 downto 0) <= Conn5_AWCACHE(3 downto 0);
  M09_AXI_awid(11 downto 0) <= Conn5_AWID(11 downto 0);
  M09_AXI_awlen(7 downto 0) <= Conn5_AWLEN(7 downto 0);
  M09_AXI_awlock <= Conn5_AWLOCK;
  M09_AXI_awprot(2 downto 0) <= Conn5_AWPROT(2 downto 0);
  M09_AXI_awqos(3 downto 0) <= Conn5_AWQOS(3 downto 0);
  M09_AXI_awregion(3 downto 0) <= Conn5_AWREGION(3 downto 0);
  M09_AXI_awsize(2 downto 0) <= Conn5_AWSIZE(2 downto 0);
  M09_AXI_awvalid <= Conn5_AWVALID;
  M09_AXI_bready <= Conn5_BREADY;
  M09_AXI_rready <= Conn5_RREADY;
  M09_AXI_wdata(31 downto 0) <= Conn5_WDATA(31 downto 0);
  M09_AXI_wlast <= Conn5_WLAST;
  M09_AXI_wstrb(3 downto 0) <= Conn5_WSTRB(3 downto 0);
  M09_AXI_wvalid <= Conn5_WVALID;
  M10_AXI_araddr(31 downto 0) <= Conn6_ARADDR(31 downto 0);
  M10_AXI_arvalid <= Conn6_ARVALID;
  M10_AXI_awaddr(31 downto 0) <= Conn6_AWADDR(31 downto 0);
  M10_AXI_awvalid <= Conn6_AWVALID;
  M10_AXI_bready <= Conn6_BREADY;
  M10_AXI_rready <= Conn6_RREADY;
  M10_AXI_wdata(31 downto 0) <= Conn6_WDATA(31 downto 0);
  M10_AXI_wstrb(3 downto 0) <= Conn6_WSTRB(3 downto 0);
  M10_AXI_wvalid <= Conn6_WVALID;
  M11_AXI_araddr(31 downto 0) <= Conn7_ARADDR(31 downto 0);
  M11_AXI_arvalid <= Conn7_ARVALID;
  M11_AXI_awaddr(31 downto 0) <= Conn7_AWADDR(31 downto 0);
  M11_AXI_awvalid <= Conn7_AWVALID;
  M11_AXI_bready <= Conn7_BREADY;
  M11_AXI_rready <= Conn7_RREADY;
  M11_AXI_wdata(31 downto 0) <= Conn7_WDATA(31 downto 0);
  M11_AXI_wstrb(3 downto 0) <= Conn7_WSTRB(3 downto 0);
  M11_AXI_wvalid <= Conn7_WVALID;
  S_AXI_HP0_1_AWADDR(31 downto 0) <= S_AXI_HP0_awaddr(31 downto 0);
  S_AXI_HP0_1_AWBURST(1 downto 0) <= S_AXI_HP0_awburst(1 downto 0);
  S_AXI_HP0_1_AWCACHE(3 downto 0) <= S_AXI_HP0_awcache(3 downto 0);
  S_AXI_HP0_1_AWLEN(3 downto 0) <= S_AXI_HP0_awlen(3 downto 0);
  S_AXI_HP0_1_AWLOCK(1 downto 0) <= S_AXI_HP0_awlock(1 downto 0);
  S_AXI_HP0_1_AWPROT(2 downto 0) <= S_AXI_HP0_awprot(2 downto 0);
  S_AXI_HP0_1_AWQOS(3 downto 0) <= S_AXI_HP0_awqos(3 downto 0);
  S_AXI_HP0_1_AWSIZE(2 downto 0) <= S_AXI_HP0_awsize(2 downto 0);
  S_AXI_HP0_1_AWVALID <= S_AXI_HP0_awvalid;
  S_AXI_HP0_1_BREADY <= S_AXI_HP0_bready;
  S_AXI_HP0_1_WDATA(63 downto 0) <= S_AXI_HP0_wdata(63 downto 0);
  S_AXI_HP0_1_WLAST <= S_AXI_HP0_wlast;
  S_AXI_HP0_1_WSTRB(7 downto 0) <= S_AXI_HP0_wstrb(7 downto 0);
  S_AXI_HP0_1_WVALID <= S_AXI_HP0_wvalid;
  S_AXI_HP0_awready <= S_AXI_HP0_1_AWREADY;
  S_AXI_HP0_bresp(1 downto 0) <= S_AXI_HP0_1_BRESP(1 downto 0);
  S_AXI_HP0_bvalid <= S_AXI_HP0_1_BVALID;
  S_AXI_HP0_wready <= S_AXI_HP0_1_WREADY;
  axi_dma_0_s2mm_introut(0) <= IRQ_F2P(0);
  peripheral_aresetn(0) <= proc_sys_reset_0_peripheral_aresetn(0);
  peripheral_aresetn1(0) <= proc_sys_reset_0_peripheral_aresetn(0);
  processing_system7_0_axi_periph_M00_AXI_ARREADY <= M00_AXI_arready;
  processing_system7_0_axi_periph_M00_AXI_AWREADY <= M00_AXI_awready;
  processing_system7_0_axi_periph_M00_AXI_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  processing_system7_0_axi_periph_M00_AXI_BVALID <= M00_AXI_bvalid;
  processing_system7_0_axi_periph_M00_AXI_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  processing_system7_0_axi_periph_M00_AXI_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  processing_system7_0_axi_periph_M00_AXI_RVALID <= M00_AXI_rvalid;
  processing_system7_0_axi_periph_M00_AXI_WREADY <= M00_AXI_wready;
  processing_system7_0_axi_periph_M01_AXI_ARREADY <= M01_AXI_arready;
  processing_system7_0_axi_periph_M01_AXI_AWREADY <= M01_AXI_awready;
  processing_system7_0_axi_periph_M01_AXI_BID <= M01_AXI_bid;
  processing_system7_0_axi_periph_M01_AXI_BRESP <= M01_AXI_bresp;
  processing_system7_0_axi_periph_M01_AXI_BVALID <= M01_AXI_bvalid;
  processing_system7_0_axi_periph_M01_AXI_RDATA <= M01_AXI_rdata;
  processing_system7_0_axi_periph_M01_AXI_RID <= M01_AXI_rid;
  processing_system7_0_axi_periph_M01_AXI_RLAST <= M01_AXI_rlast;
  processing_system7_0_axi_periph_M01_AXI_RRESP <= M01_AXI_rresp;
  processing_system7_0_axi_periph_M01_AXI_RVALID <= M01_AXI_rvalid;
  processing_system7_0_axi_periph_M01_AXI_WREADY <= M01_AXI_wready;
  processing_system7_0_axi_periph_M02_AXI_ARREADY <= M02_AXI_arready;
  processing_system7_0_axi_periph_M02_AXI_AWREADY <= M02_AXI_awready;
  processing_system7_0_axi_periph_M02_AXI_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  processing_system7_0_axi_periph_M02_AXI_BVALID <= M02_AXI_bvalid;
  processing_system7_0_axi_periph_M02_AXI_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  processing_system7_0_axi_periph_M02_AXI_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  processing_system7_0_axi_periph_M02_AXI_RVALID <= M02_AXI_rvalid;
  processing_system7_0_axi_periph_M02_AXI_WREADY <= M02_AXI_wready;
  processing_system7_0_axi_periph_M03_AXI_ARREADY <= M03_AXI_arready;
  processing_system7_0_axi_periph_M03_AXI_AWREADY <= M03_AXI_awready;
  processing_system7_0_axi_periph_M03_AXI_BID <= M03_AXI_bid;
  processing_system7_0_axi_periph_M03_AXI_BRESP <= M03_AXI_bresp;
  processing_system7_0_axi_periph_M03_AXI_BVALID <= M03_AXI_bvalid;
  processing_system7_0_axi_periph_M03_AXI_RDATA <= M03_AXI_rdata;
  processing_system7_0_axi_periph_M03_AXI_RID <= M03_AXI_rid;
  processing_system7_0_axi_periph_M03_AXI_RLAST <= M03_AXI_rlast;
  processing_system7_0_axi_periph_M03_AXI_RRESP <= M03_AXI_rresp;
  processing_system7_0_axi_periph_M03_AXI_RVALID <= M03_AXI_rvalid;
  processing_system7_0_axi_periph_M03_AXI_WREADY <= M03_AXI_wready;
  processing_system7_0_axi_periph_M04_AXI_ARREADY <= M04_AXI_arready;
  processing_system7_0_axi_periph_M04_AXI_AWREADY <= M04_AXI_awready;
  processing_system7_0_axi_periph_M04_AXI_BID <= M04_AXI_bid;
  processing_system7_0_axi_periph_M04_AXI_BRESP <= M04_AXI_bresp;
  processing_system7_0_axi_periph_M04_AXI_BVALID <= M04_AXI_bvalid;
  processing_system7_0_axi_periph_M04_AXI_RDATA <= M04_AXI_rdata;
  processing_system7_0_axi_periph_M04_AXI_RID <= M04_AXI_rid;
  processing_system7_0_axi_periph_M04_AXI_RLAST <= M04_AXI_rlast;
  processing_system7_0_axi_periph_M04_AXI_RRESP <= M04_AXI_rresp;
  processing_system7_0_axi_periph_M04_AXI_RVALID <= M04_AXI_rvalid;
  processing_system7_0_axi_periph_M04_AXI_WREADY <= M04_AXI_wready;
  processing_system7_0_axi_periph_M05_AXI_ARREADY <= M05_AXI_arready;
  processing_system7_0_axi_periph_M05_AXI_AWREADY <= M05_AXI_awready;
  processing_system7_0_axi_periph_M05_AXI_BID <= M05_AXI_bid;
  processing_system7_0_axi_periph_M05_AXI_BRESP <= M05_AXI_bresp;
  processing_system7_0_axi_periph_M05_AXI_BVALID <= M05_AXI_bvalid;
  processing_system7_0_axi_periph_M05_AXI_RDATA <= M05_AXI_rdata;
  processing_system7_0_axi_periph_M05_AXI_RID <= M05_AXI_rid;
  processing_system7_0_axi_periph_M05_AXI_RLAST <= M05_AXI_rlast;
  processing_system7_0_axi_periph_M05_AXI_RRESP <= M05_AXI_rresp;
  processing_system7_0_axi_periph_M05_AXI_RVALID <= M05_AXI_rvalid;
  processing_system7_0_axi_periph_M05_AXI_WREADY <= M05_AXI_wready;
proc_sys_reset_0: component design_2_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => proc_sys_reset_0_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
processing_system7_0: component design_2_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      ENET0_PTP_DELAY_REQ_RX => NLW_processing_system7_0_ENET0_PTP_DELAY_REQ_RX_UNCONNECTED,
      ENET0_PTP_DELAY_REQ_TX => NLW_processing_system7_0_ENET0_PTP_DELAY_REQ_TX_UNCONNECTED,
      ENET0_PTP_PDELAY_REQ_RX => NLW_processing_system7_0_ENET0_PTP_PDELAY_REQ_RX_UNCONNECTED,
      ENET0_PTP_PDELAY_REQ_TX => NLW_processing_system7_0_ENET0_PTP_PDELAY_REQ_TX_UNCONNECTED,
      ENET0_PTP_PDELAY_RESP_RX => NLW_processing_system7_0_ENET0_PTP_PDELAY_RESP_RX_UNCONNECTED,
      ENET0_PTP_PDELAY_RESP_TX => NLW_processing_system7_0_ENET0_PTP_PDELAY_RESP_TX_UNCONNECTED,
      ENET0_PTP_SYNC_FRAME_RX => NLW_processing_system7_0_ENET0_PTP_SYNC_FRAME_RX_UNCONNECTED,
      ENET0_PTP_SYNC_FRAME_TX => NLW_processing_system7_0_ENET0_PTP_SYNC_FRAME_TX_UNCONNECTED,
      ENET0_SOF_RX => NLW_processing_system7_0_ENET0_SOF_RX_UNCONNECTED,
      ENET0_SOF_TX => NLW_processing_system7_0_ENET0_SOF_TX_UNCONNECTED,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_CLK1 => NLW_processing_system7_0_FCLK_CLK1_UNCONNECTED,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      I2C0_SCL_I => Conn2_SCL_I,
      I2C0_SCL_O => Conn2_SCL_O,
      I2C0_SCL_T => Conn2_SCL_T,
      I2C0_SDA_I => Conn2_SDA_I,
      I2C0_SDA_O => Conn2_SDA_O,
      I2C0_SDA_T => Conn2_SDA_T,
      IRQ_F2P(0) => axi_dma_0_s2mm_introut(0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_HP0_ARBURST(1 downto 0) => B"01",
      S_AXI_HP0_ARCACHE(3 downto 0) => B"0011",
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => B"0000",
      S_AXI_HP0_ARLOCK(1 downto 0) => B"00",
      S_AXI_HP0_ARPROT(2 downto 0) => B"000",
      S_AXI_HP0_ARQOS(3 downto 0) => B"0000",
      S_AXI_HP0_ARREADY => NLW_processing_system7_0_S_AXI_HP0_ARREADY_UNCONNECTED,
      S_AXI_HP0_ARSIZE(2 downto 0) => B"011",
      S_AXI_HP0_ARVALID => '0',
      S_AXI_HP0_AWADDR(31 downto 0) => S_AXI_HP0_1_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => S_AXI_HP0_1_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => S_AXI_HP0_1_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => S_AXI_HP0_1_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => S_AXI_HP0_1_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => S_AXI_HP0_1_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => S_AXI_HP0_1_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => S_AXI_HP0_1_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => S_AXI_HP0_1_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => S_AXI_HP0_1_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => S_AXI_HP0_1_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => S_AXI_HP0_1_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => S_AXI_HP0_1_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RDATA_UNCONNECTED(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => NLW_processing_system7_0_S_AXI_HP0_RLAST_UNCONNECTED,
      S_AXI_HP0_RREADY => '0',
      S_AXI_HP0_RRESP(1 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP0_RVALID => NLW_processing_system7_0_S_AXI_HP0_RVALID_UNCONNECTED,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => S_AXI_HP0_1_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => S_AXI_HP0_1_WLAST,
      S_AXI_HP0_WREADY => S_AXI_HP0_1_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => S_AXI_HP0_1_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => S_AXI_HP0_1_WVALID,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
processing_system7_0_axi_periph: entity work.design_2_processing_system7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => processing_system7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => processing_system7_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => processing_system7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => processing_system7_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => processing_system7_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => processing_system7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => processing_system7_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => processing_system7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => processing_system7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wvalid => processing_system7_0_axi_periph_M00_AXI_WVALID,
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M01_AXI_araddr => processing_system7_0_axi_periph_M01_AXI_ARADDR,
      M01_AXI_arburst => processing_system7_0_axi_periph_M01_AXI_ARBURST,
      M01_AXI_arcache => processing_system7_0_axi_periph_M01_AXI_ARCACHE,
      M01_AXI_arid => processing_system7_0_axi_periph_M01_AXI_ARID,
      M01_AXI_arlen => processing_system7_0_axi_periph_M01_AXI_ARLEN,
      M01_AXI_arlock => processing_system7_0_axi_periph_M01_AXI_ARLOCK,
      M01_AXI_arprot => processing_system7_0_axi_periph_M01_AXI_ARPROT,
      M01_AXI_arqos => processing_system7_0_axi_periph_M01_AXI_ARQOS,
      M01_AXI_arready => processing_system7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arregion => processing_system7_0_axi_periph_M01_AXI_ARREGION,
      M01_AXI_arsize => processing_system7_0_axi_periph_M01_AXI_ARSIZE,
      M01_AXI_arvalid => processing_system7_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr => processing_system7_0_axi_periph_M01_AXI_AWADDR,
      M01_AXI_awburst => processing_system7_0_axi_periph_M01_AXI_AWBURST,
      M01_AXI_awcache => processing_system7_0_axi_periph_M01_AXI_AWCACHE,
      M01_AXI_awid => processing_system7_0_axi_periph_M01_AXI_AWID,
      M01_AXI_awlen => processing_system7_0_axi_periph_M01_AXI_AWLEN,
      M01_AXI_awlock => processing_system7_0_axi_periph_M01_AXI_AWLOCK,
      M01_AXI_awprot => processing_system7_0_axi_periph_M01_AXI_AWPROT,
      M01_AXI_awqos => processing_system7_0_axi_periph_M01_AXI_AWQOS,
      M01_AXI_awready => processing_system7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awregion => processing_system7_0_axi_periph_M01_AXI_AWREGION,
      M01_AXI_awsize => processing_system7_0_axi_periph_M01_AXI_AWSIZE,
      M01_AXI_awvalid => processing_system7_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bid => processing_system7_0_axi_periph_M01_AXI_BID,
      M01_AXI_bready => processing_system7_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp => processing_system7_0_axi_periph_M01_AXI_BRESP,
      M01_AXI_bvalid => processing_system7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata => processing_system7_0_axi_periph_M01_AXI_RDATA,
      M01_AXI_rid => processing_system7_0_axi_periph_M01_AXI_RID,
      M01_AXI_rlast => processing_system7_0_axi_periph_M01_AXI_RLAST,
      M01_AXI_rready => processing_system7_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp => processing_system7_0_axi_periph_M01_AXI_RRESP,
      M01_AXI_rvalid => processing_system7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata => processing_system7_0_axi_periph_M01_AXI_WDATA,
      M01_AXI_wlast => processing_system7_0_axi_periph_M01_AXI_WLAST,
      M01_AXI_wready => processing_system7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb => processing_system7_0_axi_periph_M01_AXI_WSTRB,
      M01_AXI_wvalid => processing_system7_0_axi_periph_M01_AXI_WVALID,
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready => processing_system7_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => processing_system7_0_axi_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready => processing_system7_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => processing_system7_0_axi_periph_M02_AXI_AWVALID,
      M02_AXI_bready => processing_system7_0_axi_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => processing_system7_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => processing_system7_0_axi_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => processing_system7_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => processing_system7_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => processing_system7_0_axi_periph_M02_AXI_WVALID,
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M03_AXI_araddr => processing_system7_0_axi_periph_M03_AXI_ARADDR,
      M03_AXI_arburst => processing_system7_0_axi_periph_M03_AXI_ARBURST,
      M03_AXI_arcache => processing_system7_0_axi_periph_M03_AXI_ARCACHE,
      M03_AXI_arid => processing_system7_0_axi_periph_M03_AXI_ARID,
      M03_AXI_arlen => processing_system7_0_axi_periph_M03_AXI_ARLEN,
      M03_AXI_arlock => processing_system7_0_axi_periph_M03_AXI_ARLOCK,
      M03_AXI_arprot => processing_system7_0_axi_periph_M03_AXI_ARPROT,
      M03_AXI_arqos => processing_system7_0_axi_periph_M03_AXI_ARQOS,
      M03_AXI_arready => processing_system7_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arregion => processing_system7_0_axi_periph_M03_AXI_ARREGION,
      M03_AXI_arsize => processing_system7_0_axi_periph_M03_AXI_ARSIZE,
      M03_AXI_arvalid => processing_system7_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr => processing_system7_0_axi_periph_M03_AXI_AWADDR,
      M03_AXI_awburst => processing_system7_0_axi_periph_M03_AXI_AWBURST,
      M03_AXI_awcache => processing_system7_0_axi_periph_M03_AXI_AWCACHE,
      M03_AXI_awid => processing_system7_0_axi_periph_M03_AXI_AWID,
      M03_AXI_awlen => processing_system7_0_axi_periph_M03_AXI_AWLEN,
      M03_AXI_awlock => processing_system7_0_axi_periph_M03_AXI_AWLOCK,
      M03_AXI_awprot => processing_system7_0_axi_periph_M03_AXI_AWPROT,
      M03_AXI_awqos => processing_system7_0_axi_periph_M03_AXI_AWQOS,
      M03_AXI_awready => processing_system7_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awregion => processing_system7_0_axi_periph_M03_AXI_AWREGION,
      M03_AXI_awsize => processing_system7_0_axi_periph_M03_AXI_AWSIZE,
      M03_AXI_awvalid => processing_system7_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bid => processing_system7_0_axi_periph_M03_AXI_BID,
      M03_AXI_bready => processing_system7_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp => processing_system7_0_axi_periph_M03_AXI_BRESP,
      M03_AXI_bvalid => processing_system7_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata => processing_system7_0_axi_periph_M03_AXI_RDATA,
      M03_AXI_rid => processing_system7_0_axi_periph_M03_AXI_RID,
      M03_AXI_rlast => processing_system7_0_axi_periph_M03_AXI_RLAST,
      M03_AXI_rready => processing_system7_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp => processing_system7_0_axi_periph_M03_AXI_RRESP,
      M03_AXI_rvalid => processing_system7_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata => processing_system7_0_axi_periph_M03_AXI_WDATA,
      M03_AXI_wlast => processing_system7_0_axi_periph_M03_AXI_WLAST,
      M03_AXI_wready => processing_system7_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb => processing_system7_0_axi_periph_M03_AXI_WSTRB,
      M03_AXI_wvalid => processing_system7_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M04_AXI_araddr => processing_system7_0_axi_periph_M04_AXI_ARADDR,
      M04_AXI_arburst => processing_system7_0_axi_periph_M04_AXI_ARBURST,
      M04_AXI_arcache => processing_system7_0_axi_periph_M04_AXI_ARCACHE,
      M04_AXI_arid => processing_system7_0_axi_periph_M04_AXI_ARID,
      M04_AXI_arlen => processing_system7_0_axi_periph_M04_AXI_ARLEN,
      M04_AXI_arlock => processing_system7_0_axi_periph_M04_AXI_ARLOCK,
      M04_AXI_arprot => processing_system7_0_axi_periph_M04_AXI_ARPROT,
      M04_AXI_arqos => processing_system7_0_axi_periph_M04_AXI_ARQOS,
      M04_AXI_arready => processing_system7_0_axi_periph_M04_AXI_ARREADY,
      M04_AXI_arregion => processing_system7_0_axi_periph_M04_AXI_ARREGION,
      M04_AXI_arsize => processing_system7_0_axi_periph_M04_AXI_ARSIZE,
      M04_AXI_arvalid => processing_system7_0_axi_periph_M04_AXI_ARVALID,
      M04_AXI_awaddr => processing_system7_0_axi_periph_M04_AXI_AWADDR,
      M04_AXI_awburst => processing_system7_0_axi_periph_M04_AXI_AWBURST,
      M04_AXI_awcache => processing_system7_0_axi_periph_M04_AXI_AWCACHE,
      M04_AXI_awid => processing_system7_0_axi_periph_M04_AXI_AWID,
      M04_AXI_awlen => processing_system7_0_axi_periph_M04_AXI_AWLEN,
      M04_AXI_awlock => processing_system7_0_axi_periph_M04_AXI_AWLOCK,
      M04_AXI_awprot => processing_system7_0_axi_periph_M04_AXI_AWPROT,
      M04_AXI_awqos => processing_system7_0_axi_periph_M04_AXI_AWQOS,
      M04_AXI_awready => processing_system7_0_axi_periph_M04_AXI_AWREADY,
      M04_AXI_awregion => processing_system7_0_axi_periph_M04_AXI_AWREGION,
      M04_AXI_awsize => processing_system7_0_axi_periph_M04_AXI_AWSIZE,
      M04_AXI_awvalid => processing_system7_0_axi_periph_M04_AXI_AWVALID,
      M04_AXI_bid => processing_system7_0_axi_periph_M04_AXI_BID,
      M04_AXI_bready => processing_system7_0_axi_periph_M04_AXI_BREADY,
      M04_AXI_bresp => processing_system7_0_axi_periph_M04_AXI_BRESP,
      M04_AXI_bvalid => processing_system7_0_axi_periph_M04_AXI_BVALID,
      M04_AXI_rdata => processing_system7_0_axi_periph_M04_AXI_RDATA,
      M04_AXI_rid => processing_system7_0_axi_periph_M04_AXI_RID,
      M04_AXI_rlast => processing_system7_0_axi_periph_M04_AXI_RLAST,
      M04_AXI_rready => processing_system7_0_axi_periph_M04_AXI_RREADY,
      M04_AXI_rresp => processing_system7_0_axi_periph_M04_AXI_RRESP,
      M04_AXI_rvalid => processing_system7_0_axi_periph_M04_AXI_RVALID,
      M04_AXI_wdata => processing_system7_0_axi_periph_M04_AXI_WDATA,
      M04_AXI_wlast => processing_system7_0_axi_periph_M04_AXI_WLAST,
      M04_AXI_wready => processing_system7_0_axi_periph_M04_AXI_WREADY,
      M04_AXI_wstrb => processing_system7_0_axi_periph_M04_AXI_WSTRB,
      M04_AXI_wvalid => processing_system7_0_axi_periph_M04_AXI_WVALID,
      M05_ACLK => processing_system7_0_FCLK_CLK0,
      M05_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M05_AXI_araddr => processing_system7_0_axi_periph_M05_AXI_ARADDR,
      M05_AXI_arburst => processing_system7_0_axi_periph_M05_AXI_ARBURST,
      M05_AXI_arcache => processing_system7_0_axi_periph_M05_AXI_ARCACHE,
      M05_AXI_arid => processing_system7_0_axi_periph_M05_AXI_ARID,
      M05_AXI_arlen => processing_system7_0_axi_periph_M05_AXI_ARLEN,
      M05_AXI_arlock => processing_system7_0_axi_periph_M05_AXI_ARLOCK,
      M05_AXI_arprot => processing_system7_0_axi_periph_M05_AXI_ARPROT,
      M05_AXI_arqos => processing_system7_0_axi_periph_M05_AXI_ARQOS,
      M05_AXI_arready => processing_system7_0_axi_periph_M05_AXI_ARREADY,
      M05_AXI_arregion => processing_system7_0_axi_periph_M05_AXI_ARREGION,
      M05_AXI_arsize => processing_system7_0_axi_periph_M05_AXI_ARSIZE,
      M05_AXI_arvalid => processing_system7_0_axi_periph_M05_AXI_ARVALID,
      M05_AXI_awaddr => processing_system7_0_axi_periph_M05_AXI_AWADDR,
      M05_AXI_awburst => processing_system7_0_axi_periph_M05_AXI_AWBURST,
      M05_AXI_awcache => processing_system7_0_axi_periph_M05_AXI_AWCACHE,
      M05_AXI_awid => processing_system7_0_axi_periph_M05_AXI_AWID,
      M05_AXI_awlen => processing_system7_0_axi_periph_M05_AXI_AWLEN,
      M05_AXI_awlock => processing_system7_0_axi_periph_M05_AXI_AWLOCK,
      M05_AXI_awprot => processing_system7_0_axi_periph_M05_AXI_AWPROT,
      M05_AXI_awqos => processing_system7_0_axi_periph_M05_AXI_AWQOS,
      M05_AXI_awready => processing_system7_0_axi_periph_M05_AXI_AWREADY,
      M05_AXI_awregion => processing_system7_0_axi_periph_M05_AXI_AWREGION,
      M05_AXI_awsize => processing_system7_0_axi_periph_M05_AXI_AWSIZE,
      M05_AXI_awvalid => processing_system7_0_axi_periph_M05_AXI_AWVALID,
      M05_AXI_bid => processing_system7_0_axi_periph_M05_AXI_BID,
      M05_AXI_bready => processing_system7_0_axi_periph_M05_AXI_BREADY,
      M05_AXI_bresp => processing_system7_0_axi_periph_M05_AXI_BRESP,
      M05_AXI_bvalid => processing_system7_0_axi_periph_M05_AXI_BVALID,
      M05_AXI_rdata => processing_system7_0_axi_periph_M05_AXI_RDATA,
      M05_AXI_rid => processing_system7_0_axi_periph_M05_AXI_RID,
      M05_AXI_rlast => processing_system7_0_axi_periph_M05_AXI_RLAST,
      M05_AXI_rready => processing_system7_0_axi_periph_M05_AXI_RREADY,
      M05_AXI_rresp => processing_system7_0_axi_periph_M05_AXI_RRESP,
      M05_AXI_rvalid => processing_system7_0_axi_periph_M05_AXI_RVALID,
      M05_AXI_wdata => processing_system7_0_axi_periph_M05_AXI_WDATA,
      M05_AXI_wlast => processing_system7_0_axi_periph_M05_AXI_WLAST,
      M05_AXI_wready => processing_system7_0_axi_periph_M05_AXI_WREADY,
      M05_AXI_wstrb => processing_system7_0_axi_periph_M05_AXI_WSTRB,
      M05_AXI_wvalid => processing_system7_0_axi_periph_M05_AXI_WVALID,
      M06_ACLK => processing_system7_0_FCLK_CLK0,
      M06_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M06_AXI_araddr => Conn1_ARADDR,
      M06_AXI_arburst => Conn1_ARBURST,
      M06_AXI_arcache => Conn1_ARCACHE,
      M06_AXI_arid => Conn1_ARID,
      M06_AXI_arlen => Conn1_ARLEN,
      M06_AXI_arlock => Conn1_ARLOCK,
      M06_AXI_arprot => Conn1_ARPROT,
      M06_AXI_arqos => Conn1_ARQOS,
      M06_AXI_arready => Conn1_ARREADY,
      M06_AXI_arregion => Conn1_ARREGION,
      M06_AXI_arsize => Conn1_ARSIZE,
      M06_AXI_arvalid => Conn1_ARVALID,
      M06_AXI_awaddr => Conn1_AWADDR,
      M06_AXI_awburst => Conn1_AWBURST,
      M06_AXI_awcache => Conn1_AWCACHE,
      M06_AXI_awid => Conn1_AWID,
      M06_AXI_awlen => Conn1_AWLEN,
      M06_AXI_awlock => Conn1_AWLOCK,
      M06_AXI_awprot => Conn1_AWPROT,
      M06_AXI_awqos => Conn1_AWQOS,
      M06_AXI_awready => Conn1_AWREADY,
      M06_AXI_awregion => Conn1_AWREGION,
      M06_AXI_awsize => Conn1_AWSIZE,
      M06_AXI_awvalid => Conn1_AWVALID,
      M06_AXI_bid => Conn1_BID,
      M06_AXI_bready => Conn1_BREADY,
      M06_AXI_bresp => Conn1_BRESP,
      M06_AXI_bvalid => Conn1_BVALID,
      M06_AXI_rdata => Conn1_RDATA,
      M06_AXI_rid => Conn1_RID,
      M06_AXI_rlast => Conn1_RLAST,
      M06_AXI_rready => Conn1_RREADY,
      M06_AXI_rresp => Conn1_RRESP,
      M06_AXI_rvalid => Conn1_RVALID,
      M06_AXI_wdata => Conn1_WDATA,
      M06_AXI_wlast => Conn1_WLAST,
      M06_AXI_wready => Conn1_WREADY,
      M06_AXI_wstrb => Conn1_WSTRB,
      M06_AXI_wvalid => Conn1_WVALID,
      M07_ACLK => processing_system7_0_FCLK_CLK0,
      M07_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M07_AXI_araddr(31 downto 0) => Conn3_ARADDR(31 downto 0),
      M07_AXI_arprot(2 downto 0) => Conn3_ARPROT(2 downto 0),
      M07_AXI_arready => Conn3_ARREADY,
      M07_AXI_arvalid => Conn3_ARVALID,
      M07_AXI_awaddr(31 downto 0) => Conn3_AWADDR(31 downto 0),
      M07_AXI_awprot(2 downto 0) => Conn3_AWPROT(2 downto 0),
      M07_AXI_awready => Conn3_AWREADY,
      M07_AXI_awvalid => Conn3_AWVALID,
      M07_AXI_bready => Conn3_BREADY,
      M07_AXI_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      M07_AXI_bvalid => Conn3_BVALID,
      M07_AXI_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      M07_AXI_rready => Conn3_RREADY,
      M07_AXI_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      M07_AXI_rvalid => Conn3_RVALID,
      M07_AXI_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      M07_AXI_wready => Conn3_WREADY,
      M07_AXI_wstrb(3 downto 0) => Conn3_WSTRB(3 downto 0),
      M07_AXI_wvalid => Conn3_WVALID,
      M08_ACLK => processing_system7_0_FCLK_CLK0,
      M08_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M08_AXI_araddr(31 downto 0) => Conn4_ARADDR(31 downto 0),
      M08_AXI_arburst(1 downto 0) => Conn4_ARBURST(1 downto 0),
      M08_AXI_arcache(3 downto 0) => Conn4_ARCACHE(3 downto 0),
      M08_AXI_arid(11 downto 0) => Conn4_ARID(11 downto 0),
      M08_AXI_arlen(7 downto 0) => Conn4_ARLEN(7 downto 0),
      M08_AXI_arlock => Conn4_ARLOCK,
      M08_AXI_arprot(2 downto 0) => Conn4_ARPROT(2 downto 0),
      M08_AXI_arqos(3 downto 0) => Conn4_ARQOS(3 downto 0),
      M08_AXI_arready => Conn4_ARREADY,
      M08_AXI_arregion(3 downto 0) => Conn4_ARREGION(3 downto 0),
      M08_AXI_arsize(2 downto 0) => Conn4_ARSIZE(2 downto 0),
      M08_AXI_arvalid => Conn4_ARVALID,
      M08_AXI_awaddr(31 downto 0) => Conn4_AWADDR(31 downto 0),
      M08_AXI_awburst(1 downto 0) => Conn4_AWBURST(1 downto 0),
      M08_AXI_awcache(3 downto 0) => Conn4_AWCACHE(3 downto 0),
      M08_AXI_awid(11 downto 0) => Conn4_AWID(11 downto 0),
      M08_AXI_awlen(7 downto 0) => Conn4_AWLEN(7 downto 0),
      M08_AXI_awlock => Conn4_AWLOCK,
      M08_AXI_awprot(2 downto 0) => Conn4_AWPROT(2 downto 0),
      M08_AXI_awqos(3 downto 0) => Conn4_AWQOS(3 downto 0),
      M08_AXI_awready => Conn4_AWREADY,
      M08_AXI_awregion(3 downto 0) => Conn4_AWREGION(3 downto 0),
      M08_AXI_awsize(2 downto 0) => Conn4_AWSIZE(2 downto 0),
      M08_AXI_awvalid => Conn4_AWVALID,
      M08_AXI_bid(11 downto 0) => Conn4_BID(11 downto 0),
      M08_AXI_bready => Conn4_BREADY,
      M08_AXI_bresp(1 downto 0) => Conn4_BRESP(1 downto 0),
      M08_AXI_bvalid => Conn4_BVALID,
      M08_AXI_rdata(31 downto 0) => Conn4_RDATA(31 downto 0),
      M08_AXI_rid(11 downto 0) => Conn4_RID(11 downto 0),
      M08_AXI_rlast => Conn4_RLAST,
      M08_AXI_rready => Conn4_RREADY,
      M08_AXI_rresp(1 downto 0) => Conn4_RRESP(1 downto 0),
      M08_AXI_rvalid => Conn4_RVALID,
      M08_AXI_wdata(31 downto 0) => Conn4_WDATA(31 downto 0),
      M08_AXI_wlast => Conn4_WLAST,
      M08_AXI_wready => Conn4_WREADY,
      M08_AXI_wstrb(3 downto 0) => Conn4_WSTRB(3 downto 0),
      M08_AXI_wvalid => Conn4_WVALID,
      M09_ACLK => processing_system7_0_FCLK_CLK0,
      M09_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M09_AXI_araddr(31 downto 0) => Conn5_ARADDR(31 downto 0),
      M09_AXI_arburst(1 downto 0) => Conn5_ARBURST(1 downto 0),
      M09_AXI_arcache(3 downto 0) => Conn5_ARCACHE(3 downto 0),
      M09_AXI_arid(11 downto 0) => Conn5_ARID(11 downto 0),
      M09_AXI_arlen(7 downto 0) => Conn5_ARLEN(7 downto 0),
      M09_AXI_arlock => Conn5_ARLOCK,
      M09_AXI_arprot(2 downto 0) => Conn5_ARPROT(2 downto 0),
      M09_AXI_arqos(3 downto 0) => Conn5_ARQOS(3 downto 0),
      M09_AXI_arready => Conn5_ARREADY,
      M09_AXI_arregion(3 downto 0) => Conn5_ARREGION(3 downto 0),
      M09_AXI_arsize(2 downto 0) => Conn5_ARSIZE(2 downto 0),
      M09_AXI_arvalid => Conn5_ARVALID,
      M09_AXI_awaddr(31 downto 0) => Conn5_AWADDR(31 downto 0),
      M09_AXI_awburst(1 downto 0) => Conn5_AWBURST(1 downto 0),
      M09_AXI_awcache(3 downto 0) => Conn5_AWCACHE(3 downto 0),
      M09_AXI_awid(11 downto 0) => Conn5_AWID(11 downto 0),
      M09_AXI_awlen(7 downto 0) => Conn5_AWLEN(7 downto 0),
      M09_AXI_awlock => Conn5_AWLOCK,
      M09_AXI_awprot(2 downto 0) => Conn5_AWPROT(2 downto 0),
      M09_AXI_awqos(3 downto 0) => Conn5_AWQOS(3 downto 0),
      M09_AXI_awready => Conn5_AWREADY,
      M09_AXI_awregion(3 downto 0) => Conn5_AWREGION(3 downto 0),
      M09_AXI_awsize(2 downto 0) => Conn5_AWSIZE(2 downto 0),
      M09_AXI_awvalid => Conn5_AWVALID,
      M09_AXI_bid(11 downto 0) => Conn5_BID(11 downto 0),
      M09_AXI_bready => Conn5_BREADY,
      M09_AXI_bresp(1 downto 0) => Conn5_BRESP(1 downto 0),
      M09_AXI_bvalid => Conn5_BVALID,
      M09_AXI_rdata(31 downto 0) => Conn5_RDATA(31 downto 0),
      M09_AXI_rid(11 downto 0) => Conn5_RID(11 downto 0),
      M09_AXI_rlast => Conn5_RLAST,
      M09_AXI_rready => Conn5_RREADY,
      M09_AXI_rresp(1 downto 0) => Conn5_RRESP(1 downto 0),
      M09_AXI_rvalid => Conn5_RVALID,
      M09_AXI_wdata(31 downto 0) => Conn5_WDATA(31 downto 0),
      M09_AXI_wlast => Conn5_WLAST,
      M09_AXI_wready => Conn5_WREADY,
      M09_AXI_wstrb(3 downto 0) => Conn5_WSTRB(3 downto 0),
      M09_AXI_wvalid => Conn5_WVALID,
      M10_ACLK => processing_system7_0_FCLK_CLK0,
      M10_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M10_AXI_araddr(31 downto 0) => Conn6_ARADDR(31 downto 0),
      M10_AXI_arready => Conn6_ARREADY,
      M10_AXI_arvalid => Conn6_ARVALID,
      M10_AXI_awaddr(31 downto 0) => Conn6_AWADDR(31 downto 0),
      M10_AXI_awready => Conn6_AWREADY,
      M10_AXI_awvalid => Conn6_AWVALID,
      M10_AXI_bready => Conn6_BREADY,
      M10_AXI_bresp(1 downto 0) => Conn6_BRESP(1 downto 0),
      M10_AXI_bvalid => Conn6_BVALID,
      M10_AXI_rdata(31 downto 0) => Conn6_RDATA(31 downto 0),
      M10_AXI_rready => Conn6_RREADY,
      M10_AXI_rresp(1 downto 0) => Conn6_RRESP(1 downto 0),
      M10_AXI_rvalid => Conn6_RVALID,
      M10_AXI_wdata(31 downto 0) => Conn6_WDATA(31 downto 0),
      M10_AXI_wready => Conn6_WREADY,
      M10_AXI_wstrb(3 downto 0) => Conn6_WSTRB(3 downto 0),
      M10_AXI_wvalid => Conn6_WVALID,
      M11_ACLK => processing_system7_0_FCLK_CLK0,
      M11_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M11_AXI_araddr(31 downto 0) => Conn7_ARADDR(31 downto 0),
      M11_AXI_arready => Conn7_ARREADY,
      M11_AXI_arvalid => Conn7_ARVALID,
      M11_AXI_awaddr(31 downto 0) => Conn7_AWADDR(31 downto 0),
      M11_AXI_awready => Conn7_AWREADY,
      M11_AXI_awvalid => Conn7_AWVALID,
      M11_AXI_bready => Conn7_BREADY,
      M11_AXI_bresp(1 downto 0) => Conn7_BRESP(1 downto 0),
      M11_AXI_bvalid => Conn7_BVALID,
      M11_AXI_rdata(31 downto 0) => Conn7_RDATA(31 downto 0),
      M11_AXI_rready => Conn7_RREADY,
      M11_AXI_rresp(1 downto 0) => Conn7_RRESP(1 downto 0),
      M11_AXI_rvalid => Conn7_RVALID,
      M11_AXI_wdata(31 downto 0) => Conn7_WDATA(31 downto 0),
      M11_AXI_wready => Conn7_WREADY,
      M11_AXI_wstrb(3 downto 0) => Conn7_WSTRB(3 downto 0),
      M11_AXI_wvalid => Conn7_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2 is
  port (
    CLK_IN1_D_clk_n : in STD_LOGIC;
    CLK_IN1_D_clk_p : in STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IIC0_scl_i : in STD_LOGIC;
    IIC0_scl_o : out STD_LOGIC;
    IIC0_scl_t : out STD_LOGIC;
    IIC0_sda_i : in STD_LOGIC;
    IIC0_sda_o : out STD_LOGIC;
    IIC0_sda_t : out STD_LOGIC;
    PPSIn_0 : in STD_LOGIC;
    RLED_0 : out STD_LOGIC;
    SCK_0 : out STD_LOGIC;
    SDATA_0 : out STD_LOGIC;
    SS_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_to_adc_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_to_adc_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_from_adc_DS_N : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_from_adc_DS_P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    from_adc_or_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    from_adc_or_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    rtc_rst : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clock : in STD_LOGIC;
    uart_rtl_rxd : in STD_LOGIC;
    uart_rtl_txd : out STD_LOGIC;
    x_from_adc_calrun_fmc : in STD_LOGIC;
    x_to_adc_cal_fmc : out STD_LOGIC;
    x_to_adc_caldly_nscs_fmc : out STD_LOGIC;
    x_to_adc_dclk_rst_fmc : out STD_LOGIC;
    x_to_adc_fsr_ece_fmc : out STD_LOGIC;
    x_to_adc_led_0 : out STD_LOGIC;
    x_to_adc_led_1 : out STD_LOGIC;
    x_to_adc_outedge_ddr_sdata_fmc : out STD_LOGIC;
    x_to_adc_outv_slck_fmc : out STD_LOGIC;
    x_to_adc_pd_fmc : out STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of design_2 : entity is "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=64,numReposBlks=45,numNonXlnxBlks=2,numHierBlks=19,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=3,synth_mode=Global}";
  attribute hw_handoff : string;
  attribute hw_handoff of design_2 : entity is "design_2.hwdef";
end design_2;

architecture STRUCTURE of design_2 is
  component design_2_comblock_0_0 is
  port (
    reg0_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg3_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg4_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg5_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg6_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg7_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg8_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg9_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg10_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg11_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg12_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg13_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg14_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg15_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg0_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg3_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg4_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg5_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg6_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg7_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg8_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg9_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg10_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg11_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg12_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg13_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg14_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg15_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_clk_i : in STD_LOGIC;
    ram_we_i : in STD_LOGIC;
    ram_addr_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ram_data_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_clk_i : in STD_LOGIC;
    fifo_clear_i : in STD_LOGIC;
    fifo_we_i : in STD_LOGIC;
    fifo_data_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_full_o : out STD_LOGIC;
    fifo_afull_o : out STD_LOGIC;
    fifo_overflow_o : out STD_LOGIC;
    fifo_re_i : in STD_LOGIC;
    fifo_data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_empty_o : out STD_LOGIC;
    fifo_aempty_o : out STD_LOGIC;
    fifo_underflow_o : out STD_LOGIC;
    axil_regs_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axil_regs_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axil_regs_awvalid : in STD_LOGIC;
    axil_regs_awready : out STD_LOGIC;
    axil_regs_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_regs_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axil_regs_wvalid : in STD_LOGIC;
    axil_regs_wready : out STD_LOGIC;
    axil_regs_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_regs_bvalid : out STD_LOGIC;
    axil_regs_bready : in STD_LOGIC;
    axil_regs_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axil_regs_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axil_regs_arvalid : in STD_LOGIC;
    axil_regs_arready : out STD_LOGIC;
    axil_regs_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_regs_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_regs_rvalid : out STD_LOGIC;
    axil_regs_rready : in STD_LOGIC;
    axil_regs_aclk : in STD_LOGIC;
    axil_regs_aresetn : in STD_LOGIC;
    axif_dram_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    axif_dram_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    axif_dram_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axif_dram_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_dram_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_dram_awlock : in STD_LOGIC;
    axif_dram_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_dram_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_dram_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_dram_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_dram_awvalid : in STD_LOGIC;
    axif_dram_awready : out STD_LOGIC;
    axif_dram_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axif_dram_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_dram_wlast : in STD_LOGIC;
    axif_dram_wvalid : in STD_LOGIC;
    axif_dram_wready : out STD_LOGIC;
    axif_dram_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    axif_dram_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_dram_bvalid : out STD_LOGIC;
    axif_dram_bready : in STD_LOGIC;
    axif_dram_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    axif_dram_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    axif_dram_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axif_dram_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_dram_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_dram_arlock : in STD_LOGIC;
    axif_dram_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_dram_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_dram_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_dram_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_dram_arvalid : in STD_LOGIC;
    axif_dram_arready : out STD_LOGIC;
    axif_dram_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    axif_dram_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axif_dram_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_dram_rlast : out STD_LOGIC;
    axif_dram_rvalid : out STD_LOGIC;
    axif_dram_rready : in STD_LOGIC;
    axif_dram_aclk : in STD_LOGIC;
    axif_dram_aresetn : in STD_LOGIC;
    axif_fifo_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    axif_fifo_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_fifo_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axif_fifo_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_fifo_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_fifo_awlock : in STD_LOGIC;
    axif_fifo_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_fifo_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_fifo_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_fifo_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_fifo_awvalid : in STD_LOGIC;
    axif_fifo_awready : out STD_LOGIC;
    axif_fifo_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axif_fifo_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_fifo_wlast : in STD_LOGIC;
    axif_fifo_wvalid : in STD_LOGIC;
    axif_fifo_wready : out STD_LOGIC;
    axif_fifo_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    axif_fifo_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_fifo_bvalid : out STD_LOGIC;
    axif_fifo_bready : in STD_LOGIC;
    axif_fifo_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    axif_fifo_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_fifo_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axif_fifo_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_fifo_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_fifo_arlock : in STD_LOGIC;
    axif_fifo_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_fifo_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_fifo_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_fifo_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_fifo_arvalid : in STD_LOGIC;
    axif_fifo_arready : out STD_LOGIC;
    axif_fifo_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    axif_fifo_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axif_fifo_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_fifo_rlast : out STD_LOGIC;
    axif_fifo_rvalid : out STD_LOGIC;
    axif_fifo_rready : in STD_LOGIC;
    axif_fifo_aclk : in STD_LOGIC;
    axif_fifo_aresetn : in STD_LOGIC
  );
  end component design_2_comblock_0_0;
  component design_2_proc_sys_reset_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_proc_sys_reset_1_0;
  component design_2_util_ds_buf_0_1 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_util_ds_buf_0_1;
  component design_2_util_ds_buf_1_0 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_util_ds_buf_1_0;
  component design_2_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component design_2_axi_uartlite_0_0;
  component design_2_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_axi_gpio_0_0;
  component design_2_GPS_EN_0_0 is
  port (
    PPSIn : in STD_LOGIC;
    CLK : in STD_LOGIC;
    PPSOut : out STD_LOGIC;
    Fix : out STD_LOGIC
  );
  end component design_2_GPS_EN_0_0;
  component design_2_clk_wiz_0_1 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC
  );
  end component design_2_clk_wiz_0_1;
  signal ADC_Controller_Ctrl_reg_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ADC_Controller_adc_raw : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ADC_Controller_clk_to_adc_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ADC_Controller_clk_to_adc_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ADC_Controller_x_to_adc_cal_fmc : STD_LOGIC;
  signal ADC_Controller_x_to_adc_caldly_nscs_fmc : STD_LOGIC;
  signal ADC_Controller_x_to_adc_dclk_rst_fmc : STD_LOGIC;
  signal ADC_Controller_x_to_adc_fsr_ece_fmc : STD_LOGIC;
  signal ADC_Controller_x_to_adc_led_0 : STD_LOGIC;
  signal ADC_Controller_x_to_adc_led_1 : STD_LOGIC;
  signal ADC_Controller_x_to_adc_outedge_ddr_sdata_fmc : STD_LOGIC;
  signal ADC_Controller_x_to_adc_outv_slck_fmc : STD_LOGIC;
  signal ADC_Controller_x_to_adc_pd_fmc : STD_LOGIC;
  signal CLK_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK_IN1_D_clk_n_1 : STD_LOGIC;
  signal CLK_IN1_D_clk_p_1 : STD_LOGIC;
  signal Comblock_PL_FIFO_CLR : STD_LOGIC;
  signal Comblock_PL_FIFO_DATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Comblock_PL_FIFO_WE : STD_LOGIC;
  signal Comblock_PL_addb_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Comblock_PL_curr_cycle_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Comblock_PL_dinb_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Comblock_PL_done_0 : STD_LOGIC;
  signal Comblock_PL_trigger : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Comblock_PL_tsf : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Comblock_PL_tss : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Comblock_PL_web_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DAC_CTRL_0_RLED : STD_LOGIC;
  signal DAC_CTRL_0_SCK : STD_LOGIC;
  signal DAC_CTRL_0_SDATA : STD_LOGIC;
  signal DAC_CTRL_0_SS : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPS_EN_0_Fix : STD_LOGIC;
  signal GPS_EN_0_PPSOut : STD_LOGIC;
  signal IRQ_F2P_1 : STD_LOGIC;
  signal PPSIn_0_1 : STD_LOGIC;
  signal Processing_System_FCLK_CLK0 : STD_LOGIC;
  signal Processing_System_FCLK_CLK1 : STD_LOGIC;
  signal Processing_System_FCLK_RESET0_N : STD_LOGIC;
  signal Processing_System_IIC_0_0_SCL_I : STD_LOGIC;
  signal Processing_System_IIC_0_0_SCL_O : STD_LOGIC;
  signal Processing_System_IIC_0_0_SCL_T : STD_LOGIC;
  signal Processing_System_IIC_0_0_SDA_I : STD_LOGIC;
  signal Processing_System_IIC_0_0_SDA_O : STD_LOGIC;
  signal Processing_System_IIC_0_0_SDA_T : STD_LOGIC;
  signal Processing_System_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M00_AXI_ARREADY : STD_LOGIC;
  signal Processing_System_M00_AXI_ARVALID : STD_LOGIC;
  signal Processing_System_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M00_AXI_AWREADY : STD_LOGIC;
  signal Processing_System_M00_AXI_AWVALID : STD_LOGIC;
  signal Processing_System_M00_AXI_BREADY : STD_LOGIC;
  signal Processing_System_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M00_AXI_BVALID : STD_LOGIC;
  signal Processing_System_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M00_AXI_RREADY : STD_LOGIC;
  signal Processing_System_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M00_AXI_RVALID : STD_LOGIC;
  signal Processing_System_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M00_AXI_WREADY : STD_LOGIC;
  signal Processing_System_M00_AXI_WVALID : STD_LOGIC;
  signal Processing_System_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M02_AXI_ARREADY : STD_LOGIC;
  signal Processing_System_M02_AXI_ARVALID : STD_LOGIC;
  signal Processing_System_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M02_AXI_AWREADY : STD_LOGIC;
  signal Processing_System_M02_AXI_AWVALID : STD_LOGIC;
  signal Processing_System_M02_AXI_BREADY : STD_LOGIC;
  signal Processing_System_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M02_AXI_BVALID : STD_LOGIC;
  signal Processing_System_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M02_AXI_RREADY : STD_LOGIC;
  signal Processing_System_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M02_AXI_RVALID : STD_LOGIC;
  signal Processing_System_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M02_AXI_WREADY : STD_LOGIC;
  signal Processing_System_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M02_AXI_WVALID : STD_LOGIC;
  signal Processing_System_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M07_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M07_AXI_ARREADY : STD_LOGIC;
  signal Processing_System_M07_AXI_ARVALID : STD_LOGIC;
  signal Processing_System_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M07_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M07_AXI_AWREADY : STD_LOGIC;
  signal Processing_System_M07_AXI_AWVALID : STD_LOGIC;
  signal Processing_System_M07_AXI_BREADY : STD_LOGIC;
  signal Processing_System_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M07_AXI_BVALID : STD_LOGIC;
  signal Processing_System_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M07_AXI_RREADY : STD_LOGIC;
  signal Processing_System_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M07_AXI_RVALID : STD_LOGIC;
  signal Processing_System_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M07_AXI_WREADY : STD_LOGIC;
  signal Processing_System_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M07_AXI_WVALID : STD_LOGIC;
  signal Processing_System_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M08_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M08_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M08_AXI_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Processing_System_M08_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Processing_System_M08_AXI_ARLOCK : STD_LOGIC;
  signal Processing_System_M08_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M08_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M08_AXI_ARREADY : STD_LOGIC;
  signal Processing_System_M08_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M08_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M08_AXI_ARVALID : STD_LOGIC;
  signal Processing_System_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M08_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M08_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M08_AXI_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Processing_System_M08_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Processing_System_M08_AXI_AWLOCK : STD_LOGIC;
  signal Processing_System_M08_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M08_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M08_AXI_AWREADY : STD_LOGIC;
  signal Processing_System_M08_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M08_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M08_AXI_AWVALID : STD_LOGIC;
  signal Processing_System_M08_AXI_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Processing_System_M08_AXI_BREADY : STD_LOGIC;
  signal Processing_System_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M08_AXI_BVALID : STD_LOGIC;
  signal Processing_System_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M08_AXI_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Processing_System_M08_AXI_RLAST : STD_LOGIC;
  signal Processing_System_M08_AXI_RREADY : STD_LOGIC;
  signal Processing_System_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M08_AXI_RVALID : STD_LOGIC;
  signal Processing_System_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M08_AXI_WLAST : STD_LOGIC;
  signal Processing_System_M08_AXI_WREADY : STD_LOGIC;
  signal Processing_System_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M08_AXI_WVALID : STD_LOGIC;
  signal Processing_System_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M09_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M09_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M09_AXI_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Processing_System_M09_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Processing_System_M09_AXI_ARLOCK : STD_LOGIC;
  signal Processing_System_M09_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M09_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M09_AXI_ARREADY : STD_LOGIC;
  signal Processing_System_M09_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M09_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M09_AXI_ARVALID : STD_LOGIC;
  signal Processing_System_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M09_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M09_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M09_AXI_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Processing_System_M09_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Processing_System_M09_AXI_AWLOCK : STD_LOGIC;
  signal Processing_System_M09_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M09_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M09_AXI_AWREADY : STD_LOGIC;
  signal Processing_System_M09_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M09_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_System_M09_AXI_AWVALID : STD_LOGIC;
  signal Processing_System_M09_AXI_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Processing_System_M09_AXI_BREADY : STD_LOGIC;
  signal Processing_System_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M09_AXI_BVALID : STD_LOGIC;
  signal Processing_System_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M09_AXI_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Processing_System_M09_AXI_RLAST : STD_LOGIC;
  signal Processing_System_M09_AXI_RREADY : STD_LOGIC;
  signal Processing_System_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M09_AXI_RVALID : STD_LOGIC;
  signal Processing_System_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M09_AXI_WLAST : STD_LOGIC;
  signal Processing_System_M09_AXI_WREADY : STD_LOGIC;
  signal Processing_System_M09_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M09_AXI_WVALID : STD_LOGIC;
  signal Processing_System_M10_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M10_AXI_ARREADY : STD_LOGIC;
  signal Processing_System_M10_AXI_ARVALID : STD_LOGIC;
  signal Processing_System_M10_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M10_AXI_AWREADY : STD_LOGIC;
  signal Processing_System_M10_AXI_AWVALID : STD_LOGIC;
  signal Processing_System_M10_AXI_BREADY : STD_LOGIC;
  signal Processing_System_M10_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M10_AXI_BVALID : STD_LOGIC;
  signal Processing_System_M10_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M10_AXI_RREADY : STD_LOGIC;
  signal Processing_System_M10_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M10_AXI_RVALID : STD_LOGIC;
  signal Processing_System_M10_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M10_AXI_WREADY : STD_LOGIC;
  signal Processing_System_M10_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M10_AXI_WVALID : STD_LOGIC;
  signal Processing_System_M11_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M11_AXI_ARREADY : STD_LOGIC;
  signal Processing_System_M11_AXI_ARVALID : STD_LOGIC;
  signal Processing_System_M11_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M11_AXI_AWREADY : STD_LOGIC;
  signal Processing_System_M11_AXI_AWVALID : STD_LOGIC;
  signal Processing_System_M11_AXI_BREADY : STD_LOGIC;
  signal Processing_System_M11_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M11_AXI_BVALID : STD_LOGIC;
  signal Processing_System_M11_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M11_AXI_RREADY : STD_LOGIC;
  signal Processing_System_M11_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_System_M11_AXI_RVALID : STD_LOGIC;
  signal Processing_System_M11_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_System_M11_AXI_WREADY : STD_LOGIC;
  signal Processing_System_M11_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_System_M11_AXI_WVALID : STD_LOGIC;
  signal Processing_System_peripheral_aresetn1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_HP0_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_HP0_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_HP0_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_HP0_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_HP0_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_HP0_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_HP0_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_HP0_1_AWREADY : STD_LOGIC;
  signal S_AXI_HP0_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_HP0_1_AWVALID : STD_LOGIC;
  signal S_AXI_HP0_1_BREADY : STD_LOGIC;
  signal S_AXI_HP0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_HP0_1_BVALID : STD_LOGIC;
  signal S_AXI_HP0_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXI_HP0_1_WLAST : STD_LOGIC;
  signal S_AXI_HP0_1_WREADY : STD_LOGIC;
  signal S_AXI_HP0_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_HP0_1_WVALID : STD_LOGIC;
  signal axi_uartlite_0_UART_RxD : STD_LOGIC;
  signal axi_uartlite_0_UART_TxD : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal comblock_0_fifo_aempty_o : STD_LOGIC;
  signal comblock_0_fifo_afull_o : STD_LOGIC;
  signal comblock_0_fifo_empty_o : STD_LOGIC;
  signal comblock_0_fifo_full_o : STD_LOGIC;
  signal comblock_0_ram_data_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg0_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg10_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg11_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg12_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg13_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg14_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg1_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg2_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg3_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg4_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg5_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg6_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg7_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg8_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg9_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_from_adc_DS_N_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_from_adc_DS_P_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal from_adc_or_DS_N_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal from_adc_or_DS_P_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal util_ds_buf_0_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal x_from_adc_calrun_fmc_1 : STD_LOGIC;
  signal NLW_Comblock_PL_debug_state_0_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_Processing_System_M01_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M01_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M03_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M04_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M05_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_Processing_System_M06_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_uartlite_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_comblock_0_fifo_overflow_o_UNCONNECTED : STD_LOGIC;
  signal NLW_comblock_0_fifo_underflow_o_UNCONNECTED : STD_LOGIC;
  signal NLW_comblock_0_fifo_data_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_comblock_0_reg15_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of CLK_IN1_D_clk_n : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_D_CLK_N CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK_IN1_D_clk_n : signal is "XIL_INTERFACENAME CLK.CLK_IN1_D_CLK_N, CLK_DOMAIN design_2_CLK_IN1_D_clk_n, FREQ_HZ 250000000, PHASE 0.000";
  attribute x_interface_info of CLK_IN1_D_clk_p : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_D_CLK_P CLK";
  attribute x_interface_parameter of CLK_IN1_D_clk_p : signal is "XIL_INTERFACENAME CLK.CLK_IN1_D_CLK_P, CLK_DOMAIN design_2_CLK_IN1_D_clk_p, FREQ_HZ 250000000, PHASE 0.000";
  attribute x_interface_info of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute x_interface_info of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute x_interface_info of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute x_interface_info of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute x_interface_info of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute x_interface_info of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute x_interface_info of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute x_interface_info of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute x_interface_info of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute x_interface_info of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute x_interface_parameter of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute x_interface_info of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute x_interface_info of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute x_interface_info of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute x_interface_info of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute x_interface_info of IIC0_scl_i : signal is "xilinx.com:interface:iic:1.0 IIC0 SCL_I";
  attribute x_interface_info of IIC0_scl_o : signal is "xilinx.com:interface:iic:1.0 IIC0 SCL_O";
  attribute x_interface_info of IIC0_scl_t : signal is "xilinx.com:interface:iic:1.0 IIC0 SCL_T";
  attribute x_interface_info of IIC0_sda_i : signal is "xilinx.com:interface:iic:1.0 IIC0 SDA_I";
  attribute x_interface_info of IIC0_sda_o : signal is "xilinx.com:interface:iic:1.0 IIC0 SDA_O";
  attribute x_interface_info of IIC0_sda_t : signal is "xilinx.com:interface:iic:1.0 IIC0 SDA_T";
  attribute x_interface_info of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute x_interface_parameter of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_2_sys_clock, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of uart_rtl_rxd : signal is "xilinx.com:interface:uart:1.0 uart_rtl RxD";
  attribute x_interface_info of uart_rtl_txd : signal is "xilinx.com:interface:uart:1.0 uart_rtl TxD";
  attribute x_interface_info of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute x_interface_parameter of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute x_interface_info of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute x_interface_info of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute x_interface_info of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute x_interface_info of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute x_interface_info of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute x_interface_info of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute x_interface_info of data_from_adc_DS_N : signal is "xilinx.com:signal:data:1.0 DATA.DATA_FROM_ADC_DS_N DATA";
  attribute x_interface_parameter of data_from_adc_DS_N : signal is "XIL_INTERFACENAME DATA.DATA_FROM_ADC_DS_N, LAYERED_METADATA undef";
  attribute x_interface_info of data_from_adc_DS_P : signal is "xilinx.com:signal:data:1.0 DATA.DATA_FROM_ADC_DS_P DATA";
  attribute x_interface_parameter of data_from_adc_DS_P : signal is "XIL_INTERFACENAME DATA.DATA_FROM_ADC_DS_P, LAYERED_METADATA undef";
  attribute x_interface_info of rtc_rst : signal is "xilinx.com:signal:reset:1.0 RST.RTC_RST RST";
  attribute x_interface_parameter of rtc_rst : signal is "XIL_INTERFACENAME RST.RTC_RST, POLARITY ACTIVE_LOW";
begin
  CLK_IN1_D_clk_n_1 <= CLK_IN1_D_clk_n;
  CLK_IN1_D_clk_p_1 <= CLK_IN1_D_clk_p;
  IIC0_scl_o <= Processing_System_IIC_0_0_SCL_O;
  IIC0_scl_t <= Processing_System_IIC_0_0_SCL_T;
  IIC0_sda_o <= Processing_System_IIC_0_0_SDA_O;
  IIC0_sda_t <= Processing_System_IIC_0_0_SDA_T;
  PPSIn_0_1 <= PPSIn_0;
  Processing_System_IIC_0_0_SCL_I <= IIC0_scl_i;
  Processing_System_IIC_0_0_SDA_I <= IIC0_sda_i;
  RLED_0 <= DAC_CTRL_0_RLED;
  SCK_0 <= DAC_CTRL_0_SCK;
  SDATA_0 <= DAC_CTRL_0_SDATA;
  SS_0(0) <= DAC_CTRL_0_SS(0);
  axi_uartlite_0_UART_RxD <= uart_rtl_rxd;
  clk_to_adc_DS_N(0) <= ADC_Controller_clk_to_adc_DS_N(0);
  clk_to_adc_DS_P(0) <= ADC_Controller_clk_to_adc_DS_P(0);
  data_from_adc_DS_N_1(15 downto 0) <= data_from_adc_DS_N(15 downto 0);
  data_from_adc_DS_P_1(15 downto 0) <= data_from_adc_DS_P(15 downto 0);
  from_adc_or_DS_N_1(0) <= from_adc_or_DS_N(0);
  from_adc_or_DS_P_1(0) <= from_adc_or_DS_P(0);
  rtc_rst(0) <= proc_sys_reset_1_peripheral_aresetn(0);
  sys_clock_1 <= sys_clock;
  uart_rtl_txd <= axi_uartlite_0_UART_TxD;
  x_from_adc_calrun_fmc_1 <= x_from_adc_calrun_fmc;
  x_to_adc_cal_fmc <= ADC_Controller_x_to_adc_cal_fmc;
  x_to_adc_caldly_nscs_fmc <= ADC_Controller_x_to_adc_caldly_nscs_fmc;
  x_to_adc_dclk_rst_fmc <= ADC_Controller_x_to_adc_dclk_rst_fmc;
  x_to_adc_fsr_ece_fmc <= ADC_Controller_x_to_adc_fsr_ece_fmc;
  x_to_adc_led_0 <= ADC_Controller_x_to_adc_led_0;
  x_to_adc_led_1 <= ADC_Controller_x_to_adc_led_1;
  x_to_adc_outedge_ddr_sdata_fmc <= ADC_Controller_x_to_adc_outedge_ddr_sdata_fmc;
  x_to_adc_outv_slck_fmc <= ADC_Controller_x_to_adc_outv_slck_fmc;
  x_to_adc_pd_fmc <= ADC_Controller_x_to_adc_pd_fmc;
ADC_Controller: entity work.ADC_Controller_imp_1VI3HWA
     port map (
      Ctrl_reg_in(31 downto 0) => comblock_0_reg7_o(31 downto 0),
      Ctrl_reg_out(31 downto 0) => ADC_Controller_Ctrl_reg_out(31 downto 0),
      adc_raw(15 downto 0) => ADC_Controller_adc_raw(15 downto 0),
      clk_in1 => clk_wiz_0_clk_out2,
      clk_to_adc_DS_N(0) => ADC_Controller_clk_to_adc_DS_N(0),
      clk_to_adc_DS_P(0) => ADC_Controller_clk_to_adc_DS_P(0),
      data_from_adc_DS_N(15 downto 0) => data_from_adc_DS_N_1(15 downto 0),
      data_from_adc_DS_P(15 downto 0) => data_from_adc_DS_P_1(15 downto 0),
      from_adc_or_DS_N(0) => from_adc_or_DS_N_1(0),
      from_adc_or_DS_P(0) => from_adc_or_DS_P_1(0),
      s00_axi_aresetn1(0) => proc_sys_reset_0_peripheral_aresetn(0),
      x_from_adc_calrun_fmc => x_from_adc_calrun_fmc_1,
      x_to_adc_cal_fmc => ADC_Controller_x_to_adc_cal_fmc,
      x_to_adc_caldly_nscs_fmc => ADC_Controller_x_to_adc_caldly_nscs_fmc,
      x_to_adc_dclk_rst_fmc => ADC_Controller_x_to_adc_dclk_rst_fmc,
      x_to_adc_fsr_ece_fmc => ADC_Controller_x_to_adc_fsr_ece_fmc,
      x_to_adc_led_0 => ADC_Controller_x_to_adc_led_0,
      x_to_adc_led_1 => ADC_Controller_x_to_adc_led_1,
      x_to_adc_outedge_ddr_sdata_fmc => ADC_Controller_x_to_adc_outedge_ddr_sdata_fmc,
      x_to_adc_outv_slck_fmc => ADC_Controller_x_to_adc_outv_slck_fmc,
      x_to_adc_pd_fmc => ADC_Controller_x_to_adc_pd_fmc
    );
Comblock_PL: entity work.Comblock_PL_imp_14EJTFU
     port map (
      CLK => CLK_1(0),
      CTRL(31 downto 0) => comblock_0_reg5_o(31 downto 0),
      DATA(31 downto 0) => comblock_0_reg4_o(31 downto 0),
      DEVICE(31 downto 0) => comblock_0_reg6_o(31 downto 0),
      Din(15 downto 0) => ADC_Controller_adc_raw(15 downto 0),
      FIFOMGR_CTRL_REG(31 downto 0) => comblock_0_reg10_o(31 downto 0),
      FIFO_AEMPTY => comblock_0_fifo_aempty_o,
      FIFO_AFULL => comblock_0_fifo_afull_o,
      FIFO_CLR => Comblock_PL_FIFO_CLR,
      FIFO_DATA(31 downto 0) => Comblock_PL_FIFO_DATA(31 downto 0),
      FIFO_EMPTY => comblock_0_fifo_empty_o,
      FIFO_FULL => comblock_0_fifo_full_o,
      FIFO_WE => Comblock_PL_FIFO_WE,
      In0(31 downto 0) => comblock_0_reg11_o(31 downto 0),
      In1(31 downto 0) => comblock_0_reg12_o(31 downto 0),
      In2(31 downto 0) => comblock_0_reg13_o(31 downto 0),
      In3(31 downto 0) => comblock_0_reg14_o(31 downto 0),
      M00_AXI_awaddr(31 downto 0) => S_AXI_HP0_1_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => S_AXI_HP0_1_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => S_AXI_HP0_1_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => S_AXI_HP0_1_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => S_AXI_HP0_1_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => S_AXI_HP0_1_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => S_AXI_HP0_1_AWQOS(3 downto 0),
      M00_AXI_awready => S_AXI_HP0_1_AWREADY,
      M00_AXI_awsize(2 downto 0) => S_AXI_HP0_1_AWSIZE(2 downto 0),
      M00_AXI_awvalid => S_AXI_HP0_1_AWVALID,
      M00_AXI_bready => S_AXI_HP0_1_BREADY,
      M00_AXI_bresp(1 downto 0) => S_AXI_HP0_1_BRESP(1 downto 0),
      M00_AXI_bvalid => S_AXI_HP0_1_BVALID,
      M00_AXI_wdata(63 downto 0) => S_AXI_HP0_1_WDATA(63 downto 0),
      M00_AXI_wlast => S_AXI_HP0_1_WLAST,
      M00_AXI_wready => S_AXI_HP0_1_WREADY,
      M00_AXI_wstrb(7 downto 0) => S_AXI_HP0_1_WSTRB(7 downto 0),
      M00_AXI_wvalid => S_AXI_HP0_1_WVALID,
      N1(31 downto 0) => comblock_0_reg3_o(31 downto 0),
      RLED_0 => DAC_CTRL_0_RLED,
      RST => proc_sys_reset_1_peripheral_aresetn(0),
      SCK_0 => DAC_CTRL_0_SCK,
      SDATA_0 => DAC_CTRL_0_SDATA,
      SS_0(0) => DAC_CTRL_0_SS(0),
      S_AXI_LITE_araddr(31 downto 0) => Processing_System_M00_AXI_ARADDR(31 downto 0),
      S_AXI_LITE_arready => Processing_System_M00_AXI_ARREADY,
      S_AXI_LITE_arvalid => Processing_System_M00_AXI_ARVALID,
      S_AXI_LITE_awaddr(31 downto 0) => Processing_System_M00_AXI_AWADDR(31 downto 0),
      S_AXI_LITE_awready => Processing_System_M00_AXI_AWREADY,
      S_AXI_LITE_awvalid => Processing_System_M00_AXI_AWVALID,
      S_AXI_LITE_bready => Processing_System_M00_AXI_BREADY,
      S_AXI_LITE_bresp(1 downto 0) => Processing_System_M00_AXI_BRESP(1 downto 0),
      S_AXI_LITE_bvalid => Processing_System_M00_AXI_BVALID,
      S_AXI_LITE_rdata(31 downto 0) => Processing_System_M00_AXI_RDATA(31 downto 0),
      S_AXI_LITE_rready => Processing_System_M00_AXI_RREADY,
      S_AXI_LITE_rresp(1 downto 0) => Processing_System_M00_AXI_RRESP(1 downto 0),
      S_AXI_LITE_rvalid => Processing_System_M00_AXI_RVALID,
      S_AXI_LITE_wdata(31 downto 0) => Processing_System_M00_AXI_WDATA(31 downto 0),
      S_AXI_LITE_wready => Processing_System_M00_AXI_WREADY,
      S_AXI_LITE_wvalid => Processing_System_M00_AXI_WVALID,
      addb_0(15 downto 0) => Comblock_PL_addb_0(15 downto 0),
      ctrl_reg(31 downto 0) => comblock_0_reg1_o(31 downto 0),
      ctrl_reg_0(31 downto 0) => comblock_0_reg8_o(31 downto 0),
      curr_cycle_0(31 downto 0) => Comblock_PL_curr_cycle_0(31 downto 0),
      debug_state_0(1 downto 0) => NLW_Comblock_PL_debug_state_0_UNCONNECTED(1 downto 0),
      dinb_0(31 downto 0) => Comblock_PL_dinb_0(31 downto 0),
      done_0 => Comblock_PL_done_0,
      doutb_0(31 downto 0) => comblock_0_ram_data_o(31 downto 0),
      m_axi_s2mm_aclk => Processing_System_FCLK_CLK1,
      max_cycles_0(31 downto 0) => comblock_0_reg9_o(31 downto 0),
      n(31 downto 0) => comblock_0_reg2_o(31 downto 0),
      rtc_1hz => GPS_EN_0_PPSOut,
      s00_axi_araddr(31 downto 0) => Processing_System_M02_AXI_ARADDR(31 downto 0),
      s00_axi_aresetn1(0) => proc_sys_reset_0_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => Processing_System_M02_AXI_ARPROT(2 downto 0),
      s00_axi_arready => Processing_System_M02_AXI_ARREADY,
      s00_axi_arvalid => Processing_System_M02_AXI_ARVALID,
      s00_axi_awaddr(31 downto 0) => Processing_System_M02_AXI_AWADDR(31 downto 0),
      s00_axi_awprot(2 downto 0) => Processing_System_M02_AXI_AWPROT(2 downto 0),
      s00_axi_awready => Processing_System_M02_AXI_AWREADY,
      s00_axi_awvalid => Processing_System_M02_AXI_AWVALID,
      s00_axi_bready => Processing_System_M02_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => Processing_System_M02_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => Processing_System_M02_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => Processing_System_M02_AXI_RDATA(31 downto 0),
      s00_axi_rready => Processing_System_M02_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => Processing_System_M02_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => Processing_System_M02_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => Processing_System_M02_AXI_WDATA(31 downto 0),
      s00_axi_wready => Processing_System_M02_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => Processing_System_M02_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => Processing_System_M02_AXI_WVALID,
      s2mm_introut => IRQ_F2P_1,
      threshold(31 downto 0) => comblock_0_reg0_o(31 downto 0),
      trigger(31 downto 0) => Comblock_PL_trigger(31 downto 0),
      tsf(31 downto 0) => Comblock_PL_tsf(31 downto 0),
      tss(31 downto 0) => Comblock_PL_tss(31 downto 0),
      web_0(0) => Comblock_PL_web_0(0)
    );
Fix: component design_2_axi_gpio_0_0
     port map (
      gpio_io_i(0) => GPS_EN_0_Fix,
      s_axi_aclk => Processing_System_FCLK_CLK1,
      s_axi_araddr(8 downto 0) => Processing_System_M11_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => Processing_System_peripheral_aresetn1(0),
      s_axi_arready => Processing_System_M11_AXI_ARREADY,
      s_axi_arvalid => Processing_System_M11_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => Processing_System_M11_AXI_AWADDR(8 downto 0),
      s_axi_awready => Processing_System_M11_AXI_AWREADY,
      s_axi_awvalid => Processing_System_M11_AXI_AWVALID,
      s_axi_bready => Processing_System_M11_AXI_BREADY,
      s_axi_bresp(1 downto 0) => Processing_System_M11_AXI_BRESP(1 downto 0),
      s_axi_bvalid => Processing_System_M11_AXI_BVALID,
      s_axi_rdata(31 downto 0) => Processing_System_M11_AXI_RDATA(31 downto 0),
      s_axi_rready => Processing_System_M11_AXI_RREADY,
      s_axi_rresp(1 downto 0) => Processing_System_M11_AXI_RRESP(1 downto 0),
      s_axi_rvalid => Processing_System_M11_AXI_RVALID,
      s_axi_wdata(31 downto 0) => Processing_System_M11_AXI_WDATA(31 downto 0),
      s_axi_wready => Processing_System_M11_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => Processing_System_M11_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => Processing_System_M11_AXI_WVALID
    );
GPS_EN_0: component design_2_GPS_EN_0_0
     port map (
      CLK => clk_wiz_0_clk_out1,
      Fix => GPS_EN_0_Fix,
      PPSIn => PPSIn_0_1,
      PPSOut => GPS_EN_0_PPSOut
    );
Processing_System: entity work.Processing_System_imp_FN0UVH
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FCLK_CLK0 => Processing_System_FCLK_CLK0,
      FCLK_CLK1 => Processing_System_FCLK_CLK1,
      FCLK_RESET0_N => Processing_System_FCLK_RESET0_N,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IIC_0_0_scl_i => Processing_System_IIC_0_0_SCL_I,
      IIC_0_0_scl_o => Processing_System_IIC_0_0_SCL_O,
      IIC_0_0_scl_t => Processing_System_IIC_0_0_SCL_T,
      IIC_0_0_sda_i => Processing_System_IIC_0_0_SDA_I,
      IIC_0_0_sda_o => Processing_System_IIC_0_0_SDA_O,
      IIC_0_0_sda_t => Processing_System_IIC_0_0_SDA_T,
      IRQ_F2P(0) => IRQ_F2P_1,
      M00_AXI_araddr(31 downto 0) => Processing_System_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => Processing_System_M00_AXI_ARREADY,
      M00_AXI_arvalid => Processing_System_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => Processing_System_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => Processing_System_M00_AXI_AWREADY,
      M00_AXI_awvalid => Processing_System_M00_AXI_AWVALID,
      M00_AXI_bready => Processing_System_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => Processing_System_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => Processing_System_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => Processing_System_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => Processing_System_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => Processing_System_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => Processing_System_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => Processing_System_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => Processing_System_M00_AXI_WREADY,
      M00_AXI_wvalid => Processing_System_M00_AXI_WVALID,
      M01_AXI_araddr => NLW_Processing_System_M01_AXI_araddr_UNCONNECTED,
      M01_AXI_arburst => NLW_Processing_System_M01_AXI_arburst_UNCONNECTED,
      M01_AXI_arcache => NLW_Processing_System_M01_AXI_arcache_UNCONNECTED,
      M01_AXI_arid => NLW_Processing_System_M01_AXI_arid_UNCONNECTED,
      M01_AXI_arlen => NLW_Processing_System_M01_AXI_arlen_UNCONNECTED,
      M01_AXI_arlock => NLW_Processing_System_M01_AXI_arlock_UNCONNECTED,
      M01_AXI_arprot => NLW_Processing_System_M01_AXI_arprot_UNCONNECTED,
      M01_AXI_arqos => NLW_Processing_System_M01_AXI_arqos_UNCONNECTED,
      M01_AXI_arready => '0',
      M01_AXI_arregion => NLW_Processing_System_M01_AXI_arregion_UNCONNECTED,
      M01_AXI_arsize => NLW_Processing_System_M01_AXI_arsize_UNCONNECTED,
      M01_AXI_arvalid => NLW_Processing_System_M01_AXI_arvalid_UNCONNECTED,
      M01_AXI_awaddr => NLW_Processing_System_M01_AXI_awaddr_UNCONNECTED,
      M01_AXI_awburst => NLW_Processing_System_M01_AXI_awburst_UNCONNECTED,
      M01_AXI_awcache => NLW_Processing_System_M01_AXI_awcache_UNCONNECTED,
      M01_AXI_awid => NLW_Processing_System_M01_AXI_awid_UNCONNECTED,
      M01_AXI_awlen => NLW_Processing_System_M01_AXI_awlen_UNCONNECTED,
      M01_AXI_awlock => NLW_Processing_System_M01_AXI_awlock_UNCONNECTED,
      M01_AXI_awprot => NLW_Processing_System_M01_AXI_awprot_UNCONNECTED,
      M01_AXI_awqos => NLW_Processing_System_M01_AXI_awqos_UNCONNECTED,
      M01_AXI_awready => '0',
      M01_AXI_awregion => NLW_Processing_System_M01_AXI_awregion_UNCONNECTED,
      M01_AXI_awsize => NLW_Processing_System_M01_AXI_awsize_UNCONNECTED,
      M01_AXI_awvalid => NLW_Processing_System_M01_AXI_awvalid_UNCONNECTED,
      M01_AXI_bid => '0',
      M01_AXI_bready => NLW_Processing_System_M01_AXI_bready_UNCONNECTED,
      M01_AXI_bresp => '0',
      M01_AXI_bvalid => '0',
      M01_AXI_rdata => '0',
      M01_AXI_rid => '0',
      M01_AXI_rlast => '0',
      M01_AXI_rready => NLW_Processing_System_M01_AXI_rready_UNCONNECTED,
      M01_AXI_rresp => '0',
      M01_AXI_rvalid => '0',
      M01_AXI_wdata => NLW_Processing_System_M01_AXI_wdata_UNCONNECTED,
      M01_AXI_wlast => NLW_Processing_System_M01_AXI_wlast_UNCONNECTED,
      M01_AXI_wready => '0',
      M01_AXI_wstrb => NLW_Processing_System_M01_AXI_wstrb_UNCONNECTED,
      M01_AXI_wvalid => NLW_Processing_System_M01_AXI_wvalid_UNCONNECTED,
      M02_AXI_araddr(31 downto 0) => Processing_System_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => Processing_System_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready => Processing_System_M02_AXI_ARREADY,
      M02_AXI_arvalid => Processing_System_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => Processing_System_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => Processing_System_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready => Processing_System_M02_AXI_AWREADY,
      M02_AXI_awvalid => Processing_System_M02_AXI_AWVALID,
      M02_AXI_bready => Processing_System_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => Processing_System_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => Processing_System_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => Processing_System_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => Processing_System_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => Processing_System_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => Processing_System_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => Processing_System_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => Processing_System_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => Processing_System_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => Processing_System_M02_AXI_WVALID,
      M03_AXI_araddr => NLW_Processing_System_M03_AXI_araddr_UNCONNECTED,
      M03_AXI_arburst => NLW_Processing_System_M03_AXI_arburst_UNCONNECTED,
      M03_AXI_arcache => NLW_Processing_System_M03_AXI_arcache_UNCONNECTED,
      M03_AXI_arid => NLW_Processing_System_M03_AXI_arid_UNCONNECTED,
      M03_AXI_arlen => NLW_Processing_System_M03_AXI_arlen_UNCONNECTED,
      M03_AXI_arlock => NLW_Processing_System_M03_AXI_arlock_UNCONNECTED,
      M03_AXI_arprot => NLW_Processing_System_M03_AXI_arprot_UNCONNECTED,
      M03_AXI_arqos => NLW_Processing_System_M03_AXI_arqos_UNCONNECTED,
      M03_AXI_arready => '0',
      M03_AXI_arregion => NLW_Processing_System_M03_AXI_arregion_UNCONNECTED,
      M03_AXI_arsize => NLW_Processing_System_M03_AXI_arsize_UNCONNECTED,
      M03_AXI_arvalid => NLW_Processing_System_M03_AXI_arvalid_UNCONNECTED,
      M03_AXI_awaddr => NLW_Processing_System_M03_AXI_awaddr_UNCONNECTED,
      M03_AXI_awburst => NLW_Processing_System_M03_AXI_awburst_UNCONNECTED,
      M03_AXI_awcache => NLW_Processing_System_M03_AXI_awcache_UNCONNECTED,
      M03_AXI_awid => NLW_Processing_System_M03_AXI_awid_UNCONNECTED,
      M03_AXI_awlen => NLW_Processing_System_M03_AXI_awlen_UNCONNECTED,
      M03_AXI_awlock => NLW_Processing_System_M03_AXI_awlock_UNCONNECTED,
      M03_AXI_awprot => NLW_Processing_System_M03_AXI_awprot_UNCONNECTED,
      M03_AXI_awqos => NLW_Processing_System_M03_AXI_awqos_UNCONNECTED,
      M03_AXI_awready => '0',
      M03_AXI_awregion => NLW_Processing_System_M03_AXI_awregion_UNCONNECTED,
      M03_AXI_awsize => NLW_Processing_System_M03_AXI_awsize_UNCONNECTED,
      M03_AXI_awvalid => NLW_Processing_System_M03_AXI_awvalid_UNCONNECTED,
      M03_AXI_bid => '0',
      M03_AXI_bready => NLW_Processing_System_M03_AXI_bready_UNCONNECTED,
      M03_AXI_bresp => '0',
      M03_AXI_bvalid => '0',
      M03_AXI_rdata => '0',
      M03_AXI_rid => '0',
      M03_AXI_rlast => '0',
      M03_AXI_rready => NLW_Processing_System_M03_AXI_rready_UNCONNECTED,
      M03_AXI_rresp => '0',
      M03_AXI_rvalid => '0',
      M03_AXI_wdata => NLW_Processing_System_M03_AXI_wdata_UNCONNECTED,
      M03_AXI_wlast => NLW_Processing_System_M03_AXI_wlast_UNCONNECTED,
      M03_AXI_wready => '0',
      M03_AXI_wstrb => NLW_Processing_System_M03_AXI_wstrb_UNCONNECTED,
      M03_AXI_wvalid => NLW_Processing_System_M03_AXI_wvalid_UNCONNECTED,
      M04_AXI_araddr => NLW_Processing_System_M04_AXI_araddr_UNCONNECTED,
      M04_AXI_arburst => NLW_Processing_System_M04_AXI_arburst_UNCONNECTED,
      M04_AXI_arcache => NLW_Processing_System_M04_AXI_arcache_UNCONNECTED,
      M04_AXI_arid => NLW_Processing_System_M04_AXI_arid_UNCONNECTED,
      M04_AXI_arlen => NLW_Processing_System_M04_AXI_arlen_UNCONNECTED,
      M04_AXI_arlock => NLW_Processing_System_M04_AXI_arlock_UNCONNECTED,
      M04_AXI_arprot => NLW_Processing_System_M04_AXI_arprot_UNCONNECTED,
      M04_AXI_arqos => NLW_Processing_System_M04_AXI_arqos_UNCONNECTED,
      M04_AXI_arready => '0',
      M04_AXI_arregion => NLW_Processing_System_M04_AXI_arregion_UNCONNECTED,
      M04_AXI_arsize => NLW_Processing_System_M04_AXI_arsize_UNCONNECTED,
      M04_AXI_arvalid => NLW_Processing_System_M04_AXI_arvalid_UNCONNECTED,
      M04_AXI_awaddr => NLW_Processing_System_M04_AXI_awaddr_UNCONNECTED,
      M04_AXI_awburst => NLW_Processing_System_M04_AXI_awburst_UNCONNECTED,
      M04_AXI_awcache => NLW_Processing_System_M04_AXI_awcache_UNCONNECTED,
      M04_AXI_awid => NLW_Processing_System_M04_AXI_awid_UNCONNECTED,
      M04_AXI_awlen => NLW_Processing_System_M04_AXI_awlen_UNCONNECTED,
      M04_AXI_awlock => NLW_Processing_System_M04_AXI_awlock_UNCONNECTED,
      M04_AXI_awprot => NLW_Processing_System_M04_AXI_awprot_UNCONNECTED,
      M04_AXI_awqos => NLW_Processing_System_M04_AXI_awqos_UNCONNECTED,
      M04_AXI_awready => '0',
      M04_AXI_awregion => NLW_Processing_System_M04_AXI_awregion_UNCONNECTED,
      M04_AXI_awsize => NLW_Processing_System_M04_AXI_awsize_UNCONNECTED,
      M04_AXI_awvalid => NLW_Processing_System_M04_AXI_awvalid_UNCONNECTED,
      M04_AXI_bid => '0',
      M04_AXI_bready => NLW_Processing_System_M04_AXI_bready_UNCONNECTED,
      M04_AXI_bresp => '0',
      M04_AXI_bvalid => '0',
      M04_AXI_rdata => '0',
      M04_AXI_rid => '0',
      M04_AXI_rlast => '0',
      M04_AXI_rready => NLW_Processing_System_M04_AXI_rready_UNCONNECTED,
      M04_AXI_rresp => '0',
      M04_AXI_rvalid => '0',
      M04_AXI_wdata => NLW_Processing_System_M04_AXI_wdata_UNCONNECTED,
      M04_AXI_wlast => NLW_Processing_System_M04_AXI_wlast_UNCONNECTED,
      M04_AXI_wready => '0',
      M04_AXI_wstrb => NLW_Processing_System_M04_AXI_wstrb_UNCONNECTED,
      M04_AXI_wvalid => NLW_Processing_System_M04_AXI_wvalid_UNCONNECTED,
      M05_AXI_araddr => NLW_Processing_System_M05_AXI_araddr_UNCONNECTED,
      M05_AXI_arburst => NLW_Processing_System_M05_AXI_arburst_UNCONNECTED,
      M05_AXI_arcache => NLW_Processing_System_M05_AXI_arcache_UNCONNECTED,
      M05_AXI_arid => NLW_Processing_System_M05_AXI_arid_UNCONNECTED,
      M05_AXI_arlen => NLW_Processing_System_M05_AXI_arlen_UNCONNECTED,
      M05_AXI_arlock => NLW_Processing_System_M05_AXI_arlock_UNCONNECTED,
      M05_AXI_arprot => NLW_Processing_System_M05_AXI_arprot_UNCONNECTED,
      M05_AXI_arqos => NLW_Processing_System_M05_AXI_arqos_UNCONNECTED,
      M05_AXI_arready => '0',
      M05_AXI_arregion => NLW_Processing_System_M05_AXI_arregion_UNCONNECTED,
      M05_AXI_arsize => NLW_Processing_System_M05_AXI_arsize_UNCONNECTED,
      M05_AXI_arvalid => NLW_Processing_System_M05_AXI_arvalid_UNCONNECTED,
      M05_AXI_awaddr => NLW_Processing_System_M05_AXI_awaddr_UNCONNECTED,
      M05_AXI_awburst => NLW_Processing_System_M05_AXI_awburst_UNCONNECTED,
      M05_AXI_awcache => NLW_Processing_System_M05_AXI_awcache_UNCONNECTED,
      M05_AXI_awid => NLW_Processing_System_M05_AXI_awid_UNCONNECTED,
      M05_AXI_awlen => NLW_Processing_System_M05_AXI_awlen_UNCONNECTED,
      M05_AXI_awlock => NLW_Processing_System_M05_AXI_awlock_UNCONNECTED,
      M05_AXI_awprot => NLW_Processing_System_M05_AXI_awprot_UNCONNECTED,
      M05_AXI_awqos => NLW_Processing_System_M05_AXI_awqos_UNCONNECTED,
      M05_AXI_awready => '0',
      M05_AXI_awregion => NLW_Processing_System_M05_AXI_awregion_UNCONNECTED,
      M05_AXI_awsize => NLW_Processing_System_M05_AXI_awsize_UNCONNECTED,
      M05_AXI_awvalid => NLW_Processing_System_M05_AXI_awvalid_UNCONNECTED,
      M05_AXI_bid => '0',
      M05_AXI_bready => NLW_Processing_System_M05_AXI_bready_UNCONNECTED,
      M05_AXI_bresp => '0',
      M05_AXI_bvalid => '0',
      M05_AXI_rdata => '0',
      M05_AXI_rid => '0',
      M05_AXI_rlast => '0',
      M05_AXI_rready => NLW_Processing_System_M05_AXI_rready_UNCONNECTED,
      M05_AXI_rresp => '0',
      M05_AXI_rvalid => '0',
      M05_AXI_wdata => NLW_Processing_System_M05_AXI_wdata_UNCONNECTED,
      M05_AXI_wlast => NLW_Processing_System_M05_AXI_wlast_UNCONNECTED,
      M05_AXI_wready => '0',
      M05_AXI_wstrb => NLW_Processing_System_M05_AXI_wstrb_UNCONNECTED,
      M05_AXI_wvalid => NLW_Processing_System_M05_AXI_wvalid_UNCONNECTED,
      M06_AXI_araddr => NLW_Processing_System_M06_AXI_araddr_UNCONNECTED,
      M06_AXI_arburst => NLW_Processing_System_M06_AXI_arburst_UNCONNECTED,
      M06_AXI_arcache => NLW_Processing_System_M06_AXI_arcache_UNCONNECTED,
      M06_AXI_arid => NLW_Processing_System_M06_AXI_arid_UNCONNECTED,
      M06_AXI_arlen => NLW_Processing_System_M06_AXI_arlen_UNCONNECTED,
      M06_AXI_arlock => NLW_Processing_System_M06_AXI_arlock_UNCONNECTED,
      M06_AXI_arprot => NLW_Processing_System_M06_AXI_arprot_UNCONNECTED,
      M06_AXI_arqos => NLW_Processing_System_M06_AXI_arqos_UNCONNECTED,
      M06_AXI_arready => '0',
      M06_AXI_arregion => NLW_Processing_System_M06_AXI_arregion_UNCONNECTED,
      M06_AXI_arsize => NLW_Processing_System_M06_AXI_arsize_UNCONNECTED,
      M06_AXI_arvalid => NLW_Processing_System_M06_AXI_arvalid_UNCONNECTED,
      M06_AXI_awaddr => NLW_Processing_System_M06_AXI_awaddr_UNCONNECTED,
      M06_AXI_awburst => NLW_Processing_System_M06_AXI_awburst_UNCONNECTED,
      M06_AXI_awcache => NLW_Processing_System_M06_AXI_awcache_UNCONNECTED,
      M06_AXI_awid => NLW_Processing_System_M06_AXI_awid_UNCONNECTED,
      M06_AXI_awlen => NLW_Processing_System_M06_AXI_awlen_UNCONNECTED,
      M06_AXI_awlock => NLW_Processing_System_M06_AXI_awlock_UNCONNECTED,
      M06_AXI_awprot => NLW_Processing_System_M06_AXI_awprot_UNCONNECTED,
      M06_AXI_awqos => NLW_Processing_System_M06_AXI_awqos_UNCONNECTED,
      M06_AXI_awready => '0',
      M06_AXI_awregion => NLW_Processing_System_M06_AXI_awregion_UNCONNECTED,
      M06_AXI_awsize => NLW_Processing_System_M06_AXI_awsize_UNCONNECTED,
      M06_AXI_awvalid => NLW_Processing_System_M06_AXI_awvalid_UNCONNECTED,
      M06_AXI_bid => '0',
      M06_AXI_bready => NLW_Processing_System_M06_AXI_bready_UNCONNECTED,
      M06_AXI_bresp => '0',
      M06_AXI_bvalid => '0',
      M06_AXI_rdata => '0',
      M06_AXI_rid => '0',
      M06_AXI_rlast => '0',
      M06_AXI_rready => NLW_Processing_System_M06_AXI_rready_UNCONNECTED,
      M06_AXI_rresp => '0',
      M06_AXI_rvalid => '0',
      M06_AXI_wdata => NLW_Processing_System_M06_AXI_wdata_UNCONNECTED,
      M06_AXI_wlast => NLW_Processing_System_M06_AXI_wlast_UNCONNECTED,
      M06_AXI_wready => '0',
      M06_AXI_wstrb => NLW_Processing_System_M06_AXI_wstrb_UNCONNECTED,
      M06_AXI_wvalid => NLW_Processing_System_M06_AXI_wvalid_UNCONNECTED,
      M07_AXI_araddr(31 downto 0) => Processing_System_M07_AXI_ARADDR(31 downto 0),
      M07_AXI_arprot(2 downto 0) => Processing_System_M07_AXI_ARPROT(2 downto 0),
      M07_AXI_arready => Processing_System_M07_AXI_ARREADY,
      M07_AXI_arvalid => Processing_System_M07_AXI_ARVALID,
      M07_AXI_awaddr(31 downto 0) => Processing_System_M07_AXI_AWADDR(31 downto 0),
      M07_AXI_awprot(2 downto 0) => Processing_System_M07_AXI_AWPROT(2 downto 0),
      M07_AXI_awready => Processing_System_M07_AXI_AWREADY,
      M07_AXI_awvalid => Processing_System_M07_AXI_AWVALID,
      M07_AXI_bready => Processing_System_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => Processing_System_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid => Processing_System_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => Processing_System_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready => Processing_System_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => Processing_System_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid => Processing_System_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => Processing_System_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready => Processing_System_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => Processing_System_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid => Processing_System_M07_AXI_WVALID,
      M08_AXI_araddr(31 downto 0) => Processing_System_M08_AXI_ARADDR(31 downto 0),
      M08_AXI_arburst(1 downto 0) => Processing_System_M08_AXI_ARBURST(1 downto 0),
      M08_AXI_arcache(3 downto 0) => Processing_System_M08_AXI_ARCACHE(3 downto 0),
      M08_AXI_arid(11 downto 0) => Processing_System_M08_AXI_ARID(11 downto 0),
      M08_AXI_arlen(7 downto 0) => Processing_System_M08_AXI_ARLEN(7 downto 0),
      M08_AXI_arlock => Processing_System_M08_AXI_ARLOCK,
      M08_AXI_arprot(2 downto 0) => Processing_System_M08_AXI_ARPROT(2 downto 0),
      M08_AXI_arqos(3 downto 0) => Processing_System_M08_AXI_ARQOS(3 downto 0),
      M08_AXI_arready => Processing_System_M08_AXI_ARREADY,
      M08_AXI_arregion(3 downto 0) => Processing_System_M08_AXI_ARREGION(3 downto 0),
      M08_AXI_arsize(2 downto 0) => Processing_System_M08_AXI_ARSIZE(2 downto 0),
      M08_AXI_arvalid => Processing_System_M08_AXI_ARVALID,
      M08_AXI_awaddr(31 downto 0) => Processing_System_M08_AXI_AWADDR(31 downto 0),
      M08_AXI_awburst(1 downto 0) => Processing_System_M08_AXI_AWBURST(1 downto 0),
      M08_AXI_awcache(3 downto 0) => Processing_System_M08_AXI_AWCACHE(3 downto 0),
      M08_AXI_awid(11 downto 0) => Processing_System_M08_AXI_AWID(11 downto 0),
      M08_AXI_awlen(7 downto 0) => Processing_System_M08_AXI_AWLEN(7 downto 0),
      M08_AXI_awlock => Processing_System_M08_AXI_AWLOCK,
      M08_AXI_awprot(2 downto 0) => Processing_System_M08_AXI_AWPROT(2 downto 0),
      M08_AXI_awqos(3 downto 0) => Processing_System_M08_AXI_AWQOS(3 downto 0),
      M08_AXI_awready => Processing_System_M08_AXI_AWREADY,
      M08_AXI_awregion(3 downto 0) => Processing_System_M08_AXI_AWREGION(3 downto 0),
      M08_AXI_awsize(2 downto 0) => Processing_System_M08_AXI_AWSIZE(2 downto 0),
      M08_AXI_awvalid => Processing_System_M08_AXI_AWVALID,
      M08_AXI_bid(11 downto 0) => Processing_System_M08_AXI_BID(11 downto 0),
      M08_AXI_bready => Processing_System_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => Processing_System_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => Processing_System_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => Processing_System_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rid(11 downto 0) => Processing_System_M08_AXI_RID(11 downto 0),
      M08_AXI_rlast => Processing_System_M08_AXI_RLAST,
      M08_AXI_rready => Processing_System_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => Processing_System_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => Processing_System_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => Processing_System_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wlast => Processing_System_M08_AXI_WLAST,
      M08_AXI_wready => Processing_System_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => Processing_System_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => Processing_System_M08_AXI_WVALID,
      M09_AXI_araddr(31 downto 0) => Processing_System_M09_AXI_ARADDR(31 downto 0),
      M09_AXI_arburst(1 downto 0) => Processing_System_M09_AXI_ARBURST(1 downto 0),
      M09_AXI_arcache(3 downto 0) => Processing_System_M09_AXI_ARCACHE(3 downto 0),
      M09_AXI_arid(11 downto 0) => Processing_System_M09_AXI_ARID(11 downto 0),
      M09_AXI_arlen(7 downto 0) => Processing_System_M09_AXI_ARLEN(7 downto 0),
      M09_AXI_arlock => Processing_System_M09_AXI_ARLOCK,
      M09_AXI_arprot(2 downto 0) => Processing_System_M09_AXI_ARPROT(2 downto 0),
      M09_AXI_arqos(3 downto 0) => Processing_System_M09_AXI_ARQOS(3 downto 0),
      M09_AXI_arready => Processing_System_M09_AXI_ARREADY,
      M09_AXI_arregion(3 downto 0) => Processing_System_M09_AXI_ARREGION(3 downto 0),
      M09_AXI_arsize(2 downto 0) => Processing_System_M09_AXI_ARSIZE(2 downto 0),
      M09_AXI_arvalid => Processing_System_M09_AXI_ARVALID,
      M09_AXI_awaddr(31 downto 0) => Processing_System_M09_AXI_AWADDR(31 downto 0),
      M09_AXI_awburst(1 downto 0) => Processing_System_M09_AXI_AWBURST(1 downto 0),
      M09_AXI_awcache(3 downto 0) => Processing_System_M09_AXI_AWCACHE(3 downto 0),
      M09_AXI_awid(11 downto 0) => Processing_System_M09_AXI_AWID(11 downto 0),
      M09_AXI_awlen(7 downto 0) => Processing_System_M09_AXI_AWLEN(7 downto 0),
      M09_AXI_awlock => Processing_System_M09_AXI_AWLOCK,
      M09_AXI_awprot(2 downto 0) => Processing_System_M09_AXI_AWPROT(2 downto 0),
      M09_AXI_awqos(3 downto 0) => Processing_System_M09_AXI_AWQOS(3 downto 0),
      M09_AXI_awready => Processing_System_M09_AXI_AWREADY,
      M09_AXI_awregion(3 downto 0) => Processing_System_M09_AXI_AWREGION(3 downto 0),
      M09_AXI_awsize(2 downto 0) => Processing_System_M09_AXI_AWSIZE(2 downto 0),
      M09_AXI_awvalid => Processing_System_M09_AXI_AWVALID,
      M09_AXI_bid(11 downto 0) => Processing_System_M09_AXI_BID(11 downto 0),
      M09_AXI_bready => Processing_System_M09_AXI_BREADY,
      M09_AXI_bresp(1 downto 0) => Processing_System_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid => Processing_System_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => Processing_System_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rid(11 downto 0) => Processing_System_M09_AXI_RID(11 downto 0),
      M09_AXI_rlast => Processing_System_M09_AXI_RLAST,
      M09_AXI_rready => Processing_System_M09_AXI_RREADY,
      M09_AXI_rresp(1 downto 0) => Processing_System_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid => Processing_System_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => Processing_System_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wlast => Processing_System_M09_AXI_WLAST,
      M09_AXI_wready => Processing_System_M09_AXI_WREADY,
      M09_AXI_wstrb(3 downto 0) => Processing_System_M09_AXI_WSTRB(3 downto 0),
      M09_AXI_wvalid => Processing_System_M09_AXI_WVALID,
      M10_AXI_araddr(31 downto 0) => Processing_System_M10_AXI_ARADDR(31 downto 0),
      M10_AXI_arready => Processing_System_M10_AXI_ARREADY,
      M10_AXI_arvalid => Processing_System_M10_AXI_ARVALID,
      M10_AXI_awaddr(31 downto 0) => Processing_System_M10_AXI_AWADDR(31 downto 0),
      M10_AXI_awready => Processing_System_M10_AXI_AWREADY,
      M10_AXI_awvalid => Processing_System_M10_AXI_AWVALID,
      M10_AXI_bready => Processing_System_M10_AXI_BREADY,
      M10_AXI_bresp(1 downto 0) => Processing_System_M10_AXI_BRESP(1 downto 0),
      M10_AXI_bvalid => Processing_System_M10_AXI_BVALID,
      M10_AXI_rdata(31 downto 0) => Processing_System_M10_AXI_RDATA(31 downto 0),
      M10_AXI_rready => Processing_System_M10_AXI_RREADY,
      M10_AXI_rresp(1 downto 0) => Processing_System_M10_AXI_RRESP(1 downto 0),
      M10_AXI_rvalid => Processing_System_M10_AXI_RVALID,
      M10_AXI_wdata(31 downto 0) => Processing_System_M10_AXI_WDATA(31 downto 0),
      M10_AXI_wready => Processing_System_M10_AXI_WREADY,
      M10_AXI_wstrb(3 downto 0) => Processing_System_M10_AXI_WSTRB(3 downto 0),
      M10_AXI_wvalid => Processing_System_M10_AXI_WVALID,
      M11_AXI_araddr(31 downto 0) => Processing_System_M11_AXI_ARADDR(31 downto 0),
      M11_AXI_arready => Processing_System_M11_AXI_ARREADY,
      M11_AXI_arvalid => Processing_System_M11_AXI_ARVALID,
      M11_AXI_awaddr(31 downto 0) => Processing_System_M11_AXI_AWADDR(31 downto 0),
      M11_AXI_awready => Processing_System_M11_AXI_AWREADY,
      M11_AXI_awvalid => Processing_System_M11_AXI_AWVALID,
      M11_AXI_bready => Processing_System_M11_AXI_BREADY,
      M11_AXI_bresp(1 downto 0) => Processing_System_M11_AXI_BRESP(1 downto 0),
      M11_AXI_bvalid => Processing_System_M11_AXI_BVALID,
      M11_AXI_rdata(31 downto 0) => Processing_System_M11_AXI_RDATA(31 downto 0),
      M11_AXI_rready => Processing_System_M11_AXI_RREADY,
      M11_AXI_rresp(1 downto 0) => Processing_System_M11_AXI_RRESP(1 downto 0),
      M11_AXI_rvalid => Processing_System_M11_AXI_RVALID,
      M11_AXI_wdata(31 downto 0) => Processing_System_M11_AXI_WDATA(31 downto 0),
      M11_AXI_wready => Processing_System_M11_AXI_WREADY,
      M11_AXI_wstrb(3 downto 0) => Processing_System_M11_AXI_WSTRB(3 downto 0),
      M11_AXI_wvalid => Processing_System_M11_AXI_WVALID,
      S_AXI_HP0_awaddr(31 downto 0) => S_AXI_HP0_1_AWADDR(31 downto 0),
      S_AXI_HP0_awburst(1 downto 0) => S_AXI_HP0_1_AWBURST(1 downto 0),
      S_AXI_HP0_awcache(3 downto 0) => S_AXI_HP0_1_AWCACHE(3 downto 0),
      S_AXI_HP0_awlen(3 downto 0) => S_AXI_HP0_1_AWLEN(3 downto 0),
      S_AXI_HP0_awlock(1 downto 0) => S_AXI_HP0_1_AWLOCK(1 downto 0),
      S_AXI_HP0_awprot(2 downto 0) => S_AXI_HP0_1_AWPROT(2 downto 0),
      S_AXI_HP0_awqos(3 downto 0) => S_AXI_HP0_1_AWQOS(3 downto 0),
      S_AXI_HP0_awready => S_AXI_HP0_1_AWREADY,
      S_AXI_HP0_awsize(2 downto 0) => S_AXI_HP0_1_AWSIZE(2 downto 0),
      S_AXI_HP0_awvalid => S_AXI_HP0_1_AWVALID,
      S_AXI_HP0_bready => S_AXI_HP0_1_BREADY,
      S_AXI_HP0_bresp(1 downto 0) => S_AXI_HP0_1_BRESP(1 downto 0),
      S_AXI_HP0_bvalid => S_AXI_HP0_1_BVALID,
      S_AXI_HP0_wdata(63 downto 0) => S_AXI_HP0_1_WDATA(63 downto 0),
      S_AXI_HP0_wlast => S_AXI_HP0_1_WLAST,
      S_AXI_HP0_wready => S_AXI_HP0_1_WREADY,
      S_AXI_HP0_wstrb(7 downto 0) => S_AXI_HP0_1_WSTRB(7 downto 0),
      S_AXI_HP0_wvalid => S_AXI_HP0_1_WVALID,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_aresetn1(0) => Processing_System_peripheral_aresetn1(0)
    );
axi_uartlite_0: component design_2_axi_uartlite_0_0
     port map (
      interrupt => NLW_axi_uartlite_0_interrupt_UNCONNECTED,
      rx => axi_uartlite_0_UART_RxD,
      s_axi_aclk => Processing_System_FCLK_CLK1,
      s_axi_araddr(3 downto 0) => Processing_System_M10_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => Processing_System_peripheral_aresetn1(0),
      s_axi_arready => Processing_System_M10_AXI_ARREADY,
      s_axi_arvalid => Processing_System_M10_AXI_ARVALID,
      s_axi_awaddr(3 downto 0) => Processing_System_M10_AXI_AWADDR(3 downto 0),
      s_axi_awready => Processing_System_M10_AXI_AWREADY,
      s_axi_awvalid => Processing_System_M10_AXI_AWVALID,
      s_axi_bready => Processing_System_M10_AXI_BREADY,
      s_axi_bresp(1 downto 0) => Processing_System_M10_AXI_BRESP(1 downto 0),
      s_axi_bvalid => Processing_System_M10_AXI_BVALID,
      s_axi_rdata(31 downto 0) => Processing_System_M10_AXI_RDATA(31 downto 0),
      s_axi_rready => Processing_System_M10_AXI_RREADY,
      s_axi_rresp(1 downto 0) => Processing_System_M10_AXI_RRESP(1 downto 0),
      s_axi_rvalid => Processing_System_M10_AXI_RVALID,
      s_axi_wdata(31 downto 0) => Processing_System_M10_AXI_WDATA(31 downto 0),
      s_axi_wready => Processing_System_M10_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => Processing_System_M10_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => Processing_System_M10_AXI_WVALID,
      tx => axi_uartlite_0_UART_TxD
    );
clk_wiz_0: component design_2_clk_wiz_0_1
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2
    );
comblock_0: component design_2_comblock_0_0
     port map (
      axif_dram_aclk => Processing_System_FCLK_CLK0,
      axif_dram_araddr(17 downto 0) => Processing_System_M08_AXI_ARADDR(17 downto 0),
      axif_dram_arburst(1 downto 0) => Processing_System_M08_AXI_ARBURST(1 downto 0),
      axif_dram_arcache(3 downto 0) => Processing_System_M08_AXI_ARCACHE(3 downto 0),
      axif_dram_aresetn => Processing_System_peripheral_aresetn1(0),
      axif_dram_arid(11 downto 0) => Processing_System_M08_AXI_ARID(11 downto 0),
      axif_dram_arlen(7 downto 0) => Processing_System_M08_AXI_ARLEN(7 downto 0),
      axif_dram_arlock => Processing_System_M08_AXI_ARLOCK,
      axif_dram_arprot(2 downto 0) => Processing_System_M08_AXI_ARPROT(2 downto 0),
      axif_dram_arqos(3 downto 0) => Processing_System_M08_AXI_ARQOS(3 downto 0),
      axif_dram_arready => Processing_System_M08_AXI_ARREADY,
      axif_dram_arregion(3 downto 0) => Processing_System_M08_AXI_ARREGION(3 downto 0),
      axif_dram_arsize(2 downto 0) => Processing_System_M08_AXI_ARSIZE(2 downto 0),
      axif_dram_arvalid => Processing_System_M08_AXI_ARVALID,
      axif_dram_awaddr(17 downto 0) => Processing_System_M08_AXI_AWADDR(17 downto 0),
      axif_dram_awburst(1 downto 0) => Processing_System_M08_AXI_AWBURST(1 downto 0),
      axif_dram_awcache(3 downto 0) => Processing_System_M08_AXI_AWCACHE(3 downto 0),
      axif_dram_awid(11 downto 0) => Processing_System_M08_AXI_AWID(11 downto 0),
      axif_dram_awlen(7 downto 0) => Processing_System_M08_AXI_AWLEN(7 downto 0),
      axif_dram_awlock => Processing_System_M08_AXI_AWLOCK,
      axif_dram_awprot(2 downto 0) => Processing_System_M08_AXI_AWPROT(2 downto 0),
      axif_dram_awqos(3 downto 0) => Processing_System_M08_AXI_AWQOS(3 downto 0),
      axif_dram_awready => Processing_System_M08_AXI_AWREADY,
      axif_dram_awregion(3 downto 0) => Processing_System_M08_AXI_AWREGION(3 downto 0),
      axif_dram_awsize(2 downto 0) => Processing_System_M08_AXI_AWSIZE(2 downto 0),
      axif_dram_awvalid => Processing_System_M08_AXI_AWVALID,
      axif_dram_bid(11 downto 0) => Processing_System_M08_AXI_BID(11 downto 0),
      axif_dram_bready => Processing_System_M08_AXI_BREADY,
      axif_dram_bresp(1 downto 0) => Processing_System_M08_AXI_BRESP(1 downto 0),
      axif_dram_bvalid => Processing_System_M08_AXI_BVALID,
      axif_dram_rdata(31 downto 0) => Processing_System_M08_AXI_RDATA(31 downto 0),
      axif_dram_rid(11 downto 0) => Processing_System_M08_AXI_RID(11 downto 0),
      axif_dram_rlast => Processing_System_M08_AXI_RLAST,
      axif_dram_rready => Processing_System_M08_AXI_RREADY,
      axif_dram_rresp(1 downto 0) => Processing_System_M08_AXI_RRESP(1 downto 0),
      axif_dram_rvalid => Processing_System_M08_AXI_RVALID,
      axif_dram_wdata(31 downto 0) => Processing_System_M08_AXI_WDATA(31 downto 0),
      axif_dram_wlast => Processing_System_M08_AXI_WLAST,
      axif_dram_wready => Processing_System_M08_AXI_WREADY,
      axif_dram_wstrb(3 downto 0) => Processing_System_M08_AXI_WSTRB(3 downto 0),
      axif_dram_wvalid => Processing_System_M08_AXI_WVALID,
      axif_fifo_aclk => Processing_System_FCLK_CLK0,
      axif_fifo_araddr(2 downto 0) => Processing_System_M09_AXI_ARADDR(2 downto 0),
      axif_fifo_arburst(1 downto 0) => Processing_System_M09_AXI_ARBURST(1 downto 0),
      axif_fifo_arcache(3 downto 0) => Processing_System_M09_AXI_ARCACHE(3 downto 0),
      axif_fifo_aresetn => Processing_System_peripheral_aresetn1(0),
      axif_fifo_arid(11 downto 0) => Processing_System_M09_AXI_ARID(11 downto 0),
      axif_fifo_arlen(7 downto 0) => Processing_System_M09_AXI_ARLEN(7 downto 0),
      axif_fifo_arlock => Processing_System_M09_AXI_ARLOCK,
      axif_fifo_arprot(2 downto 0) => Processing_System_M09_AXI_ARPROT(2 downto 0),
      axif_fifo_arqos(3 downto 0) => Processing_System_M09_AXI_ARQOS(3 downto 0),
      axif_fifo_arready => Processing_System_M09_AXI_ARREADY,
      axif_fifo_arregion(3 downto 0) => Processing_System_M09_AXI_ARREGION(3 downto 0),
      axif_fifo_arsize(2 downto 0) => Processing_System_M09_AXI_ARSIZE(2 downto 0),
      axif_fifo_arvalid => Processing_System_M09_AXI_ARVALID,
      axif_fifo_awaddr(2 downto 0) => Processing_System_M09_AXI_AWADDR(2 downto 0),
      axif_fifo_awburst(1 downto 0) => Processing_System_M09_AXI_AWBURST(1 downto 0),
      axif_fifo_awcache(3 downto 0) => Processing_System_M09_AXI_AWCACHE(3 downto 0),
      axif_fifo_awid(11 downto 0) => Processing_System_M09_AXI_AWID(11 downto 0),
      axif_fifo_awlen(7 downto 0) => Processing_System_M09_AXI_AWLEN(7 downto 0),
      axif_fifo_awlock => Processing_System_M09_AXI_AWLOCK,
      axif_fifo_awprot(2 downto 0) => Processing_System_M09_AXI_AWPROT(2 downto 0),
      axif_fifo_awqos(3 downto 0) => Processing_System_M09_AXI_AWQOS(3 downto 0),
      axif_fifo_awready => Processing_System_M09_AXI_AWREADY,
      axif_fifo_awregion(3 downto 0) => Processing_System_M09_AXI_AWREGION(3 downto 0),
      axif_fifo_awsize(2 downto 0) => Processing_System_M09_AXI_AWSIZE(2 downto 0),
      axif_fifo_awvalid => Processing_System_M09_AXI_AWVALID,
      axif_fifo_bid(11 downto 0) => Processing_System_M09_AXI_BID(11 downto 0),
      axif_fifo_bready => Processing_System_M09_AXI_BREADY,
      axif_fifo_bresp(1 downto 0) => Processing_System_M09_AXI_BRESP(1 downto 0),
      axif_fifo_bvalid => Processing_System_M09_AXI_BVALID,
      axif_fifo_rdata(31 downto 0) => Processing_System_M09_AXI_RDATA(31 downto 0),
      axif_fifo_rid(11 downto 0) => Processing_System_M09_AXI_RID(11 downto 0),
      axif_fifo_rlast => Processing_System_M09_AXI_RLAST,
      axif_fifo_rready => Processing_System_M09_AXI_RREADY,
      axif_fifo_rresp(1 downto 0) => Processing_System_M09_AXI_RRESP(1 downto 0),
      axif_fifo_rvalid => Processing_System_M09_AXI_RVALID,
      axif_fifo_wdata(31 downto 0) => Processing_System_M09_AXI_WDATA(31 downto 0),
      axif_fifo_wlast => Processing_System_M09_AXI_WLAST,
      axif_fifo_wready => Processing_System_M09_AXI_WREADY,
      axif_fifo_wstrb(3 downto 0) => Processing_System_M09_AXI_WSTRB(3 downto 0),
      axif_fifo_wvalid => Processing_System_M09_AXI_WVALID,
      axil_regs_aclk => Processing_System_FCLK_CLK0,
      axil_regs_araddr(7 downto 0) => Processing_System_M07_AXI_ARADDR(7 downto 0),
      axil_regs_aresetn => Processing_System_peripheral_aresetn1(0),
      axil_regs_arprot(2 downto 0) => Processing_System_M07_AXI_ARPROT(2 downto 0),
      axil_regs_arready => Processing_System_M07_AXI_ARREADY,
      axil_regs_arvalid => Processing_System_M07_AXI_ARVALID,
      axil_regs_awaddr(7 downto 0) => Processing_System_M07_AXI_AWADDR(7 downto 0),
      axil_regs_awprot(2 downto 0) => Processing_System_M07_AXI_AWPROT(2 downto 0),
      axil_regs_awready => Processing_System_M07_AXI_AWREADY,
      axil_regs_awvalid => Processing_System_M07_AXI_AWVALID,
      axil_regs_bready => Processing_System_M07_AXI_BREADY,
      axil_regs_bresp(1 downto 0) => Processing_System_M07_AXI_BRESP(1 downto 0),
      axil_regs_bvalid => Processing_System_M07_AXI_BVALID,
      axil_regs_rdata(31 downto 0) => Processing_System_M07_AXI_RDATA(31 downto 0),
      axil_regs_rready => Processing_System_M07_AXI_RREADY,
      axil_regs_rresp(1 downto 0) => Processing_System_M07_AXI_RRESP(1 downto 0),
      axil_regs_rvalid => Processing_System_M07_AXI_RVALID,
      axil_regs_wdata(31 downto 0) => Processing_System_M07_AXI_WDATA(31 downto 0),
      axil_regs_wready => Processing_System_M07_AXI_WREADY,
      axil_regs_wstrb(3 downto 0) => Processing_System_M07_AXI_WSTRB(3 downto 0),
      axil_regs_wvalid => Processing_System_M07_AXI_WVALID,
      fifo_aempty_o => comblock_0_fifo_aempty_o,
      fifo_afull_o => comblock_0_fifo_afull_o,
      fifo_clear_i => Comblock_PL_FIFO_CLR,
      fifo_clk_i => CLK_1(0),
      fifo_data_i(31 downto 0) => Comblock_PL_FIFO_DATA(31 downto 0),
      fifo_data_o(31 downto 0) => NLW_comblock_0_fifo_data_o_UNCONNECTED(31 downto 0),
      fifo_empty_o => comblock_0_fifo_empty_o,
      fifo_full_o => comblock_0_fifo_full_o,
      fifo_overflow_o => NLW_comblock_0_fifo_overflow_o_UNCONNECTED,
      fifo_re_i => '0',
      fifo_underflow_o => NLW_comblock_0_fifo_underflow_o_UNCONNECTED,
      fifo_we_i => Comblock_PL_FIFO_WE,
      ram_addr_i(15 downto 0) => Comblock_PL_addb_0(15 downto 0),
      ram_clk_i => CLK_1(0),
      ram_data_i(31 downto 0) => Comblock_PL_dinb_0(31 downto 0),
      ram_data_o(31 downto 0) => comblock_0_ram_data_o(31 downto 0),
      ram_we_i => Comblock_PL_web_0(0),
      reg0_i(31 downto 0) => Comblock_PL_trigger(31 downto 0),
      reg0_o(31 downto 0) => comblock_0_reg0_o(31 downto 0),
      reg10_i(31 downto 0) => B"00000000000000000000000000000000",
      reg10_o(31 downto 0) => comblock_0_reg10_o(31 downto 0),
      reg11_i(31 downto 0) => B"00000000000000000000000000000000",
      reg11_o(31 downto 0) => comblock_0_reg11_o(31 downto 0),
      reg12_i(31 downto 0) => B"00000000000000000000000000000000",
      reg12_o(31 downto 0) => comblock_0_reg12_o(31 downto 0),
      reg13_i(31 downto 0) => B"00000000000000000000000000000000",
      reg13_o(31 downto 0) => comblock_0_reg13_o(31 downto 0),
      reg14_i(31 downto 0) => B"00000000000000000000000000000000",
      reg14_o(31 downto 0) => comblock_0_reg14_o(31 downto 0),
      reg15_i(31 downto 0) => B"00000000000000000000000000000000",
      reg15_o(31 downto 0) => NLW_comblock_0_reg15_o_UNCONNECTED(31 downto 0),
      reg1_i(31 downto 0) => Comblock_PL_tss(31 downto 0),
      reg1_o(31 downto 0) => comblock_0_reg1_o(31 downto 0),
      reg2_i(31 downto 0) => Comblock_PL_tsf(31 downto 0),
      reg2_o(31 downto 0) => comblock_0_reg2_o(31 downto 0),
      reg3_i(31 downto 0) => ADC_Controller_Ctrl_reg_out(31 downto 0),
      reg3_o(31 downto 0) => comblock_0_reg3_o(31 downto 0),
      reg4_i(31 downto 0) => Comblock_PL_curr_cycle_0(31 downto 0),
      reg4_o(31 downto 0) => comblock_0_reg4_o(31 downto 0),
      reg5_i(31) => Comblock_PL_done_0,
      reg5_i(30) => Comblock_PL_done_0,
      reg5_i(29) => Comblock_PL_done_0,
      reg5_i(28) => Comblock_PL_done_0,
      reg5_i(27) => Comblock_PL_done_0,
      reg5_i(26) => Comblock_PL_done_0,
      reg5_i(25) => Comblock_PL_done_0,
      reg5_i(24) => Comblock_PL_done_0,
      reg5_i(23) => Comblock_PL_done_0,
      reg5_i(22) => Comblock_PL_done_0,
      reg5_i(21) => Comblock_PL_done_0,
      reg5_i(20) => Comblock_PL_done_0,
      reg5_i(19) => Comblock_PL_done_0,
      reg5_i(18) => Comblock_PL_done_0,
      reg5_i(17) => Comblock_PL_done_0,
      reg5_i(16) => Comblock_PL_done_0,
      reg5_i(15) => Comblock_PL_done_0,
      reg5_i(14) => Comblock_PL_done_0,
      reg5_i(13) => Comblock_PL_done_0,
      reg5_i(12) => Comblock_PL_done_0,
      reg5_i(11) => Comblock_PL_done_0,
      reg5_i(10) => Comblock_PL_done_0,
      reg5_i(9) => Comblock_PL_done_0,
      reg5_i(8) => Comblock_PL_done_0,
      reg5_i(7) => Comblock_PL_done_0,
      reg5_i(6) => Comblock_PL_done_0,
      reg5_i(5) => Comblock_PL_done_0,
      reg5_i(4) => Comblock_PL_done_0,
      reg5_i(3) => Comblock_PL_done_0,
      reg5_i(2) => Comblock_PL_done_0,
      reg5_i(1) => Comblock_PL_done_0,
      reg5_i(0) => Comblock_PL_done_0,
      reg5_o(31 downto 0) => comblock_0_reg5_o(31 downto 0),
      reg6_i(31 downto 0) => B"00000000000000000000000000000000",
      reg6_o(31 downto 0) => comblock_0_reg6_o(31 downto 0),
      reg7_i(31 downto 0) => B"00000000000000000000000000000000",
      reg7_o(31 downto 0) => comblock_0_reg7_o(31 downto 0),
      reg8_i(31 downto 0) => B"00000000000000000000000000000000",
      reg8_o(31 downto 0) => comblock_0_reg8_o(31 downto 0),
      reg9_i(31 downto 0) => B"00000000000000000000000000000000",
      reg9_o(31 downto 0) => comblock_0_reg9_o(31 downto 0)
    );
proc_sys_reset_1: component design_2_proc_sys_reset_1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => Processing_System_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_1_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => CLK_1(0)
    );
util_ds_buf_0: component design_2_util_ds_buf_0_1
     port map (
      IBUF_DS_N(0) => CLK_IN1_D_clk_n_1,
      IBUF_DS_P(0) => CLK_IN1_D_clk_p_1,
      IBUF_OUT(0) => util_ds_buf_0_IBUF_OUT(0)
    );
util_ds_buf_1: component design_2_util_ds_buf_1_0
     port map (
      BUFG_I(0) => util_ds_buf_0_IBUF_OUT(0),
      BUFG_O(0) => CLK_1(0)
    );
end STRUCTURE;
