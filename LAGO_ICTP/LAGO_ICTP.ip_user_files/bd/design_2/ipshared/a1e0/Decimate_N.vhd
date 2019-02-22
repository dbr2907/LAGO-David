----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2017 07:24:58 PM
-- Design Name: 
-- Module Name: Decimate_N - Behavioral
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

entity Decimate_N is
    Generic(Din_width : integer := 8;
            Dout_width : integer := 16;
            Deci_factor_width :  integer := 16);
    Port ( clk_in   : in STD_LOGIC;
       resetn    : in STD_LOGIC;
       N        : in STD_LOGIC_VECTOR (15 downto 0); --this width allows a max N = 2^16 
       Din      : in STD_LOGIC_VECTOR (Din_width - 1 downto 0);
       clk_out  : out STD_LOGIC;
       D_sum    : out STD_LOGIC_VECTOR (Dout_width - 1 downto 0);  --this width correspond to max N = 2^16 !?
       Decim_data_valid : out STD_LOGIC;
       Dout     : out STD_LOGIC_VECTOR (Dout_width - 1 downto 0));
end Decimate_N;

architecture Behavioral of Decimate_N is
    signal cnt : STD_LOGIC_VECTOR (Dout_width - 1 downto 0):= (others => '0');
    signal tmp_clk : STD_LOGIC:=  '0';
    signal tmp_sum : STD_LOGIC_VECTOR (Dout_width - 1 downto 0):= (others => '0');
    signal all_zeros : STD_LOGIC_VECTOR (Dout_width - 1 downto 0):= (others => '0');
begin

    all_zeros <= (others => '0');
    
    process(clk_in, N, cnt)
    begin
        if(rising_edge(clk_in)) then
			if(resetn = '0') then
				cnt <= (others => '0');
				tmp_clk <= '0';
				tmp_sum <= (others => '0');  ---------------------				
				D_sum <= (others => '0');							
				
			else
				if(cnt = N - 1) then
					cnt <= (others => '0');
				else
					cnt <= cnt + '1';
				end if;
 

--				if(cnt < N(Deci_factor_width - 1 downto 1)) then			-- considered the begining (power on)
--					tmp_clk <= '1';---------------------
--				else 
--					tmp_clk <= '0';---------------------
--				end if;


				if( cnt = all_zeros ) then       ---- can't use (others => '0') inside if
					tmp_sum <= all_zeros(Dout_width - 1 downto Din_width) & Din;
					D_sum <= tmp_sum;
					Decim_data_valid <= '1';
				else
					tmp_sum <= tmp_sum + Din;
					Decim_data_valid <= '0';
				end if;


				
			end if;
        end if;
    end process;
    
    Dout <= tmp_sum;
    clk_out <= tmp_clk;

end Behavioral;
