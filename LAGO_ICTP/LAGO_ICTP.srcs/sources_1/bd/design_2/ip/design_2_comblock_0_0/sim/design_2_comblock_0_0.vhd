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

-- IP VLNV: user.org:user:comblock:1.0
-- IP Revision: 41

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_2_comblock_0_0 IS
  PORT (
    reg0_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg1_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg2_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg3_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg4_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg5_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg6_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg7_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg8_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg9_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg10_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg11_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg12_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg13_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg14_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg15_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg0_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg1_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg2_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg3_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg4_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg5_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg6_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg7_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg8_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg9_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg10_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg11_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg12_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg13_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg14_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg15_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ram_clk_i : IN STD_LOGIC;
    ram_we_i : IN STD_LOGIC;
    ram_addr_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ram_data_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ram_data_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    fifo_clk_i : IN STD_LOGIC;
    fifo_clear_i : IN STD_LOGIC;
    fifo_we_i : IN STD_LOGIC;
    fifo_data_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    fifo_full_o : OUT STD_LOGIC;
    fifo_afull_o : OUT STD_LOGIC;
    fifo_overflow_o : OUT STD_LOGIC;
    fifo_re_i : IN STD_LOGIC;
    fifo_data_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    fifo_empty_o : OUT STD_LOGIC;
    fifo_aempty_o : OUT STD_LOGIC;
    fifo_underflow_o : OUT STD_LOGIC;
    axil_regs_awaddr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    axil_regs_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axil_regs_awvalid : IN STD_LOGIC;
    axil_regs_awready : OUT STD_LOGIC;
    axil_regs_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    axil_regs_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axil_regs_wvalid : IN STD_LOGIC;
    axil_regs_wready : OUT STD_LOGIC;
    axil_regs_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    axil_regs_bvalid : OUT STD_LOGIC;
    axil_regs_bready : IN STD_LOGIC;
    axil_regs_araddr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    axil_regs_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axil_regs_arvalid : IN STD_LOGIC;
    axil_regs_arready : OUT STD_LOGIC;
    axil_regs_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    axil_regs_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    axil_regs_rvalid : OUT STD_LOGIC;
    axil_regs_rready : IN STD_LOGIC;
    axil_regs_aclk : IN STD_LOGIC;
    axil_regs_aresetn : IN STD_LOGIC;
    axif_dram_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    axif_dram_awaddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    axif_dram_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    axif_dram_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axif_dram_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    axif_dram_awlock : IN STD_LOGIC;
    axif_dram_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_dram_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axif_dram_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_dram_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_dram_awvalid : IN STD_LOGIC;
    axif_dram_awready : OUT STD_LOGIC;
    axif_dram_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    axif_dram_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_dram_wlast : IN STD_LOGIC;
    axif_dram_wvalid : IN STD_LOGIC;
    axif_dram_wready : OUT STD_LOGIC;
    axif_dram_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    axif_dram_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    axif_dram_bvalid : OUT STD_LOGIC;
    axif_dram_bready : IN STD_LOGIC;
    axif_dram_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    axif_dram_araddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    axif_dram_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    axif_dram_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axif_dram_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    axif_dram_arlock : IN STD_LOGIC;
    axif_dram_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_dram_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axif_dram_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_dram_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_dram_arvalid : IN STD_LOGIC;
    axif_dram_arready : OUT STD_LOGIC;
    axif_dram_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    axif_dram_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    axif_dram_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    axif_dram_rlast : OUT STD_LOGIC;
    axif_dram_rvalid : OUT STD_LOGIC;
    axif_dram_rready : IN STD_LOGIC;
    axif_dram_aclk : IN STD_LOGIC;
    axif_dram_aresetn : IN STD_LOGIC;
    axif_fifo_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    axif_fifo_awaddr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axif_fifo_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    axif_fifo_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axif_fifo_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    axif_fifo_awlock : IN STD_LOGIC;
    axif_fifo_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_fifo_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axif_fifo_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_fifo_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_fifo_awvalid : IN STD_LOGIC;
    axif_fifo_awready : OUT STD_LOGIC;
    axif_fifo_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    axif_fifo_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_fifo_wlast : IN STD_LOGIC;
    axif_fifo_wvalid : IN STD_LOGIC;
    axif_fifo_wready : OUT STD_LOGIC;
    axif_fifo_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    axif_fifo_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    axif_fifo_bvalid : OUT STD_LOGIC;
    axif_fifo_bready : IN STD_LOGIC;
    axif_fifo_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    axif_fifo_araddr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axif_fifo_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    axif_fifo_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axif_fifo_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    axif_fifo_arlock : IN STD_LOGIC;
    axif_fifo_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_fifo_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axif_fifo_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_fifo_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axif_fifo_arvalid : IN STD_LOGIC;
    axif_fifo_arready : OUT STD_LOGIC;
    axif_fifo_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    axif_fifo_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    axif_fifo_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    axif_fifo_rlast : OUT STD_LOGIC;
    axif_fifo_rvalid : OUT STD_LOGIC;
    axif_fifo_rready : IN STD_LOGIC;
    axif_fifo_aclk : IN STD_LOGIC;
    axif_fifo_aresetn : IN STD_LOGIC
  );
