----------------------------------------------------------------------------------
-- Company: ICTP
-- Engineer: LUIS GARCIA
--
-- Create Date: 08/22/2018 11:42:46 AM
-- Design Name: diff_matrix
-- Module Name: mstrigger - Behavioral
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
entity diff_matrix is
  generic(data_width : integer :=16
  );
  port(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;

    din : IN STD_LOGIC_VECTOR(data_width-1 downto 0);

    om  : out smatrix

  );

end diff_matrix;

architecture Behavioral of diff_matrix is

signal x : srow(3 downto 0); --signed row of values
signal results : smatrix;

begin
  process(clk, rst)
  begin
    if rst='0' then
      x<=(others=>(others=>'0'));
    elsif rising_edge(clk) then
      x(0)<=signed('0'&din(7 downto 0));
      x(1)<=signed('0'&din(15 downto 8));
      x(2)<=x(0);
      x(3)<=x(1);
    end if;
  end process;

rows_loop: for i in 0 to 3 generate
  columns_loop: for j in 0 to 3 generate
    results(i)(j)<=x(i)-x(j);
  end generate columns_loop;
end generate rows_loop;

om<=results;

end Behavioral;
