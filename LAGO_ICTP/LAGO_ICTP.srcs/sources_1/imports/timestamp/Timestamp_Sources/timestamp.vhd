----------------------------------------------------------------------------------
-- Company: ICTP
-- Engineer: LUIS GARCIA
--
-- Create Date: 04/25/2018 09:38:46 AM
-- Design Name: TIMESTAMP
-- Module Name: timestamp - Behavioral
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

entity timestamp is
    generic(time_resolution : integer :=32
    );
    port(fclk : in STD_LOGIC;
         sclk : in STD_LOGIC;

         rst : in STD_LOGIC;

         clear : in STD_LOGIC;

         trig : in STD_LOGIC;
         latency: in STD_LOGIC;

         tss : out Unsigned(time_resolution-1 downto 0); --timestamp slow
         tsf : out Unsigned(time_resolution-1 downto 0); --timestamp fast

         trig_signal : out STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
end timestamp;

architecture Behavioral of timestamp is
  component timer is
      generic(time_resolution : integer :=time_resolution
      );
      port(sclk  : in STD_LOGIC;
           fclk  : in  STD_LOGIC; --Defining slow and fast clock

           rst : in  STD_LOGIC;

           st : out UNSIGNED(time_resolution-1 downto 0); --slow clock counter
           ft : out UNSIGNED(time_resolution-1 downto 0)  --fast clock counter
      );
  end component;

component stamp is
      generic(time_resolution : integer :=time_resolution
      );
      port(clk : in STD_LOGIC;

           rst : in STD_LOGIC;

           clear : in STD_LOGIC;

           ts : in Unsigned(time_resolution-1 downto 0); --Slow time input
           tf : in Unsigned(time_resolution-1 downto 0); --Fast time input

           trig : in STD_LOGIC;

           tss : out Unsigned(time_resolution-1 downto 0); --timestamp slow
           tsf : out Unsigned(time_resolution-1 downto 0); --timestamp fast

           trig_hold : out STD_LOGIC;
           lat_hold : out STD_LOGIC
      );
  end component;

  signal st_signal, ft_signal : Unsigned(time_resolution-1 downto 0);


begin

  timer_component: timer
    generic map(time_resolution => time_resolution)
    port map(sclk => sclk,
             fclk => fclk,
             rst=> rst,
             st=>st_signal,
             ft=>ft_signal
    );

    stamp_component : stamp
      generic map(time_resolution=>time_resolution)
      port map(clk=>fclk,
               rst=>rst,
               clear=>clear,
               ts=>st_signal,
               tf=>ft_signal,
               trig=>trig,
               tss=>tss,
               tsf=>tsf,
               trig_hold=>trig_signal(0),
               lat_hold=> trig_signal(1)
               );

trig_signal(31 downto 2)<=(others=>'0');
end Behavioral;