END design_2_comblock_0_0;

ARCHITECTURE design_2_comblock_0_0_arch OF design_2_comblock_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_2_comblock_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT comblock_v1_0 IS
    GENERIC (
      C_AXIL_REGS_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      C_AXIF_DRAM_ID_WIDTH : INTEGER; -- Width of ID for for write address, write data, read address and read data
      C_AXIF_DRAM_AWUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write address channel
      C_AXIF_DRAM_ARUSER_WIDTH : INTEGER; -- Width of optional user defined signal in read address channel
      C_AXIF_DRAM_WUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write data channel
      C_AXIF_DRAM_RUSER_WIDTH : INTEGER; -- Width of optional user defined signal in read data channel
      C_AXIF_DRAM_BUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write response channel
      C_AXIF_FIFO_ID_WIDTH : INTEGER; -- Width of ID for for write address, write data, read address and read data
      C_AXIF_FIFO_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      C_AXIF_FIFO_AWUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write address channel
      C_AXIF_FIFO_ARUSER_WIDTH : INTEGER; -- Width of optional user defined signal in read address channel
      C_AXIF_FIFO_WUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write data channel
      C_AXIF_FIFO_RUSER_WIDTH : INTEGER; -- Width of optional user defined signal in read data channel
      C_AXIF_FIFO_BUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write response channel
      C_ENABLE_DRAM : BOOLEAN;
      C_ENABLE_FIFO_FPGA_TO_PROC : BOOLEAN;
      C_ENABLE_FIFO_PROC_TO_FPGA : BOOLEAN;
      C_REGS_DATA_WIDTH : INTEGER;
      C_DRAM_DATA_WIDTH : INTEGER;
      C_DRAM_ADDR_WIDTH : INTEGER;
      C_FIFO_DATA_WIDTH : INTEGER;
      C_FIFO_AFULLOFFSET : INTEGER;
      C_FIFO_AEMPTYOFFSET : INTEGER;
      C_FIFO_DEPTH : INTEGER;
      C_AXIL_REGS_DATA_WIDTH : INTEGER;
      C_AXIF_DRAM_DATA_WIDTH : INTEGER;
      C_AXIF_DRAM_ADDR_WIDTH : INTEGER;
      C_AXIF_FIFO_DATA_WIDTH : INTEGER;
      C_DRAM_DEPTH : INTEGER;
      C_SINGLE_DIRECTION : BOOLEAN
    );
    PORT (
      reg0_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg1_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg2_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg3_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg4_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg5_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg6_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg7_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg8_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg9_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg10_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg11_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg12_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg13_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg14_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg15_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg0_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg1_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg2_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg3_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg4_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg5_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg6_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg7_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg8_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg9_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg10_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg11_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg12_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg13_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg14_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      reg15_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ram_clk_i : IN STD_LOGIC;
      ram_we_i : IN STD_LOGIC;
      ram_addr_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      ram_data_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ram_data_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      fifo_clk_i : IN STD_LOGIC;
      fifo_clear_i : IN STD_LOGIC;
      fifo_we_i : IN STD_LOGIC;
      fifo_data_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      fifo_full_o : OUT STD_LOGIC;
      fifo_afull_o : OUT STD_LOGIC;
      fifo_overflow_o : OUT STD_LOGIC;
      fifo_re_i : IN STD_LOGIC;
      fifo_data_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      fifo_empty_o : OUT STD_LOGIC;
      fifo_aempty_o : OUT STD_LOGIC;
      fifo_underflow_o : OUT STD_LOGIC;
      axil_regs_awaddr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      axil_regs_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axil_regs_awvalid : IN STD_LOGIC;
      axil_regs_awready : OUT STD_LOGIC;
      axil_regs_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      axil_regs_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axil_regs_wvalid : IN STD_LOGIC;
      axil_regs_wready : OUT STD_LOGIC;
      axil_regs_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      axil_regs_bvalid : OUT STD_LOGIC;
      axil_regs_bready : IN STD_LOGIC;
      axil_regs_araddr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      axil_regs_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axil_regs_arvalid : IN STD_LOGIC;
      axil_regs_arready : OUT STD_LOGIC;
      axil_regs_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      axil_regs_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      axil_regs_rvalid : OUT STD_LOGIC;
      axil_regs_rready : IN STD_LOGIC;
      axil_regs_aclk : IN STD_LOGIC;
      axil_regs_aresetn : IN STD_LOGIC;
      axif_dram_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      axif_dram_awaddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      axif_dram_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      axif_dram_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axif_dram_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      axif_dram_awlock : IN STD_LOGIC;
      axif_dram_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_dram_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axif_dram_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_dram_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_dram_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      axif_dram_awvalid : IN STD_LOGIC;
      axif_dram_awready : OUT STD_LOGIC;
      axif_dram_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      axif_dram_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_dram_wlast : IN STD_LOGIC;
      axif_dram_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      axif_dram_wvalid : IN STD_LOGIC;
      axif_dram_wready : OUT STD_LOGIC;
      axif_dram_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      axif_dram_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      axif_dram_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      axif_dram_bvalid : OUT STD_LOGIC;
      axif_dram_bready : IN STD_LOGIC;
      axif_dram_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      axif_dram_araddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      axif_dram_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      axif_dram_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axif_dram_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      axif_dram_arlock : IN STD_LOGIC;
      axif_dram_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_dram_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axif_dram_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_dram_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_dram_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      axif_dram_arvalid : IN STD_LOGIC;
      axif_dram_arready : OUT STD_LOGIC;
      axif_dram_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      axif_dram_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      axif_dram_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      axif_dram_rlast : OUT STD_LOGIC;
      axif_dram_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      axif_dram_rvalid : OUT STD_LOGIC;
      axif_dram_rready : IN STD_LOGIC;
      axif_dram_aclk : IN STD_LOGIC;
      axif_dram_aresetn : IN STD_LOGIC;
      axif_fifo_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      axif_fifo_awaddr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axif_fifo_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      axif_fifo_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axif_fifo_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      axif_fifo_awlock : IN STD_LOGIC;
      axif_fifo_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_fifo_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axif_fifo_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_fifo_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_fifo_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      axif_fifo_awvalid : IN STD_LOGIC;
      axif_fifo_awready : OUT STD_LOGIC;
      axif_fifo_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      axif_fifo_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_fifo_wlast : IN STD_LOGIC;
      axif_fifo_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      axif_fifo_wvalid : IN STD_LOGIC;
      axif_fifo_wready : OUT STD_LOGIC;
      axif_fifo_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      axif_fifo_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      axif_fifo_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      axif_fifo_bvalid : OUT STD_LOGIC;
      axif_fifo_bready : IN STD_LOGIC;
      axif_fifo_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      axif_fifo_araddr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axif_fifo_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      axif_fifo_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axif_fifo_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      axif_fifo_arlock : IN STD_LOGIC;
      axif_fifo_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_fifo_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axif_fifo_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_fifo_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axif_fifo_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      axif_fifo_arvalid : IN STD_LOGIC;
      axif_fifo_arready : OUT STD_LOGIC;
      axif_fifo_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      axif_fifo_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      axif_fifo_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      axif_fifo_rlast : OUT STD_LOGIC;
      axif_fifo_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      axif_fifo_rvalid : OUT STD_LOGIC;
      axif_fifo_rready : IN STD_LOGIC;
      axif_fifo_aclk : IN STD_LOGIC;
      axif_fifo_aresetn : IN STD_LOGIC
    );
  END COMPONENT comblock_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF axif_fifo_aresetn: SIGNAL IS "XIL_INTERFACENAME AXIF_FIFO_RST, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 AXIF_FIFO_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axif_fifo_aclk: SIGNAL IS "XIL_INTERFACENAME AXIF_FIFO_CLK, ASSOCIATED_BUSIF AXIF_FIFO, ASSOCIATED_RESET axif_fifo_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 AXIF_FIFO_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO RID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_arregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO ARID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO BID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axif_fifo_awid: SIGNAL IS "XIL_INTERFACENAME AXIF_FIFO, WIZ_DATA_WIDTH 32, WIZ_MEMORY_SIZE 64, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 12, ADDR_WIDTH 3, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_2_processing" & 
