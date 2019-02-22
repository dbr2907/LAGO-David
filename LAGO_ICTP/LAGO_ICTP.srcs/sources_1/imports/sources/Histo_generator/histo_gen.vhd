----------------------------------------------------------------------------------
-- Company:MLAB
-- Engineer:Lgarcia
--
-- Create Date: 02/23/2018 03:16:38 PM
-- Design Name:histo_gen.vhd
-- Module Name: Top - Behavioral
-- Project Name: Histo_generator
-- Target Devices:
-- Tool Versions:
-- Description: Histogram generator block to be used with a ram block
--
-- Dependencies:
-- RAM block or comblock
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

entity histo_gen is
Generic( reg_bits : integer :=32;
         count_res : integer :=32;
         latency_count : integer :=1;
         ram_we_bits : integer:=4;
         addr_bits : integer :=32;
         data_bits : integer :=32);
Port ( clk : in std_logic;
       rst : in std_logic;

       in_addr : in STD_LOGIC_VECTOR (addr_bits-1 downto 0);
       out_addr : out STD_LOGIC_VECTOR(addr_bits-1 downto 0);

       data_valid : in STD_LOGIC;

       ctrl_reg : in STD_LOGIC_VECTOR(reg_bits-1 downto 0);

       n : in STD_LOGIC_VECTOR(count_res-1 downto 0);

       ram_dout_i : in std_logic_vector (data_bits-1 downto 0);
       ram_din_o : out std_logic_vector (data_bits-1 downto 0);

       curr_count : out STD_LOGIC_VECTOR(count_res -1 downto 0);
       done_reg : out STD_LOGIC_VECTOR(reg_bits-1 downto 0);

       rdy : out std_logic;
       ram_we : out STD_LOGIC_VECTOR(ram_we_bits -1 downto 0));
end histo_gen;

architecture Behavioral of histo_gen is

  component histo_counter is
      Generic(count_res : integer :=32);
      Port ( clk : in STD_LOGIC;
             rst : in STD_LOGIC;
             num : in STD_LOGIC_VECTOR (count_res-1 downto 0);
             en : in STD_LOGIC;

             curr_count : out STD_LOGIC_VECTOR(count_res -1 downto 0);
             cen : out STD_LOGIC;
             done : out STD_LOGIC);
  end component histo_counter;

  component wen_mgr is
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
         dinb : out std_logic_vector (data_bits-1 downto 0);

         rdy : out std_logic;

         web : out STD_LOGIC_VECTOR(web_bits -1 downto 0));
  end component wen_mgr;

  signal en_signal : std_logic;
  signal done_signal : std_logic;
begin
  out_addr<=in_addr;

  done_reg(reg_bits-1 downto 1)<=(others =>'0');
  done_reg(0)<=done_signal;

  histo_counter_0: histo_counter
  generic map(
        count_res =>count_res
  )
  port map(
         clk => data_valid,
         rst => ctrl_reg(0),
         num => n,
         en => ctrl_reg(1),
         curr_count => curr_count,
         cen => en_signal,
         done => done_signal
    );

  SBRAM_wen_mgr_0: wen_mgr
  generic map(
           latency_count => latency_count,
           web_bits => ram_we_bits,
           addr_bits => addr_bits,
           data_bits => data_bits
  )
  port map(
         clk => clk,
         rst => rst,
         data_valid => data_valid,
         en => en_signal,
         in_addr => in_addr,
         doutb => ram_dout_i,
         dinb => ram_din_o,
         rdy => rdy,
         web => ram_we
  );
end Behavioral;
