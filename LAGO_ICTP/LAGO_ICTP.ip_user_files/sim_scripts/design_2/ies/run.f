-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/FPGALIB \
  "../../../bd/design_2/ipshared/6737/src/mems_pkg.vhdl" \
  "../../../bd/design_2/ipshared/6737/src/numeric_pkg.vhdl" \
  "../../../bd/design_2/ipshared/6737/src/sync_pkg.vhdl" \
  "../../../bd/design_2/ipshared/6737/src/FIFO.vhdl" \
  "../../../bd/design_2/ipshared/6737/src/SimpleDualPortRAM.vhdl" \
  "../../../bd/design_2/ipshared/6737/src/TrueDualPortRAM.vhdl" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ipshared/6737/hdl/comblock_v1_0_AXIL_REGS.vhd" \
  "../../../bd/design_2/ipshared/6737/hdl/comblock_v1_0_AXIF_DRAM.vhd" \
  "../../../bd/design_2/ipshared/6737/hdl/comblock_v1_0_AXIF_FIFO.vhd" \
-endlib
-makelib ies_lib/FPGALIB \
  "../../../bd/design_2/ipshared/6737/src/ffchain.vhdl" \
  "../../../bd/design_2/ipshared/6737/src/gray_sync.vhdl" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ipshared/6737/src/comblock.vhd" \
  "../../../bd/design_2/ipshared/6737/hdl/comblock_v1_0.vhd" \
  "../../../bd/design_2/ip/design_2_comblock_0_0/sim/design_2_comblock_0_0.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_proc_sys_reset_1_0/sim/design_2_proc_sys_reset_1_0.vhd" \
  "../../../bd/design_2/ip/design_2_util_ds_buf_0_1/util_ds_buf.vhd" \
  "../../../bd/design_2/ip/design_2_util_ds_buf_0_1/sim/design_2_util_ds_buf_0_1.vhd" \
  "../../../bd/design_2/ip/design_2_util_ds_buf_1_0/sim/design_2_util_ds_buf_1_0.vhd" \
  "../../../bd/design_2/ip/design_2_proc_sys_reset_0_0/sim/design_2_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_3 -sv \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_3 -sv \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_5 -sv \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_processing_system7_0_0/sim/design_2_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_17 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_16 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_18 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_xbar_0/sim/design_2_xbar_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ipshared/a1e0/Decimate_N.vhd" \
  "../../../bd/design_2/ipshared/a1e0/Decimate_by2.vhd" \
  "../../../bd/design_2/ipshared/a1e0/ADC_Decimator.vhd" \
  "../../../bd/design_2/ip/design_2_ADC_Decimator_0_0/sim/design_2_ADC_Decimator_0_0.vhd" \
  "../../../bd/design_2/ip/design_2_DAC_CTRL1v1_0_0/sim/design_2_DAC_CTRL1v1_0_0.vhd" \
  "../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/ipshared/b9df/src/histo_counter.vhd" \
  "../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/src/Histo1_histo_counter_0_0/sim/Histo1_histo_counter_0_0.vhd" \
-endlib
-makelib ies_lib/xlslice_v1_0_1 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ip/design_2_Hist_Gen_Block_0_0/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/src/Histo1_xlslice_0_0/sim/Histo1_xlslice_0_0.v" \
  "../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/src/Histo1_xlslice_0_1/sim/Histo1_xlslice_0_1.v" \
  "../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/src/Histo1_reg_bit_1_0/sim/Histo1_reg_bit_1_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/ipshared/2902/src/Top.vhd" \
  "../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/src/Histo1_SBRAM_wen_mgr_0_0/sim/Histo1_SBRAM_wen_mgr_0_0.vhd" \
  "../../../bd/design_2/ipshared/88e5/src/Histo1.vhd" \
  "../../../bd/design_2/ipshared/88e5/src/Histo1_wrapper.vhd" \
  "../../../bd/design_2/ip/design_2_Hist_Gen_Block_0_0/sim/design_2_Hist_Gen_Block_0_0.vhd" \
  "../../../bd/design_2/ip/design_2_FIFOMGR_0_0/sim/design_2_FIFOMGR_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_ctrl_reg_0/sim/design_2_ctrl_reg_0.v" \
  "../../../bd/design_2/ip/design_2_ctrl_reg1_0/sim/design_2_ctrl_reg1_0.v" \
  "../../../bd/design_2/ip/design_2_ctrl_reg2_0/sim/design_2_ctrl_reg2_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_mstrigger_0_0/sim/design_2_mstrigger_0_0.vhd" \
  "../../../bd/design_2/ip/design_2_timer_0_0/sim/design_2_timer_0_0.vhd" \
  "../../../bd/design_2/ip/design_2_timestamp_1_0/sim/design_2_timestamp_1_0.vhd" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_xlconcat_0_1/sim/design_2_xlconcat_0_1.v" \
  "../../../bd/design_2/ip/design_2_xlconcat_1_0/sim/design_2_xlconcat_1_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ipshared/01f9/sources_1/imports/axi_trigger_gen_m3_v1_0/new/Trigger_m4.vhd" \
  "../../../bd/design_2/ipshared/01f9/sources_1/imports/axi_trigger_gen_m3_v1_0/imports/hdl/AXI_Trigger_gen_m4_v1_0_S00_AXI.vhd" \
  "../../../bd/design_2/ipshared/01f9/sources_1/imports/axi_trigger_gen_m3_v1_0/imports/hdl/AXI_Trigger_gen_m4_v1_0.vhd" \
  "../../../bd/design_2/ip/design_2_AXI_Trigger_gen_m4_0_0/sim/design_2_AXI_Trigger_gen_m4_0_0.vhd" \
