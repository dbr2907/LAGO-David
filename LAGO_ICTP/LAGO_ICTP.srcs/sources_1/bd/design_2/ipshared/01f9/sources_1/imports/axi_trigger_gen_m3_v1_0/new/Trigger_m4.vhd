----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/06/2017 12:52:48 PM
-- Design Name:
-- Module Name: Trigger_m2 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Trigger_m4 is
    generic ( Trig_data_width : integer	:= 16);
    Port (  clk          : in STD_LOGIC;
            resetn       : in STD_LOGIC;
            din          : in STD_LOGIC_VECTOR (Trig_data_width - 1 downto 0);
            data_valid   : in STD_LOGIC;                                        ----- 8/06/2017
            trig_level   : in STD_LOGIC_VECTOR (Trig_data_width - 1 downto 0);
            trig_edge_rising : in STD_LOGIC;
            trig         : out STD_LOGIC;
            delta        : in STD_LOGIC_VECTOR (Trig_data_width - 1 downto 0);
            fifo_full    : in STD_LOGIC;
            fifo_empty   : in STD_LOGIC;
            dma_tready   : in STD_LOGIC;

            auto_trigger : in STD_LOGIC; -- 05/09/2018 AUTO TRIGGER ATTEMP

            --debug output
            debug_state : out std_logic_vector(1 downto 0);
            --end of debug output

            fifo_m_axis_tready  : out STD_LOGIC;
            count_val    : out STD_LOGIC_VECTOR (Trig_data_width - 1 downto 0);
            trig_real    : out STD_LOGIC;
            fifo_we      : out STD_LOGIC);
end Trigger_m4;

architecture Behavioral of Trigger_m4 is
    signal Threshold_new : STD_LOGIC;
    signal Threshold_old : STD_LOGIC;
    signal trig_vartual : STD_LOGIC;
    signal trig_sig : STD_LOGIC;
    signal cnt_val      : STD_LOGIC_VECTOR (Trig_data_width - 1 downto 0);
    signal fifo_we_sig  : STD_LOGIC;

    type state_type is (st_reset, st_waitTrig, st_DelayDelta, st_waitFifoEmpty);
    signal state   : state_type;

begin

    fifo_m_axis_tready <= dma_tready or fifo_full;

    process(clk, resetn, din, trig_level)
    begin
        if(rising_edge(clk)) then
            if(data_valid = '1') then           ----- 8/06/2017
                if(din >= trig_level) then
                    Threshold_new <= '1';
                else
                    Threshold_new <= '0';
                end if;
            end if;                             ----- 8/06/2017
        end if;
    end process;

    process(clk, resetn, Threshold_new)
    begin
        if(rising_edge(clk)) then
            if(data_valid = '1') then           ----- 8/06/2017
                Threshold_old <= Threshold_new;
            end if;
        end if;                                 ----- 8/06/2017
    end process;

    trig_vartual <= '1' when ((auto_trigger ='1') and (state = st_waitTrig)) else --9/05/2018 not implemented auto trigger yet
                    Threshold_new and (not Threshold_old) when ((trig_edge_rising = '1') and resetn ='1') else
                    (not Threshold_new and Threshold_old) when ((trig_edge_rising = '0') and resetn ='1') else
                    '0';

--- State machine
                process(clk, resetn, fifo_full, fifo_empty, trig_vartual, cnt_val, delta)
                begin
                    if(resetn = '0') then
                        state <= st_reset;
                    elsif(rising_edge(clk)) then
                        -- if(data_valid = '1') then               ----- 8/06/2017
                            case state is
                                when st_reset =>
                                    state <= st_waitTrig;
                                    cnt_val <= (others => '0');

                                when st_waitTrig =>
                                    if((trig_vartual = '1') and (fifo_full = '1')) then
                                        state <= st_DelayDelta;
                                        cnt_val <= (others => '0');
                                    else
                                        state <= st_waitTrig;
                                    end if;
                                when st_DelayDelta =>
                                    if(cnt_val < delta) then
                                        state <= st_DelayDelta;
                                        if(data_valid='1') then
                                          cnt_val <= cnt_val + '1';
                                        end if;
                                    else
                                        state <= st_waitFifoEmpty;
                                    end if;
                                when st_waitFifoEmpty =>
                                    if(fifo_empty = '1') then
                                        state <= st_waitTrig;
                                    else
                                        state <= st_waitFifoEmpty;
                                    end if;
                                when others =>
                                    state <= st_reset;
                            end case;
                        -- end if;                             ----- 8/06/2017
                    end if;
                end process;

            -- outputs
                process(state)
                begin
                    case state is
                        when st_reset =>
                            trig_sig <= '0';
                            fifo_we_sig <= '0';
                        when st_waitTrig =>
                            fifo_we_sig <= '1';
                            trig_sig <= '0';
                        when st_DelayDelta =>
                            fifo_we_sig <= '1';
                            trig_sig <= '0';
                        when st_waitFifoEmpty =>
                            fifo_we_sig <= '0';
                            trig_sig <= '1';
                        when others =>
                            fifo_we_sig <= '1';
                            trig_sig <= '0';
                    end case;
                end process;
            ------------------

    fifo_we <= fifo_we_sig and data_valid;
    trig <= trig_sig;
    count_val <= cnt_val;
    trig_real <= trig_vartual;

--Debug output for testing with ila
--     type state_type is (st_reset, st_waitTrig, st_DelayDelta, st_waitFifoEmpty);

    debug_state<="00" when state=st_reset else
                 "01" when state=st_waitTrig else
                 "10" when state=st_DelayDelta else
                 "11" when state=st_waitFifoEmpty;

end Behavioral;
