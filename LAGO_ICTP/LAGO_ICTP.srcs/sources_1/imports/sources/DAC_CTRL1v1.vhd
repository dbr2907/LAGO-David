----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 07/19/2018 04:14:02 PM
-- Design Name:
-- Module Name: DAC_CTRL - Behavioral
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

entity DAC_CTRL1v1 is
	 GENERIC(    REG_BITS : Integer :=32;
	             NSLAVES : Integer:= 3;
				 CLK_DIV : Integer:=100;
				 SPI_BITS 	: Integer:=24);
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           DATA : in  STD_LOGIC_VECTOR(REG_BITS-1 DOWNTO 0);
           CTRL : in STD_LOGIC_VECTOR(REG_BITS-1 DOWNTO 0);

           DEVICE : in  UNSIGNED(REG_BITS-1 DOWNTO 0);

		   		 RLED : out STD_LOGIC;
           SCK : out  STD_LOGIC;
           SDATA : out  STD_LOGIC;
           LOADDAC : out  STD_LOGIC;
           SS : out  STD_LOGIC_VECTOR (NSLAVES-1 downto 0));
end DAC_CTRL1v1;

architecture Behavioral of DAC_CTRL1v1 is

COMPONENT spi_master IS
  GENERIC(
    slaves  : INTEGER := 4;  --number of spi slaves
    d_width : INTEGER := 2); --data bus width
  PORT(
    clock   : IN     STD_LOGIC;                             --system clock
    reset_n : IN     STD_LOGIC;                             --asynchronous reset
    enable  : IN     STD_LOGIC;                             --initiate transaction
    cpol    : IN     STD_LOGIC;                             --spi clock polarity
    cpha    : IN     STD_LOGIC;                             --spi clock phase
    cont    : IN     STD_LOGIC;                             --continuous mode command
    clk_div : IN     INTEGER;                               --system clock cycles per 1/2 period of sclk
    addr    : IN     INTEGER;                               --address of slave
    tx_data : IN     STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
    miso    : IN     STD_LOGIC;                             --master in, slave out
    sclk    : BUFFER STD_LOGIC;                             --spi clock
    ss_n    : BUFFER STD_LOGIC_VECTOR(slaves-1 DOWNTO 0);   --slave select
    mosi    : OUT    STD_LOGIC;                             --master out, slave in
    busy    : OUT    STD_LOGIC;                             --busy / data ready signal
    rx_data : OUT    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0)); --data received
END COMPONENT spi_master;

begin

Inst_SPI_MASTER : spi_master
		GENERIC MAP(slaves => NSLAVES,
                    d_width => SPI_BITS
		)
    port map (clock   => CLK,
              reset_n => RST,
              enable  => CTRL(0),
              --cpol    => '1', --MAX5216  (falling edge)
              cpol    => '0', --AD7303 (rising edge)
              cpha    => CTRL(1),
              cont    => CTRL(3),
              clk_div => CLK_DIV,
              addr    => to_integer(DEVICE),
              tx_data => DATA(SPI_BITS-1 DOWNTO 0),
              miso    => '0',
              sclk 		=> SCK,
              ss_n		=> SS,
              mosi    => SDATA,
              busy    => RLED,
              rx_data => OPEN);

LOADDAC<= CTRL(2) AND CTRL(0);

end Behavioral;
