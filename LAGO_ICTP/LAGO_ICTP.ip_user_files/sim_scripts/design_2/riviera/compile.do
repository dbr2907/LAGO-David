vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/FPGALIB
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_3
vlib riviera/axi_vip_v1_1_3
vlib riviera/processing_system7_vip_v1_0_5
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_17
vlib riviera/fifo_generator_v13_2_2
vlib riviera/axi_data_fifo_v2_1_16
vlib riviera/axi_crossbar_v2_1_18
vlib riviera/xlslice_v1_0_1
vlib riviera/xlconcat_v2_1_1
vlib riviera/xlconstant_v1_1_5
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_fifo_v1_0_11
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_19
vlib riviera/axi_sg_v4_1_10
vlib riviera/axi_dma_v7_1_18
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_uartlite_v2_0_21
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_19
vlib riviera/axi_protocol_converter_v2_1_17

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap FPGALIB riviera/FPGALIB
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 riviera/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 riviera/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 riviera/processing_system7_vip_v1_0_5
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_17 riviera/axi_register_slice_v2_1_17
vmap fifo_generator_v13_2_2 riviera/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 riviera/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 riviera/axi_crossbar_v2_1_18
vmap xlslice_v1_0_1 riviera/xlslice_v1_0_1
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_11 riviera/lib_fifo_v1_0_11
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_19 riviera/axi_datamover_v5_1_19
vmap axi_sg_v4_1_10 riviera/axi_sg_v4_1_10
vmap axi_dma_v7_1_18 riviera/axi_dma_v7_1_18
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_uartlite_v2_0_21 riviera/axi_uartlite_v2_0_21
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 riviera/axi_gpio_v2_0_19
vmap axi_protocol_converter_v2_1_17 riviera/axi_protocol_converter_v2_1_17

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work FPGALIB -93 \
"../../../bd/design_2/ipshared/6737/src/mems_pkg.vhdl" \
"../../../bd/design_2/ipshared/6737/src/numeric_pkg.vhdl" \
"../../../bd/design_2/ipshared/6737/src/sync_pkg.vhdl" \
"../../../bd/design_2/ipshared/6737/src/FIFO.vhdl" \
"../../../bd/design_2/ipshared/6737/src/SimpleDualPortRAM.vhdl" \
"../../../bd/design_2/ipshared/6737/src/TrueDualPortRAM.vhdl" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ipshared/6737/hdl/comblock_v1_0_AXIL_REGS.vhd" \
"../../../bd/design_2/ipshared/6737/hdl/comblock_v1_0_AXIF_DRAM.vhd" \
"../../../bd/design_2/ipshared/6737/hdl/comblock_v1_0_AXIF_FIFO.vhd" \

vcom -work FPGALIB -93 \
"../../../bd/design_2/ipshared/6737/src/ffchain.vhdl" \
"../../../bd/design_2/ipshared/6737/src/gray_sync.vhdl" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ipshared/6737/src/comblock.vhd" \
"../../../bd/design_2/ipshared/6737/hdl/comblock_v1_0.vhd" \
"../../../bd/design_2/ip/design_2_comblock_0_0/sim/design_2_comblock_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ip/design_2_proc_sys_reset_1_0/sim/design_2_proc_sys_reset_1_0.vhd" \
"../../../bd/design_2/ip/design_2_util_ds_buf_0_1/util_ds_buf.vhd" \
"../../../bd/design_2/ip/design_2_util_ds_buf_0_1/sim/design_2_util_ds_buf_0_1.vhd" \
"../../../bd/design_2/ip/design_2_util_ds_buf_1_0/sim/design_2_util_ds_buf_1_0.vhd" \
"../../../bd/design_2/ip/design_2_proc_sys_reset_0_0/sim/design_2_proc_sys_reset_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_processing_system7_0_0/sim/design_2_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_xbar_0/sim/design_2_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ipshared/a1e0/Decimate_N.vhd" \
"../../../bd/design_2/ipshared/a1e0/Decimate_by2.vhd" \
"../../../bd/design_2/ipshared/a1e0/ADC_Decimator.vhd" \
"../../../bd/design_2/ip/design_2_ADC_Decimator_0_0/sim/design_2_ADC_Decimator_0_0.vhd" \
"../../../bd/design_2/ip/design_2_DAC_CTRL1v1_0_0/sim/design_2_DAC_CTRL1v1_0_0.vhd" \
"../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/ipshared/b9df/src/histo_counter.vhd" \
"../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/src/Histo1_histo_counter_0_0/sim/Histo1_histo_counter_0_0.vhd" \

