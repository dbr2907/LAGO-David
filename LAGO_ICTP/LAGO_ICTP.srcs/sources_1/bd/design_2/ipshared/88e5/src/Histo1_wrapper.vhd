--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Wed Jul 25 19:17:47 2018
--Host        : HP6-MLAB-9 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target Histo1_wrapper.bd
--Design      : Histo1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Histo1_wrapper is
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
end Histo1_wrapper;

architecture STRUCTURE of Histo1_wrapper is
  component Histo1 is
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
  end component Histo1;
begin
Histo1_i: component Histo1
     port map (
      Dout_clr_0(0) => Dout_clr_0(0),
      addb_0(15 downto 0) => addb_0(15 downto 0),
      clk_0 => clk_0,
      ctrl_reg_0(31 downto 0) => ctrl_reg_0(31 downto 0),
      curr_cycle_0(31 downto 0) => curr_cycle_0(31 downto 0),
      data_valid_0 => data_valid_0,
      dinb_0(31 downto 0) => dinb_0(31 downto 0),
      done_0 => done_0,
      doutb_0(31 downto 0) => doutb_0(31 downto 0),
      enb_0 => enb_0,
      in_addr_0(15 downto 0) => in_addr_0(15 downto 0),
      max_cycles_0(31 downto 0) => max_cycles_0(31 downto 0),
      rdy_0_0 => rdy_0_0,
      rst_0 => rst_0,
      web_0(0) => web_0(0)
    );
end STRUCTURE;
