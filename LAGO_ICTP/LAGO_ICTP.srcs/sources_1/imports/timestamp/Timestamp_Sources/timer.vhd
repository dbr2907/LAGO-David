----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/25/2018 09:38:46 AM
-- Design Name:
-- Module Name: timer - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
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

entity timer is
    generic(time_resolution : integer :=32
    );
    port(sclk  : in STD_LOGIC;
         fclk  : in  STD_LOGIC; --Defining slow and fast clock

         rst : in  STD_LOGIC;

         st : out UNSIGNED(time_resolution-1 downto 0); --slow clock counter
         ft : out UNSIGNED(time_resolution-1 downto 0)  --fast clock counter
    );
end timer;

architecture Behavioral of timer is

signal tf :  unsigned(time_resolution-1 downto 0); --general time manager
signal ts : unsigned(time_resolution-1 downto 0);

signal rise, fall : STD_LOGIC;--signals for rising edge on slow clock

begin

  sync1 : process(fclk)
    variable resync : std_logic_vector(1 to 3);
  begin
    if rising_edge(fclk) then
      -- detect rising and falling edges.
      rise <= resync(2) and not resync(3);
      fall <= resync(3) and not resync(2);
      -- update history shifter.
      resync := sclk & resync(1 to 2);
      --
    end if;
  end process;



process(fclk, rise)
begin
  if rst='0' then
    ts<=(others=>'0');
    tf<=(others=>'0');
  elsif rising_edge(fclk) then
    if rise='1' then
      tf<=(others=>'0');
      ts<=ts+1;
    else
      tf<=tf+1;
      ts<=ts;
    end if;
  end if;
end process;

ft<=tf;
st<=ts;

end Behavioral;
