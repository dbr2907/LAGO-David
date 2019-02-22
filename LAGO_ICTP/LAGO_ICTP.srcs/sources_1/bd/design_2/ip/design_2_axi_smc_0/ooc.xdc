# aclk {FREQ_HZ 250000000 CLK_DOMAIN design_2_CLK_IN1_D_clk_n PHASE 0.000} aclk1 {FREQ_HZ 50000000 CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0 PHASE 0.000}
# Clock Domain: design_2_CLK_IN1_D_clk_n
create_clock -name aclk -period 4.000 [get_ports aclk]
# Clock Domain: design_2_processing_system7_0_0_FCLK_CLK0
create_clock -name aclk1 -period 20.000 [get_ports aclk1]
# Generated clocks
