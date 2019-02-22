----------------------------------------------------------------------------------
-- Company: ICTP
-- Engineer: LUIS GARCIA
--
-- Create Date: 04/25/2018 09:38:46 AM
-- Design Name: FIFOMGR.VHD
-- Module Name: FIFOMGR - Behavioral
-- Project Name: OSCILO_W_TIMESTAMP
-- Target Devices:
-- Tool Versions:
-- Description:
--FIFO Manager for storing samples before and after an event.
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--CTRL REGISTER (CTRL_REG) BITS SET IN THIS WAY:
--(31 DOWNTO 24) SB
--(32 DOWNTO 16) SA
--(15 DOWNTO 2)  Not Connected
--1 Clear fifo
--0 enable
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

entity FIFOMGR IS
  generic(fifo_din_width : integer :=32;
          din_width  : integer :=16;
          delay    : integer :=3;
          fifo_depth : integer := 1536
          );
   port(  CLK : in STD_LOGIC;
          RST : in STD_LOGIC;

          -- --UNCOMENT FOR NON REGISTRED INTERFACE
          -- EN  : IN STD_LOGIC;
          -- CL  : IN STD_LOGIC;
          --
          -- SB  : IN UNSIGNED(7 DOWNTO 0); --NUMBER OF SAMPLES BEFORE EVENT
          -- SA  : IN UNSIGNED(7 DOWNTO 0); --NUMBER OF SAMPLES AFTER EVENT
          -- END OF NON REGISTERED INTERFACE

          -- 32 BIT CTRL REGISTER FOR REGISTERED INTERFACE
          CTRL_REG : IN STD_LOGIC_VECTOR(31 DOWNTO 0);

          TS : IN STD_LOGIC;
          LT : IN STD_LOGIC;

          TSS : IN STD_LOGIC_VECTOR(fifo_din_width-1 downto 0);
          TSF : IN STD_LOGIC_VECTOR(fifo_din_width-1 downto 0);

          ADC_DIN : IN STD_LOGIC_VECTOR(din_width-1 downto 0);

          FIFO_AFULL : IN STD_LOGIC;
          FIFO_FULL : IN STD_LOGIC;

          FIFO_AEMPTY  : IN STD_LOGIC;
          FIFO_EMPTY   : IN STD_LOGIC;

          FIFO_DATA    : OUT STD_LOGIC_VECTOR(fifo_din_width-1 downto 0);
          FIFO_WE : OUT STD_LOGIC;

          FIFO_CLR : OUT STD_LOGIC
   );
end entity;

architecture Behavioral of FIFOMGR IS

--COMMENT THIS IF IS USED NON-REGISTERED INTERFACE
signal EN  :  STD_LOGIC;
signal CL  :  STD_LOGIC;

signal SB  :  UNSIGNED(7 DOWNTO 0); --NUMBER OF SAMPLES BEFORE EVENT
signal SA  :  UNSIGNED(7 DOWNTO 0); --NUMBER OF SAMPLES AFTER EVENT
--end of NON-REGISTERED INTERFACE

