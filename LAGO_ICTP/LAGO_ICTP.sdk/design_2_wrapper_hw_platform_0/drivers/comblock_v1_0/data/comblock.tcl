

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "comblock" "NUM_INSTANCES" "DEVICE_ID"  "C_AXIL_REGS_BASEADDR" "C_AXIL_REGS_HIGHADDR" "C_AXIF_DRAM_BASEADDR" "C_AXIF_DRAM_HIGHADDR" "C_AXIF_FIFO_BASEADDR" "C_AXIF_FIFO_HIGHADDR"
}