-endlib
-makelib ies_lib/xlconstant_v1_1_5 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_FIFO_SIZE_0/sim/design_2_FIFO_SIZE_0.v" \
  "../../../bd/design_2/ip/design_2_OLD_fifo_0/sim/design_2_OLD_fifo_0.v" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_11 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_19 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ec8a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_sg_v4_1_10 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/6e5f/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/axi_dma_v7_1_18 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/6bfe/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_axi_dma_0_0/sim/design_2_axi_dma_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/sim/bd_ebcc.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/5160/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_7/sim/bd_ebcc_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/acc2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_11/sim/bd_ebcc_m00s2a_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/28cb/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_12/sim/bd_ebcc_m00e_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/f90c/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_8/sim/bd_ebcc_sawn_0.sv" \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_9/sim/bd_ebcc_swn_0.sv" \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_10/sim/bd_ebcc_sbn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/afa8/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_4/sim/bd_ebcc_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/4521/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_5/sim/bd_ebcc_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/d1fc/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_6/sim/bd_ebcc_s00sic_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_0/sim/bd_ebcc_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_1/sim/bd_ebcc_psr0_0.vhd" \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_2/sim/bd_ebcc_psr_aclk_0.vhd" \
  "../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_3/sim/bd_ebcc_psr_aclk1_0.vhd" \
  "../../../bd/design_2/ip/design_2_axi_smc_0/sim/design_2_axi_smc_0.vhd" \
-endlib
-makelib ies_lib/util_vector_logic_v2_0_1 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_empty_0/sim/design_2_empty_0.v" \
  "../../../bd/design_2/ip/design_2_full_0/sim/design_2_full_0.v" \
  "../../../bd/design_2/ipshared/9ce3/tlast_gen.v" \
  "../../../bd/design_2/ip/design_2_tlast_gen_0_0/sim/design_2_tlast_gen_0_0.v" \
  "../../../bd/design_2/ip/design_2_xlconcat_0_0/sim/design_2_xlconcat_0_0.v" \
  "../../../bd/design_2/ip/design_2_xlconstant_0_0/sim/design_2_xlconstant_0_0.v" \
  "../../../bd/design_2/ip/design_2_xlconstant_1_0/sim/design_2_xlconstant_1_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_adc_controller_0_0/sim/design_2_adc_controller_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_clk_wiz_0_0/design_2_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/design_2/ip/design_2_clk_wiz_0_0/design_2_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_util_ds_buf_0_0/sim/design_2_util_ds_buf_0_0.vhd" \
  "../../../bd/design_2/ip/design_2_util_ds_buf_2_0/sim/design_2_util_ds_buf_2_0.vhd" \
  "../../../bd/design_2/ip/design_2_util_ds_buf_3_0/sim/design_2_util_ds_buf_3_0.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_uartlite_v2_0_21 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/a15e/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_axi_uartlite_0_0/sim/design_2_axi_uartlite_0_0.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_19 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_axi_gpio_0_0/sim/design_2_axi_gpio_0_0.vhd" \
  "../../../bd/design_2/ip/design_2_GPS_EN_0_0/sim/design_2_GPS_EN_0_0.vhd" \
  "../../../bd/design_2/sim/design_2.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_clk_wiz_0_1/design_2_clk_wiz_0_1_clk_wiz.v" \
  "../../../bd/design_2/ip/design_2_clk_wiz_0_1/design_2_clk_wiz_0_1.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_17 \
  "../../../../LAGO_ICTP.srcs/sources_1/bd/design_2/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_auto_pc_4/sim/design_2_auto_pc_4.v" \
  "../../../bd/design_2/ip/design_2_auto_pc_3/sim/design_2_auto_pc_3.v" \
  "../../../bd/design_2/ip/design_2_auto_pc_2/sim/design_2_auto_pc_2.v" \
  "../../../bd/design_2/ip/design_2_auto_pc_1/sim/design_2_auto_pc_1.v" \
  "../../../bd/design_2/ip/design_2_auto_pc_0/sim/design_2_auto_pc_0.v" \
  "../../../bd/design_2/ip/design_2_auto_pc_5/sim/design_2_auto_pc_5.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

