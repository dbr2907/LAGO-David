library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package array_pkg is
  type srow is array (natural range <>) of signed(8 downto 0);
  type urow is array (natural range <>) of unsigned(7 downto 0);
  type smatrix is array(3 downto 0) of srow(3 downto 0);
  -- type smatrix is array(natural range <>, natural range <>) of signed(8 downto 0);
end array_pkg;
