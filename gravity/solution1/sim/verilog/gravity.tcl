
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set m1__m2__return__return_group [add_wave_group m1__m2__return__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_gravity_top/AESL_inst_gravity/interrupt -into $m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_BRESP -into $m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_BREADY -into $m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_BVALID -into $m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_RRESP -into $m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_RDATA -into $m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_RREADY -into $m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_RVALID -into $m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_ARREADY -into $m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_ARVALID -into $m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_ARADDR -into $m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_WSTRB -into $m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_WDATA -into $m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_WREADY -into $m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_WVALID -into $m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_AWREADY -into $m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_AWVALID -into $m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/AESL_inst_gravity/s_axi_CRTLS_AWADDR -into $m1__m2__return__return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set distance_group [add_wave_group distance(wire) -into $cinputgroup]
add_wave /apatb_gravity_top/AESL_inst_gravity/distance -into $distance_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_gravity_top/AESL_inst_gravity/ap_done -into $blocksiggroup
add_wave /apatb_gravity_top/AESL_inst_gravity/ap_idle -into $blocksiggroup
add_wave /apatb_gravity_top/AESL_inst_gravity/ap_ready -into $blocksiggroup
add_wave /apatb_gravity_top/AESL_inst_gravity/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_gravity_top/AESL_inst_gravity/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_gravity_top/AESL_inst_gravity/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_gravity_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_gravity_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_gravity_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_gravity_top/LENGTH_m1 -into $tb_portdepth_group -radix hex
add_wave /apatb_gravity_top/LENGTH_m2 -into $tb_portdepth_group -radix hex
add_wave /apatb_gravity_top/LENGTH_distance -into $tb_portdepth_group -radix hex
add_wave /apatb_gravity_top/LENGTH_ap_return -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_m1__m2__return__return_group [add_wave_group m1__m2__return__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_gravity_top/CRTLS_INTERRUPT -into $tb_m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/CRTLS_BRESP -into $tb_m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/CRTLS_BREADY -into $tb_m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/CRTLS_BVALID -into $tb_m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/CRTLS_RRESP -into $tb_m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/CRTLS_RDATA -into $tb_m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/CRTLS_RREADY -into $tb_m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/CRTLS_RVALID -into $tb_m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/CRTLS_ARREADY -into $tb_m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/CRTLS_ARVALID -into $tb_m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/CRTLS_ARADDR -into $tb_m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/CRTLS_WSTRB -into $tb_m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/CRTLS_WDATA -into $tb_m1__m2__return__return_group -radix hex
add_wave /apatb_gravity_top/CRTLS_WREADY -into $tb_m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/CRTLS_WVALID -into $tb_m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/CRTLS_AWREADY -into $tb_m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/CRTLS_AWVALID -into $tb_m1__m2__return__return_group -color #ffff00 -radix hex
add_wave /apatb_gravity_top/CRTLS_AWADDR -into $tb_m1__m2__return__return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_distance_group [add_wave_group distance(wire) -into $tbcinputgroup]
add_wave /apatb_gravity_top/distance -into $tb_distance_group -radix hex
save_wave_config gravity.wcfg
run all
quit