"_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF axif_fifo_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_FIFO AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axif_dram_aresetn: SIGNAL IS "XIL_INTERFACENAME AXIF_DRAM_RST, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 AXIF_DRAM_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axif_dram_aclk: SIGNAL IS "XIL_INTERFACENAME AXIF_DRAM_CLK, ASSOCIATED_BUSIF AXIF_DRAM, ASSOCIATED_RESET axif_dram_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 AXIF_DRAM_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM RID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_arregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM ARID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM BID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axif_dram_awid: SIGNAL IS "XIL_INTERFACENAME AXIF_DRAM, WIZ_DATA_WIDTH 32, WIZ_MEMORY_SIZE 1024, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 12, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_2_process" & 
"ing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF axif_dram_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIF_DRAM AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axil_regs_aresetn: SIGNAL IS "XIL_INTERFACENAME AXIL_REGS_RST, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 AXIL_REGS_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axil_regs_aclk: SIGNAL IS "XIL_INTERFACENAME AXIL_REGS_CLK, ASSOCIATED_BUSIF AXIL_REGS, ASSOCIATED_RESET axil_regs_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 AXIL_REGS_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axil_regs_awaddr: SIGNAL IS "XIL_INTERFACENAME AXIL_REGS, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 10, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_2_processing_s" & 
"ystem7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF axil_regs_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXIL_REGS AWADDR";
BEGIN
  U0 : comblock_v1_0
    GENERIC MAP (
      C_AXIL_REGS_ADDR_WIDTH => 8,
      C_AXIF_DRAM_ID_WIDTH => 12,
      C_AXIF_DRAM_AWUSER_WIDTH => 0,
      C_AXIF_DRAM_ARUSER_WIDTH => 0,
      C_AXIF_DRAM_WUSER_WIDTH => 0,
      C_AXIF_DRAM_RUSER_WIDTH => 0,
      C_AXIF_DRAM_BUSER_WIDTH => 0,
      C_AXIF_FIFO_ID_WIDTH => 12,
      C_AXIF_FIFO_ADDR_WIDTH => 3,
      C_AXIF_FIFO_AWUSER_WIDTH => 0,
      C_AXIF_FIFO_ARUSER_WIDTH => 0,
      C_AXIF_FIFO_WUSER_WIDTH => 0,
      C_AXIF_FIFO_RUSER_WIDTH => 0,
      C_AXIF_FIFO_BUSER_WIDTH => 0,
      C_ENABLE_DRAM => true,
      C_ENABLE_FIFO_FPGA_TO_PROC => true,
      C_ENABLE_FIFO_PROC_TO_FPGA => false,
      C_REGS_DATA_WIDTH => 32,
      C_DRAM_DATA_WIDTH => 32,
      C_DRAM_ADDR_WIDTH => 16,
      C_FIFO_DATA_WIDTH => 32,
      C_FIFO_AFULLOFFSET => 1,
      C_FIFO_AEMPTYOFFSET => 1,
      C_FIFO_DEPTH => 1533,
      C_AXIL_REGS_DATA_WIDTH => 32,
      C_AXIF_DRAM_DATA_WIDTH => 32,
      C_AXIF_DRAM_ADDR_WIDTH => 18,
      C_AXIF_FIFO_DATA_WIDTH => 32,
      C_DRAM_DEPTH => 0,
      C_SINGLE_DIRECTION => false
    )
    PORT MAP (
      reg0_i => reg0_i,
      reg1_i => reg1_i,
      reg2_i => reg2_i,
      reg3_i => reg3_i,
      reg4_i => reg4_i,
      reg5_i => reg5_i,
      reg6_i => reg6_i,
      reg7_i => reg7_i,
      reg8_i => reg8_i,
      reg9_i => reg9_i,
      reg10_i => reg10_i,
      reg11_i => reg11_i,
      reg12_i => reg12_i,
      reg13_i => reg13_i,
      reg14_i => reg14_i,
      reg15_i => reg15_i,
      reg0_o => reg0_o,
      reg1_o => reg1_o,
      reg2_o => reg2_o,
      reg3_o => reg3_o,
      reg4_o => reg4_o,
      reg5_o => reg5_o,
      reg6_o => reg6_o,
      reg7_o => reg7_o,
      reg8_o => reg8_o,
      reg9_o => reg9_o,
      reg10_o => reg10_o,
      reg11_o => reg11_o,
      reg12_o => reg12_o,
      reg13_o => reg13_o,
      reg14_o => reg14_o,
      reg15_o => reg15_o,
      ram_clk_i => ram_clk_i,
      ram_we_i => ram_we_i,
      ram_addr_i => ram_addr_i,
      ram_data_i => ram_data_i,
      ram_data_o => ram_data_o,
      fifo_clk_i => fifo_clk_i,
      fifo_clear_i => fifo_clear_i,
      fifo_we_i => fifo_we_i,
      fifo_data_i => fifo_data_i,
      fifo_full_o => fifo_full_o,
      fifo_afull_o => fifo_afull_o,
      fifo_overflow_o => fifo_overflow_o,
      fifo_re_i => fifo_re_i,
      fifo_data_o => fifo_data_o,
      fifo_empty_o => fifo_empty_o,
      fifo_aempty_o => fifo_aempty_o,
      fifo_underflow_o => fifo_underflow_o,
      axil_regs_awaddr => axil_regs_awaddr,
      axil_regs_awprot => axil_regs_awprot,
      axil_regs_awvalid => axil_regs_awvalid,
      axil_regs_awready => axil_regs_awready,
      axil_regs_wdata => axil_regs_wdata,
      axil_regs_wstrb => axil_regs_wstrb,
      axil_regs_wvalid => axil_regs_wvalid,
      axil_regs_wready => axil_regs_wready,
      axil_regs_bresp => axil_regs_bresp,
      axil_regs_bvalid => axil_regs_bvalid,
      axil_regs_bready => axil_regs_bready,
      axil_regs_araddr => axil_regs_araddr,
      axil_regs_arprot => axil_regs_arprot,
      axil_regs_arvalid => axil_regs_arvalid,
      axil_regs_arready => axil_regs_arready,
      axil_regs_rdata => axil_regs_rdata,
      axil_regs_rresp => axil_regs_rresp,
      axil_regs_rvalid => axil_regs_rvalid,
      axil_regs_rready => axil_regs_rready,
      axil_regs_aclk => axil_regs_aclk,
      axil_regs_aresetn => axil_regs_aresetn,
      axif_dram_awid => axif_dram_awid,
      axif_dram_awaddr => axif_dram_awaddr,
      axif_dram_awlen => axif_dram_awlen,
      axif_dram_awsize => axif_dram_awsize,
      axif_dram_awburst => axif_dram_awburst,
      axif_dram_awlock => axif_dram_awlock,
      axif_dram_awcache => axif_dram_awcache,
      axif_dram_awprot => axif_dram_awprot,
      axif_dram_awregion => axif_dram_awregion,
      axif_dram_awqos => axif_dram_awqos,
      axif_dram_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      axif_dram_awvalid => axif_dram_awvalid,
      axif_dram_awready => axif_dram_awready,
      axif_dram_wdata => axif_dram_wdata,
      axif_dram_wstrb => axif_dram_wstrb,
      axif_dram_wlast => axif_dram_wlast,
      axif_dram_wuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      axif_dram_wvalid => axif_dram_wvalid,
      axif_dram_wready => axif_dram_wready,
      axif_dram_bid => axif_dram_bid,
      axif_dram_bresp => axif_dram_bresp,
      axif_dram_bvalid => axif_dram_bvalid,
      axif_dram_bready => axif_dram_bready,
      axif_dram_arid => axif_dram_arid,
      axif_dram_araddr => axif_dram_araddr,
      axif_dram_arlen => axif_dram_arlen,
      axif_dram_arsize => axif_dram_arsize,
      axif_dram_arburst => axif_dram_arburst,
      axif_dram_arlock => axif_dram_arlock,
      axif_dram_arcache => axif_dram_arcache,
      axif_dram_arprot => axif_dram_arprot,
      axif_dram_arregion => axif_dram_arregion,
      axif_dram_arqos => axif_dram_arqos,
      axif_dram_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      axif_dram_arvalid => axif_dram_arvalid,
      axif_dram_arready => axif_dram_arready,
      axif_dram_rid => axif_dram_rid,
      axif_dram_rdata => axif_dram_rdata,
      axif_dram_rresp => axif_dram_rresp,
      axif_dram_rlast => axif_dram_rlast,
      axif_dram_rvalid => axif_dram_rvalid,
      axif_dram_rready => axif_dram_rready,
      axif_dram_aclk => axif_dram_aclk,
      axif_dram_aresetn => axif_dram_aresetn,
      axif_fifo_awid => axif_fifo_awid,
      axif_fifo_awaddr => axif_fifo_awaddr,
      axif_fifo_awlen => axif_fifo_awlen,
      axif_fifo_awsize => axif_fifo_awsize,
      axif_fifo_awburst => axif_fifo_awburst,
      axif_fifo_awlock => axif_fifo_awlock,
      axif_fifo_awcache => axif_fifo_awcache,
      axif_fifo_awprot => axif_fifo_awprot,
      axif_fifo_awregion => axif_fifo_awregion,
      axif_fifo_awqos => axif_fifo_awqos,
      axif_fifo_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      axif_fifo_awvalid => axif_fifo_awvalid,
      axif_fifo_awready => axif_fifo_awready,
      axif_fifo_wdata => axif_fifo_wdata,
      axif_fifo_wstrb => axif_fifo_wstrb,
      axif_fifo_wlast => axif_fifo_wlast,
      axif_fifo_wuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      axif_fifo_wvalid => axif_fifo_wvalid,
      axif_fifo_wready => axif_fifo_wready,
      axif_fifo_bid => axif_fifo_bid,
      axif_fifo_bresp => axif_fifo_bresp,
      axif_fifo_bvalid => axif_fifo_bvalid,
      axif_fifo_bready => axif_fifo_bready,
      axif_fifo_arid => axif_fifo_arid,
      axif_fifo_araddr => axif_fifo_araddr,
      axif_fifo_arlen => axif_fifo_arlen,
      axif_fifo_arsize => axif_fifo_arsize,
      axif_fifo_arburst => axif_fifo_arburst,
      axif_fifo_arlock => axif_fifo_arlock,
      axif_fifo_arcache => axif_fifo_arcache,
      axif_fifo_arprot => axif_fifo_arprot,
      axif_fifo_arregion => axif_fifo_arregion,
      axif_fifo_arqos => axif_fifo_arqos,
      axif_fifo_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      axif_fifo_arvalid => axif_fifo_arvalid,
      axif_fifo_arready => axif_fifo_arready,
      axif_fifo_rid => axif_fifo_rid,
      axif_fifo_rdata => axif_fifo_rdata,
      axif_fifo_rresp => axif_fifo_rresp,
      axif_fifo_rlast => axif_fifo_rlast,
      axif_fifo_rvalid => axif_fifo_rvalid,
      axif_fifo_rready => axif_fifo_rready,
      axif_fifo_aclk => axif_fifo_aclk,
      axif_fifo_aresetn => axif_fifo_aresetn
    );
END design_2_comblock_0_0_arch;