--shift register component instantiation
COMPONENT c_shift_ram_0
  PORT (
    A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    D : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    CLK : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;


signal sb_signal, sa_signal : std_logic_vector(7 downto 0);
signal time_correction : std_logic_vector(7 downto 0);


signal ddata : std_logic_vector(din_width -1 downto 0);
signal inreg : std_logic_vector(7 downto 0);

signal head, tail, data : std_logic_vector(fifo_din_width-1 downto 0);

type states is (rstate, idle, whead, wtss, wtsf, wdata, wtail, cl_fifo);
signal cstate, nstate : states;

signal event_number : std_logic_vector(7 DOWNTO 0);
signal counter, max_counts : integer;

CONSTANT H : STD_LOGIC_VECTOR(7 DOWNTO 0) := x"01"; --Start of header in ascii SOH
CONSTANT D : STD_LOGIC_VECTOR(7 DOWNTO 0) := x"02"; --Start of text character in ascii STX
CONSTANT T : STD_LOGIC_VECTOR(7 DOWNTO 0) := x"05"; --End of trans in ascii EOT

begin

  --COMMENT THIS IF IS USED NON-REGISTERED INTERFACE
  EN <=CTRL_REG(0);
  CL <=CTRL_REG(1);
  SB <=unsigned(CTRL_REG(31 DOWNTO 24));
  SA <=unsigned(CTRL_REG(23 DOWNTO 16));
  --end of NON-REGISTERED INTERFACE

inreg<=std_logic_vector(unsigned(sb_signal)+to_unsigned(delay,8));

--SHIFT REGISTER
shift_register : c_shift_ram_0
  PORT MAP (
    A => inreg,
    D => ADC_DIN,
    CLK => CLK,
    Q => ddata
  );

SYNC_PROC: process(clk, rst)
begin
  if rst ='0' then
    cstate <= rstate;
    counter<=0;
  elsif rising_edge(clk) then
    cstate<=nstate;
    if cstate=wdata THEN
      counter<=counter+1;
    else
      counter<=0;
    end if;
  end if;
end process;

CSTATE_PROC: process(cstate, SB, SA, LT, FIFO_AFULL, ddata)
begin
  case cstate is
    when rstate =>
      FIFO_WE<='0';
      event_number<=(others=>'0');
      FIFO_CLR<='1';
      FIFO_DATA<=(others=>'0');

      max_counts<=0;
      sb_signal<=(others=>'0');
      sa_signal<=(others=>'0');
      time_correction<=(others=>'0');


    when idle =>
      FIFO_WE<='0';
      event_number<=event_number;
      FIFO_CLR<='0';
      FIFO_DATA<=(others=>'0');

      max_counts<=to_integer(SB)+to_integer(SA);

      sb_signal<=std_logic_vector(SB);
      sa_signal<=std_logic_vector(SA);
      time_correction(0)<=LT;
      time_correction(7 downto 1)<=(others=>'0');

    when whead =>
      FIFO_WE<='1';
      event_number<=event_number;
      FIFO_CLR<='0';
      FIFO_DATA<=H & event_number & sb_signal & sa_signal; --writing header in current format <Head_indication> & <event_number> & <# Samples before> & <# samples after>

      max_counts<=max_counts;
      sb_signal<=sb_signal;
      sa_signal<=sa_signal;
      time_correction<=time_correction;


    when wtss =>
      FIFO_WE<='1';
      event_number<=event_number;
      FIFO_CLR<='0';

      FIFO_DATA<=TSS; --writing time stamp slow

      max_counts<=max_counts;
      sb_signal<=sb_signal;
      sa_signal<=sa_signal;
      time_correction<=time_correction;

    when wtsf =>
      FIFO_WE<='1';
      event_number<=event_number;
      FIFO_CLR<='0';

      FIFO_DATA<=TSF; --writing time stamp fast

      max_counts<=max_counts;
      sb_signal<=sb_signal;
      sa_signal<=sa_signal;
      time_correction<=time_correction;

    when wdata =>
      FIFO_WE<='1';
      event_number<=event_number;
      FIFO_CLR<='0';

      FIFO_DATA<=D & event_number & ddata; --writing data


      max_counts<=max_counts;
      sb_signal<=sb_signal;
      sa_signal<=sa_signal;
      time_correction<=time_correction;

    when wtail =>
      FIFO_WE<='1';
      event_number<=std_logic_vector(unsigned(event_number)+1);
      FIFO_CLR<='0';

      FIFO_DATA<=T & event_number & time_correction & "0000000" & FIFO_AFULL; --writing tail

      max_counts<=max_counts;
      sb_signal<=sb_signal;
      sa_signal<=sa_signal;
      time_correction<=time_correction;

    when cl_fifo =>
      FIFO_WE<='0';
      event_number<=event_number;
      FIFO_CLR<='1';
      FIFO_DATA<=(others=>'0');

      max_counts<=0;
      sb_signal<=(others=>'0');
      sa_signal<=(others=>'0');
      time_correction<=(others=>'0');

    when others=> --same as reset state
      FIFO_WE<='0';
      event_number<=(others=>'0');
      FIFO_CLR<='1';
      FIFO_DATA<=(others=>'0');

      max_counts<=0;
      sb_signal<=(others=>'0');
      sa_signal<=(others=>'0');
      time_correction<=(others=>'0');

  end case;
end process;

NSTATE_PROC: process(cstate, counter, TS, FIFO_AFULL, FIFO_FULL, EN, CL)
begin
  case cstate is
    when rstate =>
        nstate<=idle;
    when idle =>
      IF FIFO_FULL ='1' THEN
        nstate<=idle;
      elsif CL='1' then
        nstate<=cl_fifo;
      elsif (TS='1') AND EN='1' THEN
        nstate<=whead;
      else
        nstate<=idle;
      end if;
    when whead =>
      IF FIFO_AFULL ='1' THEN
        nstate<=wtail;
      else
        nstate<=wtss;
      end if;
    when wtss =>
      nstate<=wtsf;
    when wtsf =>
      nstate<=wdata;
    when wdata =>
      if FIFO_AFULL ='1' THEN
        nstate<=wtail;
      elsif counter < max_counts then
        nstate<=wdata;
      else
        nstate<=wtail;
      end if;
    when wtail =>
        nstate<=idle;
    when cl_fifo =>
        nstate<=idle;
    when others=>
        nstate<=rstate;
  end case;
end process;

end Behavioral;
