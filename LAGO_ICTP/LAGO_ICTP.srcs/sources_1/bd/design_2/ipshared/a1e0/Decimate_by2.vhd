----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/07/2017 01:58:30 PM
-- Design Name: 
-- Module Name: Decimate_by2 - Behavioral
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

entity Decimate_by2 is
        generic(    adc_din_width : integer := 16;
                    decim_dout_width :integer := 9);
        Port (  clk : in STD_LOGIC;
                resetn : in STD_LOGIC;
                din : in STD_LOGIC_VECTOR (adc_din_width - 1 downto 0);
                dout : out STD_LOGIC_VECTOR (decim_dout_width - 1 downto 0));
end Decimate_by2;

architecture Behavioral of Decimate_by2 is

    signal Din_MSB : STD_LOGIC_VECTOR(decim_dout_width - 1 downto 0);
    signal Din_LSB : STD_LOGIC_VECTOR(decim_dout_width - 1 downto 0);
    
begin
    
    Din_MSB <= '0' & din(adc_din_width - 1 downto adc_din_width/2); 
    Din_LSB <= '0' & din(adc_din_width/2 - 1 downto 0); 
    
    process(clk, resetn, din)
    begin
        if(rising_edge(clk)) then
            if( resetn = '0') then
                dout <= (others => '0');
            else
                dout <= Din_MSB + Din_LSB;
            end if;
        end if;
    end process;

end Behavioral;
