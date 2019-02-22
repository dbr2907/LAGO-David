# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_DIV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NSLAVES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REG_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SPI_BITS" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLK_DIV { PARAM_VALUE.CLK_DIV } {
	# Procedure called to update CLK_DIV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_DIV { PARAM_VALUE.CLK_DIV } {
	# Procedure called to validate CLK_DIV
	return true
}

proc update_PARAM_VALUE.NSLAVES { PARAM_VALUE.NSLAVES } {
	# Procedure called to update NSLAVES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NSLAVES { PARAM_VALUE.NSLAVES } {
	# Procedure called to validate NSLAVES
	return true
}

proc update_PARAM_VALUE.REG_BITS { PARAM_VALUE.REG_BITS } {
	# Procedure called to update REG_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REG_BITS { PARAM_VALUE.REG_BITS } {
	# Procedure called to validate REG_BITS
	return true
}

proc update_PARAM_VALUE.SPI_BITS { PARAM_VALUE.SPI_BITS } {
	# Procedure called to update SPI_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SPI_BITS { PARAM_VALUE.SPI_BITS } {
	# Procedure called to validate SPI_BITS
	return true
}


proc update_MODELPARAM_VALUE.REG_BITS { MODELPARAM_VALUE.REG_BITS PARAM_VALUE.REG_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REG_BITS}] ${MODELPARAM_VALUE.REG_BITS}
}

proc update_MODELPARAM_VALUE.NSLAVES { MODELPARAM_VALUE.NSLAVES PARAM_VALUE.NSLAVES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NSLAVES}] ${MODELPARAM_VALUE.NSLAVES}
}

proc update_MODELPARAM_VALUE.CLK_DIV { MODELPARAM_VALUE.CLK_DIV PARAM_VALUE.CLK_DIV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_DIV}] ${MODELPARAM_VALUE.CLK_DIV}
}

proc update_MODELPARAM_VALUE.SPI_BITS { MODELPARAM_VALUE.SPI_BITS PARAM_VALUE.SPI_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SPI_BITS}] ${MODELPARAM_VALUE.SPI_BITS}
}

