
#Clock
#IO_L13P_T2_MRCC_35 Schematic name=SYSCLK
set_property -dict {PACKAGE_PIN k17 IOSTANDARD LVCMOS33} [get_ports {sysclk}]
#create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports {sysclk}]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets je_IBUF[1]]
##Clock signal
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { sysclk }]; #IO_L12P_T1_MRCC_35 Sch=sysclk
#create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { sysclk }];


set_property PACKAGE_PIN M14 [get_ports {sysled[0]}]
set_property PACKAGE_PIN M15 [get_ports {sysled[1]}]
set_property PACKAGE_PIN G14 [get_ports {sysled[2]}]
set_property PACKAGE_PIN D18 [get_ports {sysled[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sysled[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sysled[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sysled[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sysled[3]}]

#Pmod Header JE
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {je[0]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {je[1]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {je[2]}]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports {je[3]}]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {je[4]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {je[5]}]
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports {je[6]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {je[7]}]
set_property -dict { PACKAGE_PIN H17   IOSTANDARD TMDS_33     } [get_ports { TMDSn_clock }]; #IO_L13N_T2_MRCC_35 Sch=hdmi_tx_clk_n
set_property -dict { PACKAGE_PIN H16   IOSTANDARD TMDS_33     } [get_ports { TMDSp_clock }]; #IO_L13P_T2_MRCC_35 Sch=hdmi_tx_clk_p
set_property -dict { PACKAGE_PIN D20   IOSTANDARD TMDS_33     } [get_ports { TMDSn[0] }]; #IO_L4N_T0_35 Sch=hdmi_tx_n[0]
set_property -dict { PACKAGE_PIN D19   IOSTANDARD TMDS_33     } [get_ports { TMDSp[0] }]; #IO_L4P_T0_35 Sch=hdmi_tx_p[0]
set_property -dict { PACKAGE_PIN B20   IOSTANDARD TMDS_33     } [get_ports { TMDSn[1] }]; #IO_L1N_T0_AD0N_35 Sch=hdmi_tx_n[1]
set_property -dict { PACKAGE_PIN C20   IOSTANDARD TMDS_33     } [get_ports { TMDSp[1] }]; #IO_L1P_T0_AD0P_35 Sch=hdmi_tx_p[1]
set_property -dict { PACKAGE_PIN A20   IOSTANDARD TMDS_33     } [get_ports { TMDSn[2] }]; #IO_L2N_T0_AD8N_35 Sch=hdmi_tx_n[2]
set_property -dict { PACKAGE_PIN B19   IOSTANDARD TMDS_33     } [get_ports { TMDSp[2] }]; #IO_L2P_T0_AD8P_35 Sch=hdmi_tx_p[2]

# Disable specific LUT overutilization errors to warnings
#set_property drc.disablel UTOverUtilError 1
set_property drc.disablet UTOverUtilError 1