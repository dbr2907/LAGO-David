--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Mon Feb 18 13:15:40 2019
--Host        : DESKTOP-P1VCJHC running 64-bit major release  (build 9200)
--Command     : generate_target design_2_wrapper.bd
--Design      : design_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_wrapper is
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
    IIC0_scl_io : inout STD_LOGIC;
    IIC0_sda_io : inout STD_LOGIC;
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
end design_2_wrapper;

architecture STRUCTURE of design_2_wrapper is
  component design_2 is
  port (
    uart_rtl_rxd : in STD_LOGIC;
    uart_rtl_txd : out STD_LOGIC;
    clk_to_adc_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_to_adc_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    x_to_adc_cal_fmc : out STD_LOGIC;
    x_to_adc_caldly_nscs_fmc : out STD_LOGIC;
    x_to_adc_dclk_rst_fmc : out STD_LOGIC;
    x_to_adc_fsr_ece_fmc : out STD_LOGIC;
    x_to_adc_led_0 : out STD_LOGIC;
    x_to_adc_led_1 : out STD_LOGIC;
    x_to_adc_outedge_ddr_sdata_fmc : out STD_LOGIC;
    x_to_adc_outv_slck_fmc : out STD_LOGIC;
    x_to_adc_pd_fmc : out STD_LOGIC;
    CLK_IN1_D_clk_n : in STD_LOGIC;
    CLK_IN1_D_clk_p : in STD_LOGIC;
    RLED_0 : out STD_LOGIC;
    SCK_0 : out STD_LOGIC;
    SDATA_0 : out STD_LOGIC;
    SS_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_from_adc_DS_N : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_from_adc_DS_P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    from_adc_or_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    from_adc_or_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    rtc_rst : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clock : in STD_LOGIC;
    x_from_adc_calrun_fmc : in STD_LOGIC;
    PPSIn_0 : in STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    IIC0_sda_i : in STD_LOGIC;
    IIC0_sda_o : out STD_LOGIC;
    IIC0_sda_t : out STD_LOGIC;
    IIC0_scl_i : in STD_LOGIC;
    IIC0_scl_o : out STD_LOGIC;
    IIC0_scl_t : out STD_LOGIC
  );
  end component design_2;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal IIC0_scl_i : STD_LOGIC;
  signal IIC0_scl_o : STD_LOGIC;
  signal IIC0_scl_t : STD_LOGIC;
  signal IIC0_sda_i : STD_LOGIC;
  signal IIC0_sda_o : STD_LOGIC;
  signal IIC0_sda_t : STD_LOGIC;
begin
IIC0_scl_iobuf: component IOBUF
     port map (
      I => IIC0_scl_o,
      IO => IIC0_scl_io,
      O => IIC0_scl_i,
      T => IIC0_scl_t
    );
IIC0_sda_iobuf: component IOBUF
     port map (
      I => IIC0_sda_o,
      IO => IIC0_sda_io,
      O => IIC0_sda_i,
      T => IIC0_sda_t
    );
design_2_i: component design_2
     port map (
      CLK_IN1_D_clk_n => CLK_IN1_D_clk_n,
      CLK_IN1_D_clk_p => CLK_IN1_D_clk_p,
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
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IIC0_scl_i => IIC0_scl_i,
      IIC0_scl_o => IIC0_scl_o,
      IIC0_scl_t => IIC0_scl_t,
      IIC0_sda_i => IIC0_sda_i,
      IIC0_sda_o => IIC0_sda_o,
      IIC0_sda_t => IIC0_sda_t,
      PPSIn_0 => PPSIn_0,
      RLED_0 => RLED_0,
      SCK_0 => SCK_0,
      SDATA_0 => SDATA_0,
      SS_0(0) => SS_0(0),
      clk_to_adc_DS_N(0) => clk_to_adc_DS_N(0),
      clk_to_adc_DS_P(0) => clk_to_adc_DS_P(0),
      data_from_adc_DS_N(15 downto 0) => data_from_adc_DS_N(15 downto 0),
      data_from_adc_DS_P(15 downto 0) => data_from_adc_DS_P(15 downto 0),
      from_adc_or_DS_N(0) => from_adc_or_DS_N(0),
      from_adc_or_DS_P(0) => from_adc_or_DS_P(0),
      rtc_rst(0) => rtc_rst(0),
      sys_clock => sys_clock,
      uart_rtl_rxd => uart_rtl_rxd,
      uart_rtl_txd => uart_rtl_txd,
      x_from_adc_calrun_fmc => x_from_adc_calrun_fmc,
      x_to_adc_cal_fmc => x_to_adc_cal_fmc,
      x_to_adc_caldly_nscs_fmc => x_to_adc_caldly_nscs_fmc,
      x_to_adc_dclk_rst_fmc => x_to_adc_dclk_rst_fmc,
      x_to_adc_fsr_ece_fmc => x_to_adc_fsr_ece_fmc,
      x_to_adc_led_0 => x_to_adc_led_0,
      x_to_adc_led_1 => x_to_adc_led_1,
      x_to_adc_outedge_ddr_sdata_fmc => x_to_adc_outedge_ddr_sdata_fmc,
      x_to_adc_outv_slck_fmc => x_to_adc_outv_slck_fmc,
      x_to_adc_pd_fmc => x_to_adc_pd_fmc
    );
end STRUCTURE;
