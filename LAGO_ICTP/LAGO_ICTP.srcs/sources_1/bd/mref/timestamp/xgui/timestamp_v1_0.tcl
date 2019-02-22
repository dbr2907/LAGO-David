# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "time_resolution" -parent ${Page_0}


}

proc update_PARAM_VALUE.time_resolution { PARAM_VALUE.time_resolution } {
	# Procedure called to update time_resolution when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.time_resolution { PARAM_VALUE.time_resolution } {
	# Procedure called to validate time_resolution
	return true
}


proc update_MODELPARAM_VALUE.time_resolution { MODELPARAM_VALUE.time_resolution PARAM_VALUE.time_resolution } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.time_resolution}] ${MODELPARAM_VALUE.time_resolution}
}

