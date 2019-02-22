----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2017 03:41:12 PM
-- Design Name: 
-- Module Name: ADC_Decimator - Behavioral
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
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADC_Decimator is
    generic( top_lvl_Din_width          : integer := 16;
             top_lvl_Dout_width         : integer := 16;
             top_lvl_Deci_factor_width  :  integer := 16);
    Port ( clk_in   : in STD_LOGIC;
           resetn    : in STD_LOGIC;
           Din      : in STD_LOGIC_VECTOR (top_lvl_Din_width - 1 downto 0);
           N        : in STD_LOGIC_VECTOR (top_lvl_Deci_factor_width - 1 downto 0);
           clk_out  : out STD_LOGIC;
           Dout     : out STD_LOGIC_VECTOR (top_lvl_Dout_width - 1 downto 0);
           Decim_data_valid : out STD_LOGIC;
           D_sum    : out STD_LOGIC_VECTOR (top_lvl_Dout_width - 1 downto 0));
end ADC_Decimator;

architecture Behavioral of ADC_Decimator is
--/* Component Declaration */------------------------------
  COMPONENT Decimate_N IS
  Generic(Din_width         : integer := 9;
          Dout_width        : integer := 16;
          Deci_factor_width :  integer := 16);
  PORT (
    clk_in  : IN STD_LOGIC;
    resetn   : IN STD_LOGIC;
    N       : IN STD_LOGIC_VECTOR(Deci_factor_width - 1 DOWNTO 0);
    Din     : IN STD_LOGIC_VECTOR(Din_width - 1 DOWNTO 0);
    clk_out : OUT STD_LOGIC;
    D_sum   : OUT STD_LOGIC_VECTOR(Dout_width - 1 DOWNTO 0);
    Decim_data_valid : out STD_LOGIC;
    Dout    : OUT STD_LOGIC_VECTOR(Dout_width - 1 DOWNTO 0)
  );
  END COMPONENT Decimate_N;
  
  COMPONENT Decimate_by2 is
      generic(adc_din_width : integer := 16;
              decim_dout_width :integer := 9);
      Port ( clk : in STD_LOGIC;
             resetn : in STD_LOGIC;
             din : in STD_LOGIC_VECTOR (adc_din_width - 1 downto 0);
             dout : out STD_LOGIC_VECTOR (decim_dout_width - 1 downto 0));
   end COMPONENT Decimate_by2;

--/* Signal Definition */------------------------------  
  signal Din_sig    : std_logic_vector(top_lvl_Din_width/2 downto 0);
  signal N_sig      : std_logic_vector(top_lvl_Deci_factor_width - 1 downto 0);
  
begin

    N_sig       <= '0' & N(top_lvl_Deci_factor_width - 1 downto 1);

--    process(clk_in, reset, Din)
--    begin
--        if(rising_edge(clk_in)) then
--            if(reset = '1') then
--                Din_sig <= (others => '0');
--            else
--                Din_sig <= Din_MSB + Din_LSB;
--            end if;
--        end if;
--    end process; 
Decimate_by2_init:  COMPONENT Decimate_by2
    generic map(    adc_din_width       => top_lvl_Din_width,
                    decim_dout_width    => top_lvl_Din_width/2 + 1)
    Port map(   clk     => clk_in,
                resetn  => resetn,
                din     => Din,
                dout    => Din_sig
           );


Decimate_N_init: component Decimate_N
     Generic map(   Din_width           => top_lvl_Din_width/2 + 1,
                    Dout_width          => top_lvl_Dout_width,
                    Deci_factor_width   => top_lvl_Deci_factor_width)
     port map (     clk_in      => clk_in,
                    resetn       => resetn,
                    N           => N_sig,
                    Din         => Din_sig,
                    clk_out     => clk_out,
                    D_sum       => D_sum,
                    Decim_data_valid => Decim_data_valid,
                    Dout        => Dout
     );

end Behavioral;
