----------------------------------------------------------------------------------
-- Company: ICTP
-- Engineer: LUIS GARCIA
--
-- Create Date: 04/25/2018 09:38:46 AM
-- Design Name: TIMESTAMP
-- Module Name: stamp - Behavioral
-- Project Name: TIMESTAMP
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: TIMESTAMP WITH TRIGGER OCCURANCE
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity stamp is
    generic(time_resolution : integer :=32
    );
    port(clk : in STD_LOGIC;

         rst : in STD_LOGIC;

         clear : in STD_LOGIC;

         ts : in Unsigned(time_resolution-1 downto 0); --Slow time input
         tf : in Unsigned(time_resolution-1 downto 0); --Fast time input

         trig : in STD_LOGIC;
         lat : in STD_LOGIC; --Latency hold signal for ps to correct timestamp.

         tss : out Unsigned(time_resolution-1 downto 0); --timestamp slow
         tsf : out Unsigned(time_resolution-1 downto 0); --timestamp fast

         trig_hold : out STD_LOGIC;
         lat_hold : out STD_LOGIC
    );
end stamp;

architecture Behavioral of stamp is

  signal hold : STD_LOGIC;

begin

  process(clk,rst,trig,clear, lat)
  begin
    if rst='0' then
      tss<=(others=>'0');
      tsf<=(others=>'0');
      hold<='0';
      lat_hold<='0';
    elsif rising_edge(clk) then
      if clear = '1' then
        tss<=(others=>'0');
        tsf<=(others=>'0');
        hold<='0';
        lat_hold<='0';

      elsif trig='1' and hold='0' then
        tss<=ts;
        tsf<=tf;
        hold<='1';
        lat_hold<=lat;
      end if;
    end if;
  end process;

trig_hold<=hold;

end Behavioral;
