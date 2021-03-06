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

-- IP VLNV: ictp.it:user:Hist_Gen_Block:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_2_Hist_Gen_Block_0_0 IS
  PORT (
    Dout_clr_0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    addb_0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    clk_0 : IN STD_LOGIC;
    ctrl_reg_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    curr_cycle_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    data_valid_0 : IN STD_LOGIC;
    dinb_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    done_0 : OUT STD_LOGIC;
    doutb_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    enb_0 : OUT STD_LOGIC;
    in_addr_0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    max_cycles_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rdy_0_0 : OUT STD_LOGIC;
    rst_0 : IN STD_LOGIC;
    web_0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END design_2_Hist_Gen_Block_0_0;

ARCHITECTURE design_2_Hist_Gen_Block_0_0_arch OF design_2_Hist_Gen_Block_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_2_Hist_Gen_Block_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Histo1_wrapper IS
    PORT (
      Dout_clr_0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      addb_0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      clk_0 : IN STD_LOGIC;
      ctrl_reg_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      curr_cycle_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      data_valid_0 : IN STD_LOGIC;
      dinb_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      done_0 : OUT STD_LOGIC;
      doutb_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      enb_0 : OUT STD_LOGIC;
      in_addr_0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      max_cycles_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      rdy_0_0 : OUT STD_LOGIC;
      rst_0 : IN STD_LOGIC;
      web_0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT Histo1_wrapper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_2_Hist_Gen_Block_0_0_arch: ARCHITECTURE IS "Histo1_wrapper,Vivado 2018.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_2_Hist_Gen_Block_0_0_arch : ARCHITECTURE IS "design_2_Hist_Gen_Block_0_0,Histo1_wrapper,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_2_Hist_Gen_Block_0_0_arch: ARCHITECTURE IS "package_project";
BEGIN
  U0 : Histo1_wrapper
    PORT MAP (
      Dout_clr_0 => Dout_clr_0,
      addb_0 => addb_0,
      clk_0 => clk_0,
      ctrl_reg_0 => ctrl_reg_0,
      curr_cycle_0 => curr_cycle_0,
      data_valid_0 => data_valid_0,
      dinb_0 => dinb_0,
      done_0 => done_0,
      doutb_0 => doutb_0,
      enb_0 => enb_0,
      in_addr_0 => in_addr_0,
      max_cycles_0 => max_cycles_0,
      rdy_0_0 => rdy_0_0,
      rst_0 => rst_0,
      web_0 => web_0
    );
END design_2_Hist_Gen_Block_0_0_arch;
