-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:ADC_Decimator:1.0
-- IP Revision: 6

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_2_ADC_Decimator_0_0 IS
  PORT (
    clk_in : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    Din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    N : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    clk_out : OUT STD_LOGIC;
    Dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    Decim_data_valid : OUT STD_LOGIC;
    D_sum : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END design_2_ADC_Decimator_0_0;

ARCHITECTURE design_2_ADC_Decimator_0_0_arch OF design_2_ADC_Decimator_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_2_ADC_Decimator_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ADC_Decimator IS
    GENERIC (
      top_lvl_Din_width : INTEGER;
      top_lvl_Dout_width : INTEGER;
      top_lvl_Deci_factor_width : INTEGER
    );
    PORT (
      clk_in : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      Din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      N : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      clk_out : OUT STD_LOGIC;
      Dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      Decim_data_valid : OUT STD_LOGIC;
      D_sum : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT ADC_Decimator;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_2_ADC_Decimator_0_0_arch: ARCHITECTURE IS "ADC_Decimator,Vivado 2018.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_2_ADC_Decimator_0_0_arch : ARCHITECTURE IS "design_2_ADC_Decimator_0_0,ADC_Decimator,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_2_ADC_Decimator_0_0_arch: ARCHITECTURE IS "design_2_ADC_Decimator_0_0,ADC_Decimator,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ADC_Decimator,x_ipVersion=1.0,x_ipCoreRevision=6,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,top_lvl_Din_width=16,top_lvl_Dout_width=16,top_lvl_Deci_factor_width=16}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_2_ADC_Decimator_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : ADC_Decimator
    GENERIC MAP (
      top_lvl_Din_width => 16,
      top_lvl_Dout_width => 16,
      top_lvl_Deci_factor_width => 16
    )
    PORT MAP (
      clk_in => clk_in,
      resetn => resetn,
      Din => Din,
      N => N,
      clk_out => clk_out,
      Dout => Dout,
      Decim_data_valid => Decim_data_valid,
      D_sum => D_sum
    );
END design_2_ADC_Decimator_0_0_arch;
