
################################################################
# This is a generated script based on design: design_2
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_2_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# GPS_EN, adc_controller, DAC_CTRL1v1, FIFOMGR, mstrigger, timer, timestamp

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zed:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_2

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: timestamp
proc create_hier_cell_timestamp { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_timestamp() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 31 -to 0 FIFOMGR_CTRL_REG
  create_bd_pin -dir I FIFO_AEMPTY
  create_bd_pin -dir I FIFO_AFULL
  create_bd_pin -dir O FIFO_CLR
  create_bd_pin -dir O -from 31 -to 0 FIFO_DATA
  create_bd_pin -dir I FIFO_EMPTY
  create_bd_pin -dir I FIFO_FULL
  create_bd_pin -dir O FIFO_WE
  create_bd_pin -dir I -from 31 -to 0 In0
  create_bd_pin -dir I -from 31 -to 0 In1
  create_bd_pin -dir I -from 31 -to 0 In2
  create_bd_pin -dir I -from 31 -to 0 In3
  create_bd_pin -dir I -from 31 -to 0 ctrl_reg
  create_bd_pin -dir I -from 15 -to 0 din
  create_bd_pin -dir I fclk
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I sclk
  create_bd_pin -dir I -from 31 -to 0 threshold
  create_bd_pin -dir O -from 31 -to 0 trigger
  create_bd_pin -dir O -from 31 -to 0 tsf
  create_bd_pin -dir O -from 31 -to 0 tss

  # Create instance: FIFOMGR_0, and set properties
  set block_name FIFOMGR
  set block_cell_name FIFOMGR_0
  if { [catch {set FIFOMGR_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FIFOMGR_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ctrl_reg, and set properties
  set ctrl_reg [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 ctrl_reg ]

  # Create instance: ctrl_reg1, and set properties
  set ctrl_reg1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 ctrl_reg1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DOUT_WIDTH {1} \
 ] $ctrl_reg1

  # Create instance: ctrl_reg2, and set properties
  set ctrl_reg2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 ctrl_reg2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {8} \
 ] $ctrl_reg2

  # Create instance: mstrigger_0, and set properties
  set block_name mstrigger
  set block_cell_name mstrigger_0
  if { [catch {set mstrigger_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mstrigger_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: timer_0, and set properties
  set block_name timer
  set block_cell_name timer_0
  if { [catch {set timer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $timer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: timestamp_1, and set properties
  set block_name timestamp
  set block_cell_name timestamp_1
  if { [catch {set timestamp_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $timestamp_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]

  # Create port connections
  connect_bd_net -net FIFOMGR_0_FIFO_CLR [get_bd_pins FIFO_CLR] [get_bd_pins FIFOMGR_0/FIFO_CLR]
  connect_bd_net -net FIFOMGR_0_FIFO_DATA [get_bd_pins FIFO_DATA] [get_bd_pins FIFOMGR_0/FIFO_DATA]
  connect_bd_net -net FIFOMGR_0_FIFO_WE [get_bd_pins FIFO_WE] [get_bd_pins FIFOMGR_0/FIFO_WE]
  connect_bd_net -net FIFOMGR_CTRL_REG_1 [get_bd_pins FIFOMGR_CTRL_REG] [get_bd_pins FIFOMGR_0/CTRL_REG]
  connect_bd_net -net FIFO_AEMPTY_1 [get_bd_pins FIFO_AEMPTY] [get_bd_pins FIFOMGR_0/FIFO_AEMPTY]
  connect_bd_net -net FIFO_AFULL_1 [get_bd_pins FIFO_AFULL] [get_bd_pins FIFOMGR_0/FIFO_AFULL]
  connect_bd_net -net FIFO_EMPTY_1 [get_bd_pins FIFO_EMPTY] [get_bd_pins FIFOMGR_0/FIFO_EMPTY]
  connect_bd_net -net FIFO_FULL_1 [get_bd_pins FIFO_FULL] [get_bd_pins FIFOMGR_0/FIFO_FULL]
  connect_bd_net -net In0_1 [get_bd_pins In0] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net In1_1 [get_bd_pins In1] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net In2_1 [get_bd_pins In2] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net In3_1 [get_bd_pins In3] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net Net [get_bd_pins rst] [get_bd_pins FIFOMGR_0/RST] [get_bd_pins mstrigger_0/rst] [get_bd_pins timer_0/rst] [get_bd_pins timestamp_1/rst]
  connect_bd_net -net ctrl_reg1_Dout [get_bd_pins ctrl_reg1/Dout] [get_bd_pins timestamp_1/clear]
  connect_bd_net -net ctrl_reg2_Dout [get_bd_pins ctrl_reg2/Dout] [get_bd_pins mstrigger_0/threshold]
  connect_bd_net -net ctrl_reg_1 [get_bd_pins ctrl_reg] [get_bd_pins ctrl_reg/Din] [get_bd_pins ctrl_reg1/Din]
  connect_bd_net -net din_1 [get_bd_pins din] [get_bd_pins FIFOMGR_0/ADC_DIN] [get_bd_pins mstrigger_0/din]
  connect_bd_net -net fclk_1 [get_bd_pins fclk] [get_bd_pins FIFOMGR_0/CLK] [get_bd_pins mstrigger_0/clk] [get_bd_pins timer_0/fclk] [get_bd_pins timestamp_1/fclk]
  connect_bd_net -net mstrigger_0_LAT [get_bd_pins FIFOMGR_0/LT] [get_bd_pins mstrigger_0/LAT] [get_bd_pins timestamp_1/latency]
  connect_bd_net -net mstrigger_0_TS [get_bd_pins FIFOMGR_0/TS] [get_bd_pins mstrigger_0/TS] [get_bd_pins timestamp_1/trig]
  connect_bd_net -net sclk_1 [get_bd_pins sclk] [get_bd_pins timer_0/sclk] [get_bd_pins timestamp_1/sclk]
  connect_bd_net -net threshold_1 [get_bd_pins threshold] [get_bd_pins ctrl_reg2/Din]
  connect_bd_net -net timer_0_ft [get_bd_pins FIFOMGR_0/TSF] [get_bd_pins timer_0/ft]
  connect_bd_net -net timer_0_st [get_bd_pins FIFOMGR_0/TSS] [get_bd_pins timer_0/st]
  connect_bd_net -net timestamp_1_trig_signal [get_bd_pins trigger] [get_bd_pins timestamp_1/trig_signal]
  connect_bd_net -net timestamp_1_tsf [get_bd_pins tsf] [get_bd_pins timestamp_1/tsf]
  connect_bd_net -net timestamp_1_tss [get_bd_pins tss] [get_bd_pins timestamp_1/tss]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins ctrl_reg/Dout] [get_bd_pins mstrigger_0/en]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: DMA_Osciloscope
proc create_hier_cell_DMA_Osciloscope { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_DMA_Osciloscope() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s00_axi

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 -type rst axi_resetn
  create_bd_pin -dir I data_valid
  create_bd_pin -dir O -from 1 -to 0 debug_state_0
  create_bd_pin -dir I -from 15 -to 0 din
  create_bd_pin -dir I -type clk m_axi_s2mm_aclk
  create_bd_pin -dir I -type clk m_axi_s2mm_aclk1
  create_bd_pin -dir I -type rst resetn
  create_bd_pin -dir O -type intr s2mm_introut

  # Create instance: AXI_Trigger_gen_m4_0, and set properties
  set AXI_Trigger_gen_m4_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:AXI_Trigger_gen_m4:1.0 AXI_Trigger_gen_m4_0 ]

  # Create instance: FIFO_SIZE, and set properties
  set FIFO_SIZE [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 FIFO_SIZE ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {32768} \
   CONFIG.CONST_WIDTH {32} \
 ] $FIFO_SIZE

  # Create instance: OLD_fifo, and set properties
  set OLD_fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 OLD_fifo ]
  set_property -dict [ list \
   CONFIG.Clock_Type_AXI {Independent_Clock} \
   CONFIG.Empty_Threshold_Assert_Value_axis {4} \
   CONFIG.Empty_Threshold_Assert_Value_rach {13} \
   CONFIG.Empty_Threshold_Assert_Value_rdch {1021} \
   CONFIG.Empty_Threshold_Assert_Value_wach {13} \
   CONFIG.Empty_Threshold_Assert_Value_wdch {1021} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {13} \
   CONFIG.Enable_Data_Counts_axis {false} \
   CONFIG.FIFO_Implementation_axis {Independent_Clocks_Block_RAM} \
   CONFIG.FIFO_Implementation_rach {Independent_Clocks_Distributed_RAM} \
   CONFIG.FIFO_Implementation_rdch {Independent_Clocks_Block_RAM} \
   CONFIG.FIFO_Implementation_wach {Independent_Clocks_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wdch {Independent_Clocks_Block_RAM} \
   CONFIG.FIFO_Implementation_wrch {Independent_Clocks_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {32767} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {32768} \
   CONFIG.Programmable_Empty_Type_axis {Single_Programmable_Empty_Threshold_Constant} \
   CONFIG.Programmable_Full_Type_axis {Single_Programmable_Full_Threshold_Constant} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
 ] $OLD_fifo

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {0} \
   CONFIG.c_include_s2mm {1} \
   CONFIG.c_include_s2mm_dre {1} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_m_axi_s2mm_data_width {64} \
   CONFIG.c_s2mm_burst_size {256} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {23} \
 ] $axi_dma_0

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
   CONFIG.NUM_CLKS {2} \
   CONFIG.NUM_SI {1} \
 ] $axi_smc

  # Create instance: empty, and set properties
  set empty [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 empty ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $empty

  # Create instance: full, and set properties
  set full [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 full ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $full

  # Create instance: tlast_gen_0, and set properties
  set tlast_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:tlast_gen:1.0 tlast_gen_0 ]
  set_property -dict [ list \
   CONFIG.MAX_PKT_LENGTH {2147483647} \
   CONFIG.TDATA_WIDTH {32} \
 ] $tlast_gen_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {16} \
   CONFIG.IN1_WIDTH {16} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {15} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s00_axi] [get_bd_intf_pins AXI_Trigger_gen_m4_0/s00_axi]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_smc/S00_AXI]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins axi_smc/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins S_AXI_LITE] [get_bd_intf_pins axi_dma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net tlast_gen_0_m_axis [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM] [get_bd_intf_pins tlast_gen_0/m_axis]

  # Create port connections
  connect_bd_net -net AXI_Trigger_gen_m4_0_debug_state [get_bd_pins debug_state_0] [get_bd_pins AXI_Trigger_gen_m4_0/debug_state]
  connect_bd_net -net AXI_Trigger_gen_m4_0_fifo_m_axis_tready [get_bd_pins AXI_Trigger_gen_m4_0/fifo_m_axis_tready] [get_bd_pins OLD_fifo/m_axis_tready]
  connect_bd_net -net AXI_Trigger_gen_m4_0_fifo_we [get_bd_pins AXI_Trigger_gen_m4_0/fifo_we] [get_bd_pins OLD_fifo/s_axis_tvalid]
  connect_bd_net -net Net [get_bd_pins m_axi_s2mm_aclk1] [get_bd_pins AXI_Trigger_gen_m4_0/Trig_clk] [get_bd_pins OLD_fifo/m_aclk] [get_bd_pins OLD_fifo/s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_smc/aclk] [get_bd_pins tlast_gen_0/aclk]
  connect_bd_net -net OLD_fifo_m_axis_tdata [get_bd_pins OLD_fifo/m_axis_tdata] [get_bd_pins tlast_gen_0/s_axis_tdata]
  connect_bd_net -net OLD_fifo_m_axis_tvalid [get_bd_pins OLD_fifo/m_axis_tvalid] [get_bd_pins empty/Op1] [get_bd_pins tlast_gen_0/s_axis_tvalid]
  connect_bd_net -net OLD_fifo_s_axis_tready [get_bd_pins OLD_fifo/s_axis_tready] [get_bd_pins full/Op1]
  connect_bd_net -net axi_dma_0_s2mm_introut [get_bd_pins s2mm_introut] [get_bd_pins axi_dma_0/s2mm_introut]
  connect_bd_net -net data_valid_1 [get_bd_pins data_valid] [get_bd_pins AXI_Trigger_gen_m4_0/data_valid]
  connect_bd_net -net din_1 [get_bd_pins din] [get_bd_pins AXI_Trigger_gen_m4_0/din] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net empty_Res [get_bd_pins AXI_Trigger_gen_m4_0/fifo_empty] [get_bd_pins empty/Res]
  connect_bd_net -net full_Res [get_bd_pins AXI_Trigger_gen_m4_0/fifo_full] [get_bd_pins full/Res]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_resetn] [get_bd_pins AXI_Trigger_gen_m4_0/s00_axi_aresetn] [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_smc/aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins m_axi_s2mm_aclk] [get_bd_pins AXI_Trigger_gen_m4_0/s00_axi_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_smc/aclk1]
  connect_bd_net -net resetn_1 [get_bd_pins resetn] [get_bd_pins AXI_Trigger_gen_m4_0/Trig_resetn] [get_bd_pins OLD_fifo/s_aresetn] [get_bd_pins tlast_gen_0/resetn]
  connect_bd_net -net tlast_gen_0_s_axis_tready [get_bd_pins AXI_Trigger_gen_m4_0/dma_tready] [get_bd_pins tlast_gen_0/s_axis_tready]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins OLD_fifo/s_axis_tdata] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axi_dma_0/s_axis_s2mm_tkeep] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins FIFO_SIZE/dout] [get_bd_pins tlast_gen_0/pkt_length]
  connect_bd_net -net xlconstant_1_dout_1 [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconstant_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Processing_System
proc create_hier_cell_Processing_System { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_Processing_System() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR
  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_0_0
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M03_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M04_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M05_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M06_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M07_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M08_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M09_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M10_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M11_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_HP0

  # Create pins
  create_bd_pin -dir O FCLK_CLK0
  create_bd_pin -dir O FCLK_CLK1
  create_bd_pin -dir O -type rst FCLK_RESET0_N
  create_bd_pin -dir I -from 0 -to 0 -type intr IRQ_F2P
  create_bd_pin -dir O -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O -from 0 -to 0 peripheral_aresetn1

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN0_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN1_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_I2C_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666667} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN0_BASEADDR {0xE0008000} \
   CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN0_HIGHADDR {0xE0008FFF} \
   CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN0_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN1_BASEADDR {0xE0009000} \
   CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN1_HIGHADDR {0xE0009FFF} \
   CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN1_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
   CONFIG.PCW_CLK0_FREQ {50000000} \
   CONFIG.PCW_CLK1_FREQ {100000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CORE0_FIQ_INTR {0} \
   CONFIG.PCW_CORE0_IRQ_INTR {0} \
   CONFIG.PCW_CORE1_FIQ_INTR {0} \
   CONFIG.PCW_CORE1_IRQ_INTR {0} \
   CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
   CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(0)/LPR(32)} \
   CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL {15} \
   CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_PORT0_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT1_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_RAM_BASEADDR {0x00100000} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
   CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DM_WIDTH {4} \
   CONFIG.PCW_DQS_WIDTH {4} \
   CONFIG.PCW_DQ_WIDTH {32} \
   CONFIG.PCW_ENET0_BASEADDR {0xE000B000} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_HIGHADDR {0xE000BFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_BASEADDR {0xE000C000} \
   CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {0} \
   CONFIG.PCW_ENET1_HIGHADDR {0xE000CFFF} \
   CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_4K_TIMER {0} \
   CONFIG.PCW_EN_CAN0 {0} \
   CONFIG.PCW_EN_CAN1 {0} \
   CONFIG.PCW_EN_CLK0_PORT {1} \
   CONFIG.PCW_EN_CLK1_PORT {1} \
   CONFIG.PCW_EN_CLK2_PORT {0} \
   CONFIG.PCW_EN_CLK3_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG1_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG2_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG3_PORT {0} \
   CONFIG.PCW_EN_DDR {1} \
   CONFIG.PCW_EN_EMIO_CAN0 {0} \
   CONFIG.PCW_EN_EMIO_CAN1 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_ENET0 {0} \
   CONFIG.PCW_EN_EMIO_ENET1 {0} \
   CONFIG.PCW_EN_EMIO_GPIO {0} \
   CONFIG.PCW_EN_EMIO_I2C0 {1} \
   CONFIG.PCW_EN_EMIO_I2C1 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
   CONFIG.PCW_EN_EMIO_PJTAG {0} \
   CONFIG.PCW_EN_EMIO_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_SPI0 {0} \
   CONFIG.PCW_EN_EMIO_SPI1 {0} \
   CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
   CONFIG.PCW_EN_EMIO_TRACE {0} \
   CONFIG.PCW_EN_EMIO_TTC0 {0} \
   CONFIG.PCW_EN_EMIO_TTC1 {0} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_EMIO_UART1 {0} \
   CONFIG.PCW_EN_EMIO_WDT {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_ENET1 {0} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_I2C0 {1} \
   CONFIG.PCW_EN_I2C1 {0} \
   CONFIG.PCW_EN_MODEM_UART0 {0} \
   CONFIG.PCW_EN_MODEM_UART1 {0} \
   CONFIG.PCW_EN_PJTAG {0} \
   CONFIG.PCW_EN_PTP_ENET0 {1} \
   CONFIG.PCW_EN_PTP_ENET1 {0} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_RST0_PORT {1} \
   CONFIG.PCW_EN_RST1_PORT {0} \
   CONFIG.PCW_EN_RST2_PORT {0} \
   CONFIG.PCW_EN_RST3_PORT {0} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_SDIO1 {0} \
   CONFIG.PCW_EN_SMC {0} \
   CONFIG.PCW_EN_SPI0 {0} \
   CONFIG.PCW_EN_SPI1 {0} \
   CONFIG.PCW_EN_TRACE {0} \
   CONFIG.PCW_EN_TTC0 {0} \
   CONFIG.PCW_EN_TTC1 {0} \
   CONFIG.PCW_EN_UART0 {0} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {1} \
   CONFIG.PCW_EN_USB1 {0} \
   CONFIG.PCW_EN_WDT {0} \
   CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {4} \
   CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK2_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK3_BUF {FALSE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_FTM_CTI_IN0 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN1 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN2 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN3 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT0 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT1 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT2 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT3 {<Select>} \
   CONFIG.PCW_GP0_EN_MODIFIABLE_TXN {0} \
   CONFIG.PCW_GP0_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP0_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GP1_EN_MODIFIABLE_TXN {0} \
   CONFIG.PCW_GP1_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP1_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GPIO_BASEADDR {0xE000A000} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {64} \
   CONFIG.PCW_GPIO_HIGHADDR {0xE000AFFF} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_BASEADDR {0xE0004000} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {1} \
   CONFIG.PCW_I2C0_GRP_INT_IO {EMIO} \
   CONFIG.PCW_I2C0_HIGHADDR {0xE0004FFF} \
   CONFIG.PCW_I2C0_I2C0_IO {EMIO} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_BASEADDR {0xE0005000} \
   CONFIG.PCW_I2C1_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C1_HIGHADDR {0xE0005FFF} \
   CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_I2C_RESET_ENABLE {1} \
   CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
   CONFIG.PCW_I2C_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
   CONFIG.PCW_INCLUDE_ACP_TRANS_CHECK {0} \
   CONFIG.PCW_INCLUDE_TRACE_BUFFER {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {disabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {disabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {disabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {disabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {disabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {inout} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {disabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {inout} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {disabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {disabled} \
   CONFIG.PCW_MIO_16_SLEW {fast} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {disabled} \
   CONFIG.PCW_MIO_17_SLEW {fast} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {disabled} \
   CONFIG.PCW_MIO_18_SLEW {fast} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {disabled} \
   CONFIG.PCW_MIO_19_SLEW {fast} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {disabled} \
   CONFIG.PCW_MIO_1_SLEW {fast} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {disabled} \
   CONFIG.PCW_MIO_20_SLEW {fast} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {disabled} \
   CONFIG.PCW_MIO_21_SLEW {fast} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {disabled} \
   CONFIG.PCW_MIO_22_SLEW {fast} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {disabled} \
   CONFIG.PCW_MIO_23_SLEW {fast} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {disabled} \
   CONFIG.PCW_MIO_24_SLEW {fast} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {disabled} \
   CONFIG.PCW_MIO_25_SLEW {fast} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {disabled} \
   CONFIG.PCW_MIO_26_SLEW {fast} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {disabled} \
   CONFIG.PCW_MIO_27_SLEW {fast} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {disabled} \
   CONFIG.PCW_MIO_28_SLEW {fast} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {disabled} \
   CONFIG.PCW_MIO_29_SLEW {fast} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {fast} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {disabled} \
   CONFIG.PCW_MIO_30_SLEW {fast} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {disabled} \
   CONFIG.PCW_MIO_31_SLEW {fast} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {disabled} \
   CONFIG.PCW_MIO_32_SLEW {fast} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {disabled} \
   CONFIG.PCW_MIO_33_SLEW {fast} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {disabled} \
   CONFIG.PCW_MIO_34_SLEW {fast} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {disabled} \
   CONFIG.PCW_MIO_35_SLEW {fast} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {disabled} \
   CONFIG.PCW_MIO_36_SLEW {fast} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {disabled} \
   CONFIG.PCW_MIO_37_SLEW {fast} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {disabled} \
   CONFIG.PCW_MIO_38_SLEW {fast} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {disabled} \
   CONFIG.PCW_MIO_39_SLEW {fast} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {fast} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {disabled} \
   CONFIG.PCW_MIO_40_SLEW {fast} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {disabled} \
   CONFIG.PCW_MIO_41_SLEW {fast} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {disabled} \
   CONFIG.PCW_MIO_42_SLEW {fast} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {disabled} \
   CONFIG.PCW_MIO_43_SLEW {fast} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {disabled} \
   CONFIG.PCW_MIO_44_SLEW {fast} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {disabled} \
   CONFIG.PCW_MIO_45_SLEW {fast} \
   CONFIG.PCW_MIO_46_DIRECTION {in} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {disabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {in} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {disabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {disabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {in} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {disabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {fast} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {disabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {disabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {disabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {disabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {fast} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {fast} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {fast} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {disabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_PRIMITIVE {54} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#UART 1#UART 1#GPIO#GPIO#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#gpio[7]#gpio[8]#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#gpio[14]#gpio[15]#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#wp#cd#tx#rx#gpio[50]#gpio[51]#mdc#mdio} \
   CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {0} \
   CONFIG.PCW_M_AXI_GP0_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP0_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP0_THREAD_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP1_ENABLE_STATIC_REMAP {0} \
   CONFIG.PCW_M_AXI_GP1_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP1_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP1_THREAD_ID_WIDTH {12} \
   CONFIG.PCW_NAND_CYCLES_T_AR {1} \
   CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
   CONFIG.PCW_NAND_CYCLES_T_RC {2} \
   CONFIG.PCW_NAND_CYCLES_T_REA {1} \
   CONFIG.PCW_NAND_CYCLES_T_RR {1} \
   CONFIG.PCW_NAND_CYCLES_T_WC {2} \
   CONFIG.PCW_NAND_CYCLES_T_WP {1} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_CS0_T_PC {1} \
   CONFIG.PCW_NOR_CS0_T_RC {2} \
   CONFIG.PCW_NOR_CS0_T_TR {1} \
   CONFIG.PCW_NOR_CS0_T_WC {2} \
   CONFIG.PCW_NOR_CS0_T_WP {1} \
   CONFIG.PCW_NOR_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_CS1_T_PC {1} \
   CONFIG.PCW_NOR_CS1_T_RC {2} \
   CONFIG.PCW_NOR_CS1_T_TR {1} \
   CONFIG.PCW_NOR_CS1_T_WC {2} \
   CONFIG.PCW_NOR_CS1_T_WP {1} \
   CONFIG.PCW_NOR_CS1_WE_TIME {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_RC {2} \
   CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WC {2} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_RC {2} \
   CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WC {2} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
   CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
   CONFIG.PCW_P2F_CAN0_INTR {0} \
   CONFIG.PCW_P2F_CAN1_INTR {0} \
   CONFIG.PCW_P2F_CTI_INTR {0} \
   CONFIG.PCW_P2F_DMAC0_INTR {0} \
   CONFIG.PCW_P2F_DMAC1_INTR {0} \
   CONFIG.PCW_P2F_DMAC2_INTR {0} \
   CONFIG.PCW_P2F_DMAC3_INTR {0} \
   CONFIG.PCW_P2F_DMAC4_INTR {0} \
   CONFIG.PCW_P2F_DMAC5_INTR {0} \
   CONFIG.PCW_P2F_DMAC6_INTR {0} \
   CONFIG.PCW_P2F_DMAC7_INTR {0} \
   CONFIG.PCW_P2F_DMAC_ABORT_INTR {0} \
   CONFIG.PCW_P2F_ENET0_INTR {0} \
   CONFIG.PCW_P2F_ENET1_INTR {0} \
   CONFIG.PCW_P2F_GPIO_INTR {0} \
   CONFIG.PCW_P2F_I2C0_INTR {0} \
   CONFIG.PCW_P2F_I2C1_INTR {0} \
   CONFIG.PCW_P2F_QSPI_INTR {0} \
   CONFIG.PCW_P2F_SDIO0_INTR {0} \
   CONFIG.PCW_P2F_SDIO1_INTR {0} \
   CONFIG.PCW_P2F_SMC_INTR {0} \
   CONFIG.PCW_P2F_SPI0_INTR {0} \
   CONFIG.PCW_P2F_SPI1_INTR {0} \
   CONFIG.PCW_P2F_UART0_INTR {0} \
   CONFIG.PCW_P2F_UART1_INTR {0} \
   CONFIG.PCW_P2F_USB0_INTR {0} \
   CONFIG.PCW_P2F_USB1_INTR {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.063} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.062} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.065} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.083} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.007} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.010} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.006} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.048} \
   CONFIG.PCW_PACKAGE_NAME {clg484} \
   CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_PERIPHERAL_BOARD_PRESET {part0} \
   CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_PS7_SI_REV {PRODUCTION} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
   CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_WP_IO {MIO 46} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SD1_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SDIO0_BASEADDR {0xE0100000} \
   CONFIG.PCW_SDIO0_HIGHADDR {0xE0100FFF} \
   CONFIG.PCW_SDIO1_BASEADDR {0xE0101000} \
   CONFIG.PCW_SDIO1_HIGHADDR {0xE0101FFF} \
   CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_CYCLE_T0 {NA} \
   CONFIG.PCW_SMC_CYCLE_T1 {NA} \
   CONFIG.PCW_SMC_CYCLE_T2 {NA} \
   CONFIG.PCW_SMC_CYCLE_T3 {NA} \
   CONFIG.PCW_SMC_CYCLE_T4 {NA} \
   CONFIG.PCW_SMC_CYCLE_T5 {NA} \
   CONFIG.PCW_SMC_CYCLE_T6 {NA} \
   CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
   CONFIG.PCW_SPI0_BASEADDR {0xE0006000} \
   CONFIG.PCW_SPI0_GRP_SS0_ENABLE {0} \
   CONFIG.PCW_SPI0_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI0_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI0_HIGHADDR {0xE0006FFF} \
   CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SPI1_BASEADDR {0xE0007000} \
   CONFIG.PCW_SPI1_GRP_SS0_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI1_HIGHADDR {0xE0007FFF} \
   CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
   CONFIG.PCW_SPI_PERIPHERAL_VALID {0} \
   CONFIG.PCW_S_AXI_ACP_ARUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_AWUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_ID_WIDTH {3} \
   CONFIG.PCW_S_AXI_GP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_GP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP2_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP3_ID_WIDTH {6} \
   CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_TRACE_BUFFER_CLOCK_DELAY {12} \
   CONFIG.PCW_TRACE_BUFFER_FIFO_SIZE {128} \
   CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
   CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TRACE_PIPELINE_WIDTH {8} \
   CONFIG.PCW_TTC0_BASEADDR {0xE0104000} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_HIGHADDR {0xE0104fff} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC0_TTC0_IO {<Select>} \
   CONFIG.PCW_TTC1_BASEADDR {0xE0105000} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_HIGHADDR {0xE0105fff} \
   CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART0_BASEADDR {0xE0000000} \
   CONFIG.PCW_UART0_BAUD_RATE {115200} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_HIGHADDR {0xE0000FFF} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_UART1_BASEADDR {0xE0001000} \
   CONFIG.PCW_UART1_BAUD_RATE {115200} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_HIGHADDR {0xE0001FFF} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
   CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
   CONFIG.PCW_UIPARAM_DDR_AL {0} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.41} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.411} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.341} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.358} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {61.0905} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {61.0905} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {61.0905} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {61.0905} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {2048 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {68.4725} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {71.086} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {66.794} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {108.7385} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.025} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.028} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {-0.009} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {-0.061} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {64.1705} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {63.686} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {68.46} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {105.4895} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333313} \
   CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J128M16 HA-15E} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {14} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {45.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {36.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {49.5} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {1} \
   CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NA} \
   CONFIG.PCW_USB0_BASEADDR {0xE0102000} \
   CONFIG.PCW_USB0_HIGHADDR {0xE0102fff} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_BASEADDR {0xE0103000} \
   CONFIG.PCW_USB1_HIGHADDR {0xE0103fff} \
   CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
   CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_USE_AXI_FABRIC_IDLE {0} \
   CONFIG.PCW_USE_AXI_NONSECURE {0} \
   CONFIG.PCW_USE_CORESIGHT {0} \
   CONFIG.PCW_USE_CROSS_TRIGGER {0} \
   CONFIG.PCW_USE_CR_FABRIC {1} \
   CONFIG.PCW_USE_DDR_BYPASS {0} \
   CONFIG.PCW_USE_DEBUG {0} \
   CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {0} \
   CONFIG.PCW_USE_DMA0 {0} \
   CONFIG.PCW_USE_DMA1 {0} \
   CONFIG.PCW_USE_DMA2 {0} \
   CONFIG.PCW_USE_DMA3 {0} \
   CONFIG.PCW_USE_EXPANDED_IOP {0} \
   CONFIG.PCW_USE_EXPANDED_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_HIGH_OCM {0} \
   CONFIG.PCW_USE_M_AXI_GP0 {1} \
   CONFIG.PCW_USE_M_AXI_GP1 {0} \
   CONFIG.PCW_USE_PROC_EVENT_BUS {0} \
   CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_S_AXI_ACP {0} \
   CONFIG.PCW_USE_S_AXI_GP0 {0} \
   CONFIG.PCW_USE_S_AXI_GP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
   CONFIG.PCW_USE_S_AXI_HP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP2 {0} \
   CONFIG.PCW_USE_S_AXI_HP3 {0} \
   CONFIG.PCW_USE_TRACE {0} \
   CONFIG.PCW_USE_TRACE_DATA_EDGE_DETECTOR {0} \
   CONFIG.PCW_VALUE_SILVERSION {3} \
   CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.preset {ZedBoard} \
 ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {12} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $processing_system7_0_axi_periph

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M06_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins IIC_0_0] [get_bd_intf_pins processing_system7_0/IIC_0]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins M07_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins M08_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins M09_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins M10_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M10_AXI]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins M11_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net S_AXI_HP0_1 [get_bd_intf_pins S_AXI_HP0] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_pins DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_pins FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M01_AXI [get_bd_intf_pins M01_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M02_AXI [get_bd_intf_pins M02_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M03_AXI [get_bd_intf_pins M03_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M04_AXI [get_bd_intf_pins M04_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M05_AXI [get_bd_intf_pins M05_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M05_AXI]

  # Create port connections
  connect_bd_net -net axi_dma_0_s2mm_introut [get_bd_pins IRQ_F2P] [get_bd_pins processing_system7_0/IRQ_F2P]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins proc_sys_reset_0/interconnect_aresetn] [get_bd_pins processing_system7_0_axi_periph/ARESETN]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins peripheral_aresetn1] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M02_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M03_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M04_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M05_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M06_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M07_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M08_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M09_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M10_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M11_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins FCLK_CLK0] [get_bd_pins FCLK_CLK1] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/M02_ACLK] [get_bd_pins processing_system7_0_axi_periph/M03_ACLK] [get_bd_pins processing_system7_0_axi_periph/M04_ACLK] [get_bd_pins processing_system7_0_axi_periph/M05_ACLK] [get_bd_pins processing_system7_0_axi_periph/M06_ACLK] [get_bd_pins processing_system7_0_axi_periph/M07_ACLK] [get_bd_pins processing_system7_0_axi_periph/M08_ACLK] [get_bd_pins processing_system7_0_axi_periph/M09_ACLK] [get_bd_pins processing_system7_0_axi_periph/M10_ACLK] [get_bd_pins processing_system7_0_axi_periph/M11_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins FCLK_RESET0_N] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Comblock_PL
proc create_hier_cell_Comblock_PL { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_Comblock_PL() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s00_axi

  # Create pins
  create_bd_pin -dir I -type clk CLK
  create_bd_pin -dir I -from 31 -to 0 CTRL
  create_bd_pin -dir I -from 31 -to 0 DATA
  create_bd_pin -dir I -from 31 -to 0 DEVICE
  create_bd_pin -dir I -from 15 -to 0 Din
  create_bd_pin -dir I -from 31 -to 0 FIFOMGR_CTRL_REG
  create_bd_pin -dir I FIFO_AEMPTY
  create_bd_pin -dir I FIFO_AFULL
  create_bd_pin -dir O FIFO_CLR
  create_bd_pin -dir O -from 31 -to 0 FIFO_DATA
  create_bd_pin -dir I FIFO_EMPTY
  create_bd_pin -dir I FIFO_FULL
  create_bd_pin -dir O FIFO_WE
  create_bd_pin -dir I -from 31 -to 0 In0
  create_bd_pin -dir I -from 31 -to 0 In1
  create_bd_pin -dir I -from 31 -to 0 In2
  create_bd_pin -dir I -from 31 -to 0 In3
  create_bd_pin -dir I -from 31 -to 0 N1
  create_bd_pin -dir O RLED_0
  create_bd_pin -dir I -type rst RST
  create_bd_pin -dir O SCK_0
  create_bd_pin -dir O SDATA_0
  create_bd_pin -dir O -from 0 -to 0 SS_0
  create_bd_pin -dir O -from 15 -to 0 addb_0
  create_bd_pin -dir I -from 31 -to 0 ctrl_reg
  create_bd_pin -dir I -from 31 -to 0 ctrl_reg_0
  create_bd_pin -dir O -from 31 -to 0 curr_cycle_0
  create_bd_pin -dir O -from 1 -to 0 debug_state_0
  create_bd_pin -dir O -from 31 -to 0 dinb_0
  create_bd_pin -dir O done_0
  create_bd_pin -dir I -from 31 -to 0 doutb_0
  create_bd_pin -dir I -type clk m_axi_s2mm_aclk
  create_bd_pin -dir I -from 31 -to 0 max_cycles_0
  create_bd_pin -dir I -from 31 -to 0 n
  create_bd_pin -dir I rtc_1hz
  create_bd_pin -dir I -from 0 -to 0 -type rst s00_axi_aresetn1
  create_bd_pin -dir O -type intr s2mm_introut
  create_bd_pin -dir I -from 31 -to 0 threshold
  create_bd_pin -dir O -from 31 -to 0 trigger
  create_bd_pin -dir O -from 31 -to 0 tsf
  create_bd_pin -dir O -from 31 -to 0 tss
  create_bd_pin -dir O -from 0 -to 0 web_0

  # Create instance: ADC_Decimator_0, and set properties
  set ADC_Decimator_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:ADC_Decimator:1.0 ADC_Decimator_0 ]

  # Create instance: DAC_CTRL1v1_0, and set properties
  set block_name DAC_CTRL1v1
  set block_cell_name DAC_CTRL1v1_0
  if { [catch {set DAC_CTRL1v1_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DAC_CTRL1v1_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.NSLAVES {1} \
 ] $DAC_CTRL1v1_0

  # Create instance: DMA_Osciloscope
  create_hier_cell_DMA_Osciloscope $hier_obj DMA_Osciloscope

  # Create instance: Hist_Gen_Block_0, and set properties
  set Hist_Gen_Block_0 [ create_bd_cell -type ip -vlnv ictp.it:user:Hist_Gen_Block:1.0 Hist_Gen_Block_0 ]

  # Create instance: timestamp
  create_hier_cell_timestamp $hier_obj timestamp

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI_LITE] [get_bd_intf_pins DMA_Osciloscope/S_AXI_LITE]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins s00_axi] [get_bd_intf_pins DMA_Osciloscope/s00_axi]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins M00_AXI] [get_bd_intf_pins DMA_Osciloscope/M00_AXI]

  # Create port connections
  connect_bd_net -net CLK_1 [get_bd_pins CLK] [get_bd_pins ADC_Decimator_0/clk_in] [get_bd_pins DAC_CTRL1v1_0/CLK] [get_bd_pins DMA_Osciloscope/m_axi_s2mm_aclk1] [get_bd_pins Hist_Gen_Block_0/clk_0] [get_bd_pins timestamp/fclk]
  connect_bd_net -net CTRL_1 [get_bd_pins CTRL] [get_bd_pins DAC_CTRL1v1_0/CTRL]
  connect_bd_net -net DAC_CTRL1v1_0_RLED [get_bd_pins RLED_0] [get_bd_pins DAC_CTRL1v1_0/RLED]
  connect_bd_net -net DAC_CTRL1v1_0_SCK [get_bd_pins SCK_0] [get_bd_pins DAC_CTRL1v1_0/SCK]
  connect_bd_net -net DAC_CTRL1v1_0_SDATA [get_bd_pins SDATA_0] [get_bd_pins DAC_CTRL1v1_0/SDATA]
  connect_bd_net -net DAC_CTRL1v1_0_SS [get_bd_pins SS_0] [get_bd_pins DAC_CTRL1v1_0/SS]
  connect_bd_net -net DATA_1 [get_bd_pins DATA] [get_bd_pins DAC_CTRL1v1_0/DATA]
  connect_bd_net -net DEVICE_1 [get_bd_pins DEVICE] [get_bd_pins DAC_CTRL1v1_0/DEVICE]
  connect_bd_net -net DMA_Osciloscope_debug_state_0 [get_bd_pins debug_state_0] [get_bd_pins DMA_Osciloscope/debug_state_0]
  connect_bd_net -net DMA_Osciloscope_s2mm_introut [get_bd_pins s2mm_introut] [get_bd_pins DMA_Osciloscope/s2mm_introut]
  connect_bd_net -net Din_1 [get_bd_pins Din] [get_bd_pins ADC_Decimator_0/Din] [get_bd_pins timestamp/din]
  connect_bd_net -net FIFOMGR_CTRL_REG_1 [get_bd_pins FIFOMGR_CTRL_REG] [get_bd_pins timestamp/FIFOMGR_CTRL_REG]
  connect_bd_net -net FIFO_AEMPTY_1 [get_bd_pins FIFO_AEMPTY] [get_bd_pins timestamp/FIFO_AEMPTY]
  connect_bd_net -net FIFO_AFULL_1 [get_bd_pins FIFO_AFULL] [get_bd_pins timestamp/FIFO_AFULL]
  connect_bd_net -net FIFO_EMPTY_1 [get_bd_pins FIFO_EMPTY] [get_bd_pins timestamp/FIFO_EMPTY]
  connect_bd_net -net FIFO_FULL_1 [get_bd_pins FIFO_FULL] [get_bd_pins timestamp/FIFO_FULL]
  connect_bd_net -net Hist_Gen_Block_0_addb_0 [get_bd_pins addb_0] [get_bd_pins Hist_Gen_Block_0/addb_0]
  connect_bd_net -net Hist_Gen_Block_0_curr_cycle_0 [get_bd_pins curr_cycle_0] [get_bd_pins Hist_Gen_Block_0/curr_cycle_0]
  connect_bd_net -net Hist_Gen_Block_0_dinb_0 [get_bd_pins dinb_0] [get_bd_pins Hist_Gen_Block_0/dinb_0]
  connect_bd_net -net Hist_Gen_Block_0_done_0 [get_bd_pins done_0] [get_bd_pins Hist_Gen_Block_0/done_0]
  connect_bd_net -net Hist_Gen_Block_0_web_0 [get_bd_pins web_0] [get_bd_pins Hist_Gen_Block_0/web_0]
  connect_bd_net -net In0_1 [get_bd_pins In0] [get_bd_pins timestamp/In0]
  connect_bd_net -net In1_1 [get_bd_pins In1] [get_bd_pins timestamp/In1]
  connect_bd_net -net In2_1 [get_bd_pins In2] [get_bd_pins timestamp/In2]
  connect_bd_net -net In3_1 [get_bd_pins In3] [get_bd_pins timestamp/In3]
  connect_bd_net -net N1_1 [get_bd_pins N1] [get_bd_pins ADC_Decimator_0/N]
  connect_bd_net -net ctrl_reg_0_1 [get_bd_pins ctrl_reg_0] [get_bd_pins Hist_Gen_Block_0/ctrl_reg_0]
  connect_bd_net -net ctrl_reg_1 [get_bd_pins ctrl_reg] [get_bd_pins timestamp/ctrl_reg]
  connect_bd_net -net data_valid_1 [get_bd_pins ADC_Decimator_0/Decim_data_valid] [get_bd_pins DMA_Osciloscope/data_valid] [get_bd_pins Hist_Gen_Block_0/data_valid_0]
  connect_bd_net -net din_2 [get_bd_pins ADC_Decimator_0/D_sum] [get_bd_pins DMA_Osciloscope/din] [get_bd_pins Hist_Gen_Block_0/in_addr_0]
  connect_bd_net -net doutb_0_1 [get_bd_pins doutb_0] [get_bd_pins Hist_Gen_Block_0/doutb_0]
  connect_bd_net -net m_axi_s2mm_aclk_1 [get_bd_pins m_axi_s2mm_aclk] [get_bd_pins DMA_Osciloscope/m_axi_s2mm_aclk]
  connect_bd_net -net max_cycles_0_1 [get_bd_pins max_cycles_0] [get_bd_pins Hist_Gen_Block_0/max_cycles_0]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins s00_axi_aresetn1] [get_bd_pins DMA_Osciloscope/axi_resetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins RST] [get_bd_pins ADC_Decimator_0/resetn] [get_bd_pins DAC_CTRL1v1_0/RST] [get_bd_pins DMA_Osciloscope/resetn] [get_bd_pins Hist_Gen_Block_0/rst_0] [get_bd_pins timestamp/rst]
  connect_bd_net -net rtc_1hz_1 [get_bd_pins rtc_1hz] [get_bd_pins timestamp/sclk]
  connect_bd_net -net threshold_1 [get_bd_pins threshold] [get_bd_pins timestamp/threshold]
  connect_bd_net -net timestamp_FIFO_CLR [get_bd_pins FIFO_CLR] [get_bd_pins timestamp/FIFO_CLR]
  connect_bd_net -net timestamp_FIFO_DATA [get_bd_pins FIFO_DATA] [get_bd_pins timestamp/FIFO_DATA]
  connect_bd_net -net timestamp_FIFO_WE [get_bd_pins FIFO_WE] [get_bd_pins timestamp/FIFO_WE]
  connect_bd_net -net timestamp_trigger [get_bd_pins trigger] [get_bd_pins timestamp/trigger]
  connect_bd_net -net timestamp_tsf [get_bd_pins tsf] [get_bd_pins timestamp/tsf]
  connect_bd_net -net timestamp_tss [get_bd_pins tss] [get_bd_pins timestamp/tss]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ADC_Controller
proc create_hier_cell_ADC_Controller { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ADC_Controller() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 31 -to 0 Ctrl_reg_in
  create_bd_pin -dir O -from 31 -to 0 Ctrl_reg_out
  create_bd_pin -dir O -from 15 -to 0 adc_raw
  create_bd_pin -dir I -type clk clk_in1
  create_bd_pin -dir O -from 0 -to 0 clk_to_adc_DS_N
  create_bd_pin -dir O -from 0 -to 0 clk_to_adc_DS_P
  create_bd_pin -dir I -from 15 -to 0 data_from_adc_DS_N
  create_bd_pin -dir I -from 15 -to 0 data_from_adc_DS_P
  create_bd_pin -dir I -from 0 -to 0 from_adc_or_DS_N
  create_bd_pin -dir I -from 0 -to 0 from_adc_or_DS_P
  create_bd_pin -dir I -from 0 -to 0 -type rst s00_axi_aresetn1
  create_bd_pin -dir I x_from_adc_calrun_fmc
  create_bd_pin -dir O x_to_adc_cal_fmc
  create_bd_pin -dir O x_to_adc_caldly_nscs_fmc
  create_bd_pin -dir O x_to_adc_dclk_rst_fmc
  create_bd_pin -dir O x_to_adc_fsr_ece_fmc
  create_bd_pin -dir O x_to_adc_led_0
  create_bd_pin -dir O x_to_adc_led_1
  create_bd_pin -dir O x_to_adc_outedge_ddr_sdata_fmc
  create_bd_pin -dir O x_to_adc_outv_slck_fmc
  create_bd_pin -dir O x_to_adc_pd_fmc

  # Create instance: adc_controller_0, and set properties
  set block_name adc_controller
  set block_cell_name adc_controller_0
  if { [catch {set adc_controller_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $adc_controller_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {97.082} \
   CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {500} \
   CONFIG.CLKOUT1_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {2.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_BOARD_FLOW {true} \
   CONFIG.USE_LOCKED {false} \
 ] $clk_wiz_0

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_0

  # Create instance: util_ds_buf_2, and set properties
  set util_ds_buf_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_2 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDS} \
   CONFIG.C_SIZE {16} \
 ] $util_ds_buf_2

  # Create instance: util_ds_buf_3, and set properties
  set util_ds_buf_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_3 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDS} \
 ] $util_ds_buf_3

  # Create port connections
  connect_bd_net -net Ctrl_reg_in_1 [get_bd_pins Ctrl_reg_in] [get_bd_pins adc_controller_0/Ctrl_reg_in]
  connect_bd_net -net IBUF_DS_N1_1 [get_bd_pins from_adc_or_DS_N] [get_bd_pins util_ds_buf_3/IBUF_DS_N]
  connect_bd_net -net IBUF_DS_N_2 [get_bd_pins data_from_adc_DS_N] [get_bd_pins util_ds_buf_2/IBUF_DS_N]
  connect_bd_net -net IBUF_DS_P1_1 [get_bd_pins from_adc_or_DS_P] [get_bd_pins util_ds_buf_3/IBUF_DS_P]
  connect_bd_net -net IBUF_DS_P_2 [get_bd_pins data_from_adc_DS_P] [get_bd_pins util_ds_buf_2/IBUF_DS_P]
  connect_bd_net -net adc_controller_0_Ctrl_reg_out [get_bd_pins Ctrl_reg_out] [get_bd_pins adc_controller_0/Ctrl_reg_out]
  connect_bd_net -net adc_controller_0_x_to_adc_cal_fmc [get_bd_pins x_to_adc_cal_fmc] [get_bd_pins adc_controller_0/x_to_adc_cal_fmc]
  connect_bd_net -net adc_controller_0_x_to_adc_caldly_nscs_fmc [get_bd_pins x_to_adc_caldly_nscs_fmc] [get_bd_pins adc_controller_0/x_to_adc_caldly_nscs_fmc]
  connect_bd_net -net adc_controller_0_x_to_adc_dclk_rst_fmc [get_bd_pins x_to_adc_dclk_rst_fmc] [get_bd_pins adc_controller_0/x_to_adc_dclk_rst_fmc]
  connect_bd_net -net adc_controller_0_x_to_adc_fsr_ece_fmc [get_bd_pins x_to_adc_fsr_ece_fmc] [get_bd_pins adc_controller_0/x_to_adc_fsr_ece_fmc]
  connect_bd_net -net adc_controller_0_x_to_adc_led_0 [get_bd_pins x_to_adc_led_0] [get_bd_pins adc_controller_0/x_to_adc_led_0]
  connect_bd_net -net adc_controller_0_x_to_adc_led_1 [get_bd_pins x_to_adc_led_1] [get_bd_pins adc_controller_0/x_to_adc_led_1]
  connect_bd_net -net adc_controller_0_x_to_adc_outedge_ddr_sdata_fmc [get_bd_pins x_to_adc_outedge_ddr_sdata_fmc] [get_bd_pins adc_controller_0/x_to_adc_outedge_ddr_sdata_fmc]
  connect_bd_net -net adc_controller_0_x_to_adc_outv_slck_fmc [get_bd_pins x_to_adc_outv_slck_fmc] [get_bd_pins adc_controller_0/x_to_adc_outv_slck_fmc]
  connect_bd_net -net adc_controller_0_x_to_adc_pd_fmc [get_bd_pins x_to_adc_pd_fmc] [get_bd_pins adc_controller_0/x_to_adc_pd_fmc]
  connect_bd_net -net clk_in1_1 [get_bd_pins clk_in1] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins util_ds_buf_0/OBUF_IN]
  connect_bd_net -net s00_axi_aresetn1_1 [get_bd_pins s00_axi_aresetn1] [get_bd_pins clk_wiz_0/resetn]
  connect_bd_net -net util_ds_buf_0_OBUF_DS_N [get_bd_pins clk_to_adc_DS_N] [get_bd_pins util_ds_buf_0/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_0_OBUF_DS_P [get_bd_pins clk_to_adc_DS_P] [get_bd_pins util_ds_buf_0/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_2_IBUF_OUT [get_bd_pins adc_raw] [get_bd_pins util_ds_buf_2/IBUF_OUT]
  connect_bd_net -net util_ds_buf_3_IBUF_OUT [get_bd_pins adc_controller_0/x_from_adc_or] [get_bd_pins util_ds_buf_3/IBUF_OUT]
  connect_bd_net -net x_from_adc_calrun_fmc_1 [get_bd_pins x_from_adc_calrun_fmc] [get_bd_pins adc_controller_0/x_from_adc_calrun_fmc]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set IIC0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC0 ]
  set uart_rtl [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 uart_rtl ]

  # Create ports
  set CLK_IN1_D_clk_n [ create_bd_port -dir I -type clk CLK_IN1_D_clk_n ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] $CLK_IN1_D_clk_n
  set CLK_IN1_D_clk_p [ create_bd_port -dir I -type clk CLK_IN1_D_clk_p ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] $CLK_IN1_D_clk_p
  set PPSIn_0 [ create_bd_port -dir I PPSIn_0 ]
  set RLED_0 [ create_bd_port -dir O RLED_0 ]
  set SCK_0 [ create_bd_port -dir O SCK_0 ]
  set SDATA_0 [ create_bd_port -dir O SDATA_0 ]
  set SS_0 [ create_bd_port -dir O -from 0 -to 0 SS_0 ]
  set clk_to_adc_DS_N [ create_bd_port -dir O -from 0 -to 0 clk_to_adc_DS_N ]
  set clk_to_adc_DS_P [ create_bd_port -dir O -from 0 -to 0 clk_to_adc_DS_P ]
  set data_from_adc_DS_N [ create_bd_port -dir I -from 15 -to 0 -type data data_from_adc_DS_N ]
  set data_from_adc_DS_P [ create_bd_port -dir I -from 15 -to 0 -type data data_from_adc_DS_P ]
  set from_adc_or_DS_N [ create_bd_port -dir I -from 0 -to 0 from_adc_or_DS_N ]
  set from_adc_or_DS_P [ create_bd_port -dir I -from 0 -to 0 from_adc_or_DS_P ]
  set rtc_rst [ create_bd_port -dir O -from 0 -to 0 -type rst rtc_rst ]
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock
  set x_from_adc_calrun_fmc [ create_bd_port -dir I x_from_adc_calrun_fmc ]
  set x_to_adc_cal_fmc [ create_bd_port -dir O x_to_adc_cal_fmc ]
  set x_to_adc_caldly_nscs_fmc [ create_bd_port -dir O x_to_adc_caldly_nscs_fmc ]
  set x_to_adc_dclk_rst_fmc [ create_bd_port -dir O x_to_adc_dclk_rst_fmc ]
  set x_to_adc_fsr_ece_fmc [ create_bd_port -dir O x_to_adc_fsr_ece_fmc ]
  set x_to_adc_led_0 [ create_bd_port -dir O x_to_adc_led_0 ]
  set x_to_adc_led_1 [ create_bd_port -dir O x_to_adc_led_1 ]
  set x_to_adc_outedge_ddr_sdata_fmc [ create_bd_port -dir O x_to_adc_outedge_ddr_sdata_fmc ]
  set x_to_adc_outv_slck_fmc [ create_bd_port -dir O x_to_adc_outv_slck_fmc ]
  set x_to_adc_pd_fmc [ create_bd_port -dir O x_to_adc_pd_fmc ]

  # Create instance: ADC_Controller
  create_hier_cell_ADC_Controller [current_bd_instance .] ADC_Controller

  # Create instance: Comblock_PL
  create_hier_cell_Comblock_PL [current_bd_instance .] Comblock_PL

  # Create instance: Fix, and set properties
  set Fix [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 Fix ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.GPIO_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $Fix

  # Create instance: GPS_EN_0, and set properties
  set block_name GPS_EN
  set block_cell_name GPS_EN_0
  if { [catch {set GPS_EN_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $GPS_EN_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Processing_System
  create_hier_cell_Processing_System [current_bd_instance .] Processing_System

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT2_JITTER {130.958} \
   CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {Custom} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {10} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.USE_BOARD_FLOW {true} \
   CONFIG.USE_FREQ_SYNTH {false} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: comblock_0, and set properties
  set comblock_0 [ create_bd_cell -type ip -vlnv user.org:user:comblock:1.0 comblock_0 ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DATA_WIDTH {32} \
   CONFIG.C_FIFO_DEPTH {1533} \
 ] $comblock_0

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_1 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG} \
 ] $util_ds_buf_1

  # Create interface connections
  connect_bd_intf_net -intf_net Processing_System_IIC_0_0 [get_bd_intf_ports IIC0] [get_bd_intf_pins Processing_System/IIC_0_0]
  connect_bd_intf_net -intf_net Processing_System_M00_AXI [get_bd_intf_pins Comblock_PL/S_AXI_LITE] [get_bd_intf_pins Processing_System/M00_AXI]
  connect_bd_intf_net -intf_net Processing_System_M02_AXI [get_bd_intf_pins Comblock_PL/s00_axi] [get_bd_intf_pins Processing_System/M02_AXI]
  connect_bd_intf_net -intf_net Processing_System_M07_AXI [get_bd_intf_pins Processing_System/M07_AXI] [get_bd_intf_pins comblock_0/AXIL_REGS]
  connect_bd_intf_net -intf_net Processing_System_M08_AXI [get_bd_intf_pins Processing_System/M08_AXI] [get_bd_intf_pins comblock_0/AXIF_DRAM]
  connect_bd_intf_net -intf_net Processing_System_M09_AXI [get_bd_intf_pins Processing_System/M09_AXI] [get_bd_intf_pins comblock_0/AXIF_FIFO]
  connect_bd_intf_net -intf_net Processing_System_M10_AXI [get_bd_intf_pins Processing_System/M10_AXI] [get_bd_intf_pins axi_uartlite_0/S_AXI]
  connect_bd_intf_net -intf_net Processing_System_M11_AXI [get_bd_intf_pins Fix/S_AXI] [get_bd_intf_pins Processing_System/M11_AXI]
  connect_bd_intf_net -intf_net S_AXI_HP0_1 [get_bd_intf_pins Comblock_PL/M00_AXI] [get_bd_intf_pins Processing_System/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports uart_rtl] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins Processing_System/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins Processing_System/FIXED_IO]

  # Create port connections
  connect_bd_net -net ADC_Controller_Ctrl_reg_out [get_bd_pins ADC_Controller/Ctrl_reg_out] [get_bd_pins comblock_0/reg3_i]
  connect_bd_net -net ADC_Controller_adc_raw [get_bd_pins ADC_Controller/adc_raw] [get_bd_pins Comblock_PL/Din]
  connect_bd_net -net ADC_Controller_clk_to_adc_DS_N [get_bd_ports clk_to_adc_DS_N] [get_bd_pins ADC_Controller/clk_to_adc_DS_N]
  connect_bd_net -net ADC_Controller_clk_to_adc_DS_P [get_bd_ports clk_to_adc_DS_P] [get_bd_pins ADC_Controller/clk_to_adc_DS_P]
  connect_bd_net -net ADC_Controller_x_to_adc_cal_fmc [get_bd_ports x_to_adc_cal_fmc] [get_bd_pins ADC_Controller/x_to_adc_cal_fmc]
  connect_bd_net -net ADC_Controller_x_to_adc_caldly_nscs_fmc [get_bd_ports x_to_adc_caldly_nscs_fmc] [get_bd_pins ADC_Controller/x_to_adc_caldly_nscs_fmc]
  connect_bd_net -net ADC_Controller_x_to_adc_dclk_rst_fmc [get_bd_ports x_to_adc_dclk_rst_fmc] [get_bd_pins ADC_Controller/x_to_adc_dclk_rst_fmc]
  connect_bd_net -net ADC_Controller_x_to_adc_fsr_ece_fmc [get_bd_ports x_to_adc_fsr_ece_fmc] [get_bd_pins ADC_Controller/x_to_adc_fsr_ece_fmc]
  connect_bd_net -net ADC_Controller_x_to_adc_led_0 [get_bd_ports x_to_adc_led_0] [get_bd_pins ADC_Controller/x_to_adc_led_0]
  connect_bd_net -net ADC_Controller_x_to_adc_led_1 [get_bd_ports x_to_adc_led_1] [get_bd_pins ADC_Controller/x_to_adc_led_1]
  connect_bd_net -net ADC_Controller_x_to_adc_outedge_ddr_sdata_fmc [get_bd_ports x_to_adc_outedge_ddr_sdata_fmc] [get_bd_pins ADC_Controller/x_to_adc_outedge_ddr_sdata_fmc]
  connect_bd_net -net ADC_Controller_x_to_adc_outv_slck_fmc [get_bd_ports x_to_adc_outv_slck_fmc] [get_bd_pins ADC_Controller/x_to_adc_outv_slck_fmc]
  connect_bd_net -net ADC_Controller_x_to_adc_pd_fmc [get_bd_ports x_to_adc_pd_fmc] [get_bd_pins ADC_Controller/x_to_adc_pd_fmc]
  connect_bd_net -net CLK_1 [get_bd_pins Comblock_PL/CLK] [get_bd_pins comblock_0/fifo_clk_i] [get_bd_pins comblock_0/ram_clk_i] [get_bd_pins proc_sys_reset_1/slowest_sync_clk] [get_bd_pins util_ds_buf_1/BUFG_O]
  connect_bd_net -net CLK_IN1_D_clk_n_1 [get_bd_ports CLK_IN1_D_clk_n] [get_bd_pins util_ds_buf_0/IBUF_DS_N]
  connect_bd_net -net CLK_IN1_D_clk_p_1 [get_bd_ports CLK_IN1_D_clk_p] [get_bd_pins util_ds_buf_0/IBUF_DS_P]
  connect_bd_net -net Comblock_PL_FIFO_CLR [get_bd_pins Comblock_PL/FIFO_CLR] [get_bd_pins comblock_0/fifo_clear_i]
  connect_bd_net -net Comblock_PL_FIFO_DATA [get_bd_pins Comblock_PL/FIFO_DATA] [get_bd_pins comblock_0/fifo_data_i]
  connect_bd_net -net Comblock_PL_FIFO_WE [get_bd_pins Comblock_PL/FIFO_WE] [get_bd_pins comblock_0/fifo_we_i]
  connect_bd_net -net Comblock_PL_addb_0 [get_bd_pins Comblock_PL/addb_0] [get_bd_pins comblock_0/ram_addr_i]
  connect_bd_net -net Comblock_PL_curr_cycle_0 [get_bd_pins Comblock_PL/curr_cycle_0] [get_bd_pins comblock_0/reg4_i]
  connect_bd_net -net Comblock_PL_dinb_0 [get_bd_pins Comblock_PL/dinb_0] [get_bd_pins comblock_0/ram_data_i]
  connect_bd_net -net Comblock_PL_done_0 [get_bd_pins Comblock_PL/done_0] [get_bd_pins comblock_0/reg5_i]
  connect_bd_net -net Comblock_PL_trigger [get_bd_pins Comblock_PL/trigger] [get_bd_pins comblock_0/reg0_i]
  connect_bd_net -net Comblock_PL_tsf [get_bd_pins Comblock_PL/tsf] [get_bd_pins comblock_0/reg2_i]
  connect_bd_net -net Comblock_PL_tss [get_bd_pins Comblock_PL/tss] [get_bd_pins comblock_0/reg1_i]
  connect_bd_net -net Comblock_PL_web_0 [get_bd_pins Comblock_PL/web_0] [get_bd_pins comblock_0/ram_we_i]
  connect_bd_net -net DAC_CTRL_0_RLED [get_bd_ports RLED_0] [get_bd_pins Comblock_PL/RLED_0]
  connect_bd_net -net DAC_CTRL_0_SCK [get_bd_ports SCK_0] [get_bd_pins Comblock_PL/SCK_0]
  connect_bd_net -net DAC_CTRL_0_SDATA [get_bd_ports SDATA_0] [get_bd_pins Comblock_PL/SDATA_0]
  connect_bd_net -net DAC_CTRL_0_SS [get_bd_ports SS_0] [get_bd_pins Comblock_PL/SS_0]
  connect_bd_net -net GPS_EN_0_Fix [get_bd_pins Fix/gpio_io_i] [get_bd_pins GPS_EN_0/Fix]
  connect_bd_net -net GPS_EN_0_PPSOut [get_bd_pins Comblock_PL/rtc_1hz] [get_bd_pins GPS_EN_0/PPSOut]
  connect_bd_net -net IRQ_F2P_1 [get_bd_pins Comblock_PL/s2mm_introut] [get_bd_pins Processing_System/IRQ_F2P]
  connect_bd_net -net PPSIn_0_1 [get_bd_ports PPSIn_0] [get_bd_pins GPS_EN_0/PPSIn]
  connect_bd_net -net Processing_System_FCLK_CLK0 [get_bd_pins Processing_System/FCLK_CLK0] [get_bd_pins comblock_0/axif_dram_aclk] [get_bd_pins comblock_0/axif_fifo_aclk] [get_bd_pins comblock_0/axil_regs_aclk]
  connect_bd_net -net Processing_System_FCLK_CLK1 [get_bd_pins Comblock_PL/m_axi_s2mm_aclk] [get_bd_pins Fix/s_axi_aclk] [get_bd_pins Processing_System/FCLK_CLK1] [get_bd_pins axi_uartlite_0/s_axi_aclk]
  connect_bd_net -net Processing_System_FCLK_RESET0_N [get_bd_pins Processing_System/FCLK_RESET0_N] [get_bd_pins proc_sys_reset_1/ext_reset_in]
  connect_bd_net -net Processing_System_peripheral_aresetn1 [get_bd_pins Fix/s_axi_aresetn] [get_bd_pins Processing_System/peripheral_aresetn1] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins comblock_0/axif_dram_aresetn] [get_bd_pins comblock_0/axif_fifo_aresetn] [get_bd_pins comblock_0/axil_regs_aresetn]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins GPS_EN_0/CLK] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins ADC_Controller/clk_in1] [get_bd_pins clk_wiz_0/clk_out2]
  connect_bd_net -net comblock_0_fifo_aempty_o [get_bd_pins Comblock_PL/FIFO_AEMPTY] [get_bd_pins comblock_0/fifo_aempty_o]
  connect_bd_net -net comblock_0_fifo_afull_o [get_bd_pins Comblock_PL/FIFO_AFULL] [get_bd_pins comblock_0/fifo_afull_o]
  connect_bd_net -net comblock_0_fifo_empty_o [get_bd_pins Comblock_PL/FIFO_EMPTY] [get_bd_pins comblock_0/fifo_empty_o]
  connect_bd_net -net comblock_0_fifo_full_o [get_bd_pins Comblock_PL/FIFO_FULL] [get_bd_pins comblock_0/fifo_full_o]
  connect_bd_net -net comblock_0_ram_data_o [get_bd_pins Comblock_PL/doutb_0] [get_bd_pins comblock_0/ram_data_o]
  connect_bd_net -net comblock_0_reg0_o [get_bd_pins Comblock_PL/threshold] [get_bd_pins comblock_0/reg0_o]
  connect_bd_net -net comblock_0_reg10_o [get_bd_pins Comblock_PL/FIFOMGR_CTRL_REG] [get_bd_pins comblock_0/reg10_o]
  connect_bd_net -net comblock_0_reg11_o [get_bd_pins Comblock_PL/In0] [get_bd_pins comblock_0/reg11_o]
  connect_bd_net -net comblock_0_reg12_o [get_bd_pins Comblock_PL/In1] [get_bd_pins comblock_0/reg12_o]
  connect_bd_net -net comblock_0_reg13_o [get_bd_pins Comblock_PL/In2] [get_bd_pins comblock_0/reg13_o]
  connect_bd_net -net comblock_0_reg14_o [get_bd_pins Comblock_PL/In3] [get_bd_pins comblock_0/reg14_o]
  connect_bd_net -net comblock_0_reg1_o [get_bd_pins Comblock_PL/ctrl_reg] [get_bd_pins comblock_0/reg1_o]
  connect_bd_net -net comblock_0_reg2_o [get_bd_pins Comblock_PL/n] [get_bd_pins comblock_0/reg2_o]
  connect_bd_net -net comblock_0_reg3_o [get_bd_pins Comblock_PL/N1] [get_bd_pins comblock_0/reg3_o]
  connect_bd_net -net comblock_0_reg4_o [get_bd_pins Comblock_PL/DATA] [get_bd_pins comblock_0/reg4_o]
  connect_bd_net -net comblock_0_reg5_o [get_bd_pins Comblock_PL/CTRL] [get_bd_pins comblock_0/reg5_o]
  connect_bd_net -net comblock_0_reg6_o [get_bd_pins Comblock_PL/DEVICE] [get_bd_pins comblock_0/reg6_o]
  connect_bd_net -net comblock_0_reg7_o [get_bd_pins ADC_Controller/Ctrl_reg_in] [get_bd_pins comblock_0/reg7_o]
  connect_bd_net -net comblock_0_reg8_o [get_bd_pins Comblock_PL/ctrl_reg_0] [get_bd_pins comblock_0/reg8_o]
  connect_bd_net -net comblock_0_reg9_o [get_bd_pins Comblock_PL/max_cycles_0] [get_bd_pins comblock_0/reg9_o]
  connect_bd_net -net data_from_adc_DS_N_1 [get_bd_ports data_from_adc_DS_N] [get_bd_pins ADC_Controller/data_from_adc_DS_N]
  connect_bd_net -net data_from_adc_DS_P_1 [get_bd_ports data_from_adc_DS_P] [get_bd_pins ADC_Controller/data_from_adc_DS_P]
  connect_bd_net -net from_adc_or_DS_N_1 [get_bd_ports from_adc_or_DS_N] [get_bd_pins ADC_Controller/from_adc_or_DS_N]
  connect_bd_net -net from_adc_or_DS_P_1 [get_bd_ports from_adc_or_DS_P] [get_bd_pins ADC_Controller/from_adc_or_DS_P]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins ADC_Controller/s00_axi_aresetn1] [get_bd_pins Comblock_PL/s00_axi_aresetn1] [get_bd_pins Processing_System/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_ports rtc_rst] [get_bd_pins Comblock_PL/RST] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins util_ds_buf_1/BUFG_I]
  connect_bd_net -net x_from_adc_calrun_fmc_1 [get_bd_ports x_from_adc_calrun_fmc] [get_bd_pins ADC_Controller/x_from_adc_calrun_fmc]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces Processing_System/processing_system7_0/Data] [get_bd_addr_segs Comblock_PL/DMA_Osciloscope/AXI_Trigger_gen_m4_0/s00_axi/reg0] SEG_AXI_Trigger_gen_m4_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces Processing_System/processing_system7_0/Data] [get_bd_addr_segs Fix/S_AXI/Reg] SEG_Fix_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40400000 [get_bd_addr_spaces Processing_System/processing_system7_0/Data] [get_bd_addr_segs Comblock_PL/DMA_Osciloscope/axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x42C00000 [get_bd_addr_spaces Processing_System/processing_system7_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x7AA00000 [get_bd_addr_spaces Processing_System/processing_system7_0/Data] [get_bd_addr_segs comblock_0/AXIF_DRAM/AXIF_DRAM_mem] SEG_comblock_0_AXIF_DRAM_mem
  create_bd_addr_seg -range 0x00010000 -offset 0x7AA10000 [get_bd_addr_spaces Processing_System/processing_system7_0/Data] [get_bd_addr_segs comblock_0/AXIF_FIFO/AXIF_FIFO_mem] SEG_comblock_0_AXIF_FIFO_mem
  create_bd_addr_seg -range 0x00010000 -offset 0x43C30000 [get_bd_addr_spaces Processing_System/processing_system7_0/Data] [get_bd_addr_segs comblock_0/AXIL_REGS/AXIL_REGS_reg] SEG_comblock_0_AXIL_REGS_reg
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces Comblock_PL/DMA_Osciloscope/axi_dma_0/Data_S2MM] [get_bd_addr_segs Processing_System/processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


