# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "delay" -parent ${Page_0}
  ipgui::add_param $IPINST -name "din_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "fifo_depth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "fifo_din_width" -parent ${Page_0}


}

proc update_PARAM_VALUE.delay { PARAM_VALUE.delay } {
	# Procedure called to update delay when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.delay { PARAM_VALUE.delay } {
	# Procedure called to validate delay
	return true
}

proc update_PARAM_VALUE.din_width { PARAM_VALUE.din_width } {
	# Procedure called to update din_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.din_width { PARAM_VALUE.din_width } {
	# Procedure called to validate din_width
	return true
}

proc update_PARAM_VALUE.fifo_depth { PARAM_VALUE.fifo_depth } {
	# Procedure called to update fifo_depth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fifo_depth { PARAM_VALUE.fifo_depth } {
	# Procedure called to validate fifo_depth
	return true
}

proc update_PARAM_VALUE.fifo_din_width { PARAM_VALUE.fifo_din_width } {
	# Procedure called to update fifo_din_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fifo_din_width { PARAM_VALUE.fifo_din_width } {
	# Procedure called to validate fifo_din_width
	return true
}


proc update_MODELPARAM_VALUE.fifo_din_width { MODELPARAM_VALUE.fifo_din_width PARAM_VALUE.fifo_din_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fifo_din_width}] ${MODELPARAM_VALUE.fifo_din_width}
}

proc update_MODELPARAM_VALUE.din_width { MODELPARAM_VALUE.din_width PARAM_VALUE.din_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.din_width}] ${MODELPARAM_VALUE.din_width}
}

proc update_MODELPARAM_VALUE.delay { MODELPARAM_VALUE.delay PARAM_VALUE.delay } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.delay}] ${MODELPARAM_VALUE.delay}
}

proc update_MODELPARAM_VALUE.fifo_depth { MODELPARAM_VALUE.fifo_depth PARAM_VALUE.fifo_depth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fifo_depth}] ${MODELPARAM_VALUE.fifo_depth}
}

