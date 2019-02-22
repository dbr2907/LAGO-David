----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2018 03:16:38 PM
-- Design Name: 
-- Module Name: Top - Behavioral
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

entity Top is
Generic( latency_count : integer :=1;
         web_bits : integer:=4;
         addr_bits : integer :=32;
         data_bits : integer :=32);
Port ( clk : in std_logic;
       rst : in std_logic;
       data_valid : in STD_LOGIC;
       
       
       en : in std_logic;

       in_addr : in STD_LOGIC_VECTOR (addr_bits-1 downto 0);
       
       doutb : in std_logic_vector (data_bits-1 downto 0);
--           last_addr : in STD_LOGIC_VECTOR (addr_bits-1 downto 0);

--       addb : out std_logic_vector (addr_bits -1 downto 0);
       

              
       dinb : out std_logic_vector (data_bits-1 downto 0);
       
       rdy : out std_logic;
                
--       enb : out STD_LOGIC;
       
       web : out STD_LOGIC_VECTOR(web_bits -1 downto 0));
end Top;

architecture Behavioral of Top is

--signal addb_signal : std_logic_vector(addr_bits -1 downto 0);
signal dinb_signal : std_logic_vector(data_bits-1 downto 0 );
signal rdy_signal, enb_signal : std_logic;
signal web_signal : std_logic_vector(web_bits-1 downto 0);

--type states is (idle, read, add_write);
type states is (read, add_write);
signal curr_state, next_state : states;

signal latency : integer range 0 to latency_count;

signal temp_addr : std_logic_vector(addr_bits -1 downto 0);
signal temp_count : std_logic_vector(data_bits-1 downto 0);

begin

process(clk, rst)
begin
    if rst='0' then
        curr_state<=read;
    elsif rising_edge(clk) then
        curr_state<=next_state;
        
--        addb<=addb_signal;
        dinb<=dinb_signal;
        rdy<=rdy_signal;
        web<=web_signal;
--        enb<=enb_signal;
    end if;
end process;

process(curr_state)
begin
    case curr_state is
--        when idle=> 
----            addb_signal<=temp_addr;
--            dinb_signal<=(others=>'0');
            
--            web_signal<=(others=>'0');
--            rdy_signal<='0';
            
----            latency<=0;
                        
        when read =>   
--            addb_signal<=temp_addr;
            dinb_signal<=(others=>'0');
            
            web_signal<=(others=>'0');
            rdy_signal<='1';
            
--            latency<=latency+1;
        when add_write =>
--            addb_signal<=temp_addr;
            dinb_signal<=std_logic_vector(unsigned(doutb)+1);
            
            web_signal<=(others=>'1');
            rdy_signal<='0';  
            
--            latency<=0;
    end case;

end process;

process(curr_state, data_valid, en)
begin
    case curr_state is
--        when idle=>
--            if data_valid='1' and en='1' then
--                next_state<=read;
--            else
--                next_state<=idle;
--            end if;
        when read=>
            if data_valid='1' and en='1' then 
                next_state<=add_write;
            else 
                next_state<=read;
            end if;
            
        when add_write =>
            next_state<=read;
    end case;

end process;




--enb_signal<=en;
--addb_signal<=in_addr;

end Behavioral;
