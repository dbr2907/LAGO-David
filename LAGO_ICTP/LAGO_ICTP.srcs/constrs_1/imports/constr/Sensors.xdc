set_property IOSTANDARD LVCMOS33 [get_ports IIC0_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports IIC0_sda_io]
set_property PACKAGE_PIN Y10 [get_ports IIC0_sda_io]
set_property PACKAGE_PIN Y11 [get_ports IIC0_scl_io]

#MAX5216
#set_property IOSTANDARD LVCMOS33 [get_ports {SS_0[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports RLED_0]
#set_property IOSTANDARD LVCMOS33 [get_ports SCK_0]
#set_property IOSTANDARD LVCMOS33 [get_ports SDATA_0]
#set_property PACKAGE_PIN W12 [get_ports {SS_0[0]}]
#set_property PACKAGE_PIN W8 [get_ports SCK_0]
#set_property PACKAGE_PIN W11 [get_ports SDATA_0]
#set_property PACKAGE_PIN T22 [get_ports RLED_0]


#AD7303
set_property IOSTANDARD LVCMOS33 [get_ports {SS_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports SCK_0]
set_property IOSTANDARD LVCMOS33 [get_ports SDATA_0]
set_property IOSTANDARD LVCMOS33 [get_ports RLED_0]
set_property PACKAGE_PIN W12 [get_ports {SS_0[0]}]
set_property PACKAGE_PIN W8 [get_ports SCK_0]
set_property PACKAGE_PIN W11 [get_ports SDATA_0]
set_property PACKAGE_PIN T22 [get_ports RLED_0]

#REAL TIME CLOCK
#set_property IOSTANDARD LVCMOS33 [get_ports IIC0_scl_io]
#set_property IOSTANDARD LVCMOS33 [get_ports IIC0_sda_io]
#set_property PACKAGE_PIN AA4 [get_ports IIC0_sda_io] #JC2_N
#set_property PACKAGE_PIN Y4 [get_ports IIC0_scl_io] #JC2_P


#set_property IOSTANDARD LVCMOS33 [get_ports {rtc_rst[0]}]
#set_property PACKAGE_PIN Y11 [get_ports {rtc_rst[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports rtc_1hz]
#set_property PACKAGE_PIN AA11 [get_ports rtc_1hz]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets PPS_In_0]


set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_txd]
set_property PACKAGE_PIN Y4 [get_ports uart_rtl_txd]
set_property PACKAGE_PIN AB7 [get_ports PPSIn_0]
set_property IOSTANDARD LVCMOS33 [get_ports PPSIn_0]

set_property PACKAGE_PIN AB6 [get_ports uart_rtl_rxd]

set_property IOSTANDARD LVCMOS33 [get_ports {rtc_rst[0]}]
set_property PACKAGE_PIN AA9 [get_ports {rtc_rst[0]}]
