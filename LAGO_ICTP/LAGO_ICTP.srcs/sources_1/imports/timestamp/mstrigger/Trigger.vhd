----------------------------------------------------------------------------------
-- Company: ICTP
-- Engineer: LUIS GARCIA
--
-- Create Date: 08/22/2018 11:42:46 AM
-- Design Name: mstrigger
-- Module Name:  Trigger- Behavioral
-- Project Name: diff_matrix
-- Target Devices: Series 7
-- Tool Versions: Vivado Design Tool
-- Description:
-- This blocks creates a substraction matrix to be used in a fast trigger analis.
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: TIMESTAMP WITH TRIGGER OCCURANCE
--Latency observed is of 1 clk cicle
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
entity trigger is
  generic(data_width : integer :=16
  );
  port(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;

    en : IN STD_LOGIC;

    trigger : OUT STD_LOGIC;

    Lat : out STD_LOGIC; --Latency bit to mark trigger in 1 cicle before.

    threshold : IN  unsigned(data_width/2-1 downto 0);

    results  : in smatrix

  );

end trigger;

architecture Behavioral of trigger is

signal thr : signed(data_width/2 downto 0);
signal trig : std_logic;

begin

thr<=signed('0'&threshold);
trigger<=trig and en;

process(clk,rst, thr)
begin
  if rst='0' then
    trig<='0';
    Lat<='0';
  elsif rising_edge(clk) then
    if abs(results(1)(2))>=signed('0'&thr) then
      trig<='1';
      Lat<='1';
    elsif abs(results(0)(1))>=signed('0'&thr) then
      trig<='1';
      Lat<='0';
    else
      trig<='0';
      Lat<='0';
    end if;
  end if;
end process;


end Behavioral;
