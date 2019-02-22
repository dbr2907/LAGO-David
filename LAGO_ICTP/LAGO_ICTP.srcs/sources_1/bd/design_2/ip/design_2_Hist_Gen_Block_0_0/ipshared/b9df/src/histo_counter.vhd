----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2018 10:18:48 AM
-- Design Name: 
-- Module Name: histo_counter - Behavioral
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

entity histo_counter is
    Generic(count_res : integer :=32);
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           num : in STD_LOGIC_VECTOR (count_res-1 downto 0);
           en : in STD_LOGIC;
           
           curr_count : out STD_LOGIC_VECTOR(count_res -1 downto 0);
           cen : out STD_LOGIC;
           done : out STD_LOGIC);
end histo_counter;

architecture Behavioral of histo_counter is

signal max_count, count : unsigned (count_res-1 downto 0);
begin
process(clk, rst, en)
begin
    if rst='0' then
        count<=(others=>'0');
        max_count<=unsigned(num);
        cen<='0';
        done<='0';
    elsif rising_edge(clk) then
        if en='1' and count<max_count then
            count<=count +1;
            cen<='1';
        elsif count=max_count then
            cen<='0';
            done<='1';            
        end if;
    end if;
end process;


curr_count<=std_logic_vector(count);

end Behavioral;