vlog -work xlslice_v1_0_1  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ip/design_2_Hist_Gen_Block_0_0/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/src/Histo1_xlslice_0_0/sim/Histo1_xlslice_0_0.v" \
"../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/src/Histo1_xlslice_0_1/sim/Histo1_xlslice_0_1.v" \
"../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/src/Histo1_reg_bit_1_0/sim/Histo1_reg_bit_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/ipshared/2902/src/Top.vhd" \
"../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/src/Histo1_SBRAM_wen_mgr_0_0/sim/Histo1_SBRAM_wen_mgr_0_0.vhd" \
"../../../bd/design_2/ipshared/88e5/src/Histo1.vhd" \
"../../../bd/design_2/ipshared/88e5/src/Histo1_wrapper.vhd" \
"../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/sim/design_2_Hist_Gen_Block_0_0.vhd" \
"../../../bd/design_2/ip/design_2_FIFOMGR_0_0/sim/design_2_FIFOMGR_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_ctrl_reg_0/sim/design_2_ctrl_reg_0.v" \
"../../../bd/design_2/ip/design_2_ctrl_reg1_0/sim/design_2_ctrl_reg1_0.v" \
"../../../bd/design_2/ip/design_2_ctrl_reg2_0/sim/design_2_ctrl_reg2_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ip/design_2_mstrigger_0_0/sim/design_2_mstrigger_0_0.vhd" \
"../../../bd/design_2/ip/design_2_timer_0_0/sim/design_2_timer_0_0.vhd" \
"../../../bd/design_2/ip/design_2_timestamp_1_0/sim/design_2_timestamp_1_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_xlconcat_0_1/sim/design_2_xlconcat_0_1.v" \
"../../../bd/design_2/ip/design_2_xlconcat_1_0/sim/design_2_xlconcat_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ipshared/01f9/sources_1/imports/axi_trigger_gen_m3_v1_0/new/Trigger_m4.vhd" \
"../../../bd/design_2/ipshared/01f9/sources_1/imports/axi_trigger_gen_m3_v1_0/imports/hdl/AXI_Trigger_gen_m4_v1_0_S00_AXI.vhd" \
"../../../bd/design_2/ipshared/01f9/sources_1/imports/axi_trigger_gen_m3_v1_0/imports/hdl/AXI_Trigger_gen_m4_v1_0.vhd" \
"../../../bd/design_2/ip/design_2_AXI_Trigger_gen_m4_0_0/sim/design_2_AXI_Trigger_gen_m4_0_0.vhd" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_FIFO_SIZE_0/sim/design_2_FIFO_SIZE_0.v" \
"../../../bd/design_2/ip/design_2_OLD_fifo_0/sim/design_2_OLD_fifo_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_11 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_19 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec8a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_10 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/6e5f/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_18 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/6bfe/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ip/design_2_axi_dma_0_0/sim/design_2_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/sim/bd_ebcc.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5160/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_7/sim/bd_ebcc_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/acc2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_11/sim/bd_ebcc_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/28cb/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_12/sim/bd_ebcc_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_8/sim/bd_ebcc_sawn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_9/sim/bd_ebcc_swn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_10/sim/bd_ebcc_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/afa8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_4/sim/bd_ebcc_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/4521/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_5/sim/bd_ebcc_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/d1fc/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_6/sim/bd_ebcc_s00sic_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_0/sim/bd_ebcc_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_1/sim/bd_ebcc_psr0_0.vhd" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_2/sim/bd_ebcc_psr_aclk_0.vhd" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_3/sim/bd_ebcc_psr_aclk1_0.vhd" \
"../../../bd/design_2/ip/design_2_axi_smc_0/sim/design_2_axi_smc_0.vhd" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_empty_0/sim/design_2_empty_0.v" \
"../../../bd/design_2/ip/design_2_full_0/sim/design_2_full_0.v" \
"../../../bd/design_2/ipshared/9ce3/tlast_gen.v" \
"../../../bd/design_2/ip/design_2_tlast_gen_0_0/sim/design_2_tlast_gen_0_0.v" \
"../../../bd/design_2/ip/design_2_xlconcat_0_0/sim/design_2_xlconcat_0_0.v" \
"../../../bd/design_2/ip/design_2_xlconstant_0_0/sim/design_2_xlconstant_0_0.v" \
"../../../bd/design_2/ip/design_2_xlconstant_1_0/sim/design_2_xlconstant_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ip/design_2_adc_controller_0_0/sim/design_2_adc_controller_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_clk_wiz_0_0/design_2_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_2/ip/design_2_clk_wiz_0_0/design_2_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ip/design_2_util_ds_buf_0_0/sim/design_2_util_ds_buf_0_0.vhd" \
"../../../bd/design_2/ip/design_2_util_ds_buf_2_0/sim/design_2_util_ds_buf_2_0.vhd" \
"../../../bd/design_2/ip/design_2_util_ds_buf_3_0/sim/design_2_util_ds_buf_3_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_uartlite_v2_0_21 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/a15e/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ip/design_2_axi_uartlite_0_0/sim/design_2_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -93 \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ip/design_2_axi_gpio_0_0/sim/design_2_axi_gpio_0_0.vhd" \
"../../../bd/design_2/ip/design_2_GPS_EN_0_0/sim/design_2_GPS_EN_0_0.vhd" \
"../../../bd/design_2/sim/design_2.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_clk_wiz_0_1/design_2_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/design_2/ip/design_2_clk_wiz_0_1/design_2_clk_wiz_0_1.v" \

vlog -work axi_protocol_converter_v2_1_17  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/verilog" "+incdir+../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_auto_pc_4/sim/design_2_auto_pc_4.v" \
"../../../bd/design_2/ip/design_2_auto_pc_3/sim/design_2_auto_pc_3.v" \
"../../../bd/design_2/ip/design_2_auto_pc_2/sim/design_2_auto_pc_2.v" \
"../../../bd/design_2/ip/design_2_auto_pc_1/sim/design_2_auto_pc_1.v" \
"../../../bd/design_2/ip/design_2_auto_pc_0/sim/design_2_auto_pc_0.v" \
"../../../bd/design_2/ip/design_2_auto_pc_5/sim/design_2_auto_pc_5.v" \

vlog -work xil_defaultlib \
"glbl.v"

