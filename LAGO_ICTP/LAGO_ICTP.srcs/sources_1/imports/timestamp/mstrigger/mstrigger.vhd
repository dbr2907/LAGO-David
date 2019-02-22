----------------------------------------------------------------------------------
-- Company: ICTP
-- Engineer: LUIS GARCIA
--
-- Create Date: 08/22/2018 11:42:46 AM
-- Design Name: mstrigger
-- Module Name: mstrigger - Behavioral
-- Project Name: mstrigger
-- Target Devices: Series 7
-- Tool Versions: Vivado Design Tool
-- Description:
-- This blocks creates a substraction matrix to be used in a fast trigger analis.
-- Dependencies: diff_checker.vhd, array_pkg.vhd, Trigger.vhd
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: TIMESTAMP WITH TRIGGER OCCURANCE
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Custom made array package for current
use work.array_pkg.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity mstrigger is
  generic(data_width : integer :=16
  );
  port(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;

    din : IN STD_LOGIC_VECTOR(data_width-1 downto 0);

    en : IN STD_LOGIC;

    threshold : IN  unsigned(data_width/2-1 downto 0);

    TS : OUT STD_LOGIC;

    LAT : out STD_LOGIC

  );

end mstrigger;

architecture Behavioral of mstrigger is

--instantiating components
  component trigger is
    generic(data_width : integer :=16
    );
    port(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;

      en : IN STD_LOGIC;

      trigger : OUT STD_LOGIC;
      LAT : out STD_LOGIC;

      threshold : IN  unsigned(data_width/2-1 downto 0);

      results  : in smatrix

    );

  end component;

signal result_signal : smatrix;

  component diff_matrix is
    generic(data_width : integer :=16
    );
    port(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;

      din : IN STD_LOGIC_VECTOR(data_width-1 downto 0);

      om  : out smatrix
    );
  end component;



  begin

    trig: trigger port map(
      clk => CLK,
      rst => rst,
      en => en,
      trigger => TS,
      Lat => LAT,
      threshold => threshold,
      results => result_signal
    );

    diff: diff_matrix port map(
      clk=> CLK,
      rst=> rst,
      din => din,
      om=> result_signal
    );


  end Behavioral;
