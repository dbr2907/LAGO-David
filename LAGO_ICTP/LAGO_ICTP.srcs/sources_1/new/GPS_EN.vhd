----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.02.2019 12:34:54
-- Design Name: 
-- Module Name: GPS_EN - Behavioral
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

entity GPS_EN is
    Port ( PPSIn : in STD_LOGIC;
           CLK: in STD_LOGIC;
           PPSOut : out STD_LOGIC;
           Fix : out STD_LOGIC);
end GPS_EN;

architecture Behavioral of GPS_EN is

type FSM is (FIRST, FIXH);
signal Estado: FSM;
begin


process(CLK)
begin
    if(rising_edge(CLK)) then    
        case Estado is
            when FIRST =>
                Fix <= '0';    
                if (PPSIn = '1') then
                    Estado <= FIXH;
                else
                    Estado <= FIRST;
                end if;
            when FIXH =>
                Fix <= '1'; 
                Estado <= FIXH;
            when others => 
                Fix <= '0';
                Estado <= FIRST;
        end case;
    end if;  
end process;

PPSOut<=PPSIn;

end Behavioral;