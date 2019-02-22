-- Testbench automatically generated online
-- at http://vhdl.lapinoo.net
-- Generation date : 26.6.2018 15:08:47 GMT

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity tb_timestamp is
generic(time_resolution : integer :=32);
end tb_timestamp;

architecture tb of tb_timestamp is

 component timestamp
        generic(time_resolution : integer :=time_resolution);
        port (fclk  : in std_logic;
              sclk  : in std_logic;
              rst   : in std_logic;
              clear : in std_logic;
              trig  : in std_logic;
              tss   : out unsigned (time_resolution-1 downto 0);
              tsf   : out unsigned (time_resolution-1 downto 0));
    end component;

    signal fclk  : std_logic;
    signal sclk  : std_logic;
    signal rst   : std_logic;
    signal clear : std_logic;
    signal trig  : std_logic;
    signal tss   : unsigned (time_resolution-1 downto 0);
    signal tsf   : unsigned (time_resolution-1 downto 0);

    constant TbPeriod : time := 4 ns; -- EDIT Put right period here
    constant SLWCLKPERIOD : time := 100ns;
    signal TbClock, SLWCLK : std_logic := '0';
    signal TbSimEnded : std_logic := '0';


begin

    dut : timestamp
    port map (fclk  => fclk,
              sclk  => sclk,
              rst   => rst,
              clear => clear,
              trig  => trig,
              tss   => tss,
              tsf   => tsf);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';
    SLWCLK  <= not TbClock after SLWCLKPERIOD/2 when TbSimEnded /= '1' else '0';
    -- EDIT: Check that fclk is really your main clock signal
    fclk <= TbClock;
    sclk <= SLWCLK;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        clear <= '0';
        trig <= '0';

        -- Reset generation
        -- EDIT: Check that rst is really your reset signal
        rst <= '0';
        wait for 10 ns;
        rst <= '1';
        wait for 10 ns;

        clear <='1';
        wait for 20 ns;
        clear <='0';
        wait for 600ns;
        trig<='1';
        wait for 4 ns;
        trig<='0';


        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;
