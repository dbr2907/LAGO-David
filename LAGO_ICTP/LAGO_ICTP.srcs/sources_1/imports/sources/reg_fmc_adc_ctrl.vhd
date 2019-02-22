library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc_controller is
--	generic (	);
	port (
		Ctrl_reg_in  : in std_logic_vector(8 downto 0);
		Ctrl_reg_out : out std_logic_vector(31 downto 0);
  
        x_to_adc_cal_fmc         : out std_logic ;   --                               
        x_to_adc_caldly_nscs_fmc : out std_logic ;  --                         
        x_to_adc_fsr_ece_fmc     : out std_logic ;  --                                  
        x_to_adc_outv_slck_fmc   : out std_logic ;  --                                
        x_to_adc_outedge_ddr_sdata_fmc : out std_logic ;  --                        
        x_to_adc_dclk_rst_fmc : out std_logic ;   --                                 
        x_to_adc_pd_fmc : out std_logic ;  -- 
        x_to_adc_led_0    : out std_logic ;
        x_to_adc_led_1    : out std_logic ;                                         
                                                            
        x_from_adc_calrun_fmc: in std_logic;    --                          
        x_from_adc_or: in std_logic           -- adc (differential) lvds signal  		
	);
end adc_controller;
--
architecture arch_imp of adc_controller is

begin

	--	Asynchronous assignement of slv_reg8:
    x_to_adc_cal_fmc <= Ctrl_reg_in(0);   --   
    x_to_adc_caldly_nscs_fmc <= Ctrl_reg_in(1);  -- 
    x_to_adc_fsr_ece_fmc <= Ctrl_reg_in(2);
    x_to_adc_outv_slck_fmc <= Ctrl_reg_in(3);
    x_to_adc_outedge_ddr_sdata_fmc <= Ctrl_reg_in(4) ;
    x_to_adc_dclk_rst_fmc <= Ctrl_reg_in(5) ;
    x_to_adc_pd_fmc <= Ctrl_reg_in(6);
    
    x_to_adc_led_0 <= Ctrl_reg_in(7);
    x_to_adc_led_1 <= Ctrl_reg_in(8);
    
    
    Ctrl_reg_out(0) <= x_from_adc_calrun_fmc;
    Ctrl_reg_out(1) <= x_from_adc_or;      -- adc (differential) lvds signal
    Ctrl_reg_out(31 downto 2) <=(others=>'0');

end arch_imp;
