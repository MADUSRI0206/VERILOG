set_property -dict { PACKAGE_PIN N11    IOSTANDARD LVCMOS33 } [get_ports { Clk }];

set_property -dict { PACKAGE_PIN L5    IOSTANDARD LVCMOS33 } [get_ports {RD}];#LSB
set_property -dict { PACKAGE_PIN L4    IOSTANDARD LVCMOS33 } [get_ports { WR }];
set_property -dict { PACKAGE_PIN M4    IOSTANDARD LVCMOS33 } [get_ports { EN }];
set_property -dict { PACKAGE_PIN M2    IOSTANDARD LVCMOS33 } [get_ports {Rst }];

set_property -dict { PACKAGE_PIN M1    IOSTANDARD LVCMOS33 } [get_ports { dataIn[0] }];
set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports { dataIn[1] }];
set_property -dict { PACKAGE_PIN N2    IOSTANDARD LVCMOS33 } [get_ports {dataIn[2]  }];
set_property -dict { PACKAGE_PIN N1    IOSTANDARD LVCMOS33 } [get_ports { dataIn[3]}];
set_property -dict { PACKAGE_PIN P1    IOSTANDARD LVCMOS33 } [get_ports { dataIn[4] }];
set_property -dict { PACKAGE_PIN P4    IOSTANDARD LVCMOS33 } [get_ports { dataIn[5] }];
set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS33 } [get_ports { dataIn[6] }];
set_property -dict { PACKAGE_PIN R8    IOSTANDARD LVCMOS33 } [get_ports {dataIn[7] }];


set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports {dataOut[0] }];#LSB
set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { dataOut[1] }];
set_property -dict { PACKAGE_PIN J1    IOSTANDARD LVCMOS33 } [get_ports { dataOut[2] }];
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { dataOut[3] }];
set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { dataOut[4] }];
set_property -dict { PACKAGE_PIN L2    IOSTANDARD LVCMOS33 } [get_ports { dataOut[5]}];
set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { dataOut[6] }];
set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { dataOut[7] }];

set_property -dict { PACKAGE_PIN K5    IOSTANDARD LVCMOS33 } [get_ports { EMPTY }];
set_property -dict { PACKAGE_PIN P6    IOSTANDARD LVCMOS33 } [get_ports { FULL}];
