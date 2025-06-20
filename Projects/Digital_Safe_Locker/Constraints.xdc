## Clock
set_property -dict { PACKAGE_PIN N11 IOSTANDARD LVCMOS33 } [get_ports clk]

## Inputs
set_property -dict { PACKAGE_PIN K13 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports enter]     ;# pb[0]
set_property -dict { PACKAGE_PIN L14 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports reset]     ;# pb[1]
set_property -dict { PACKAGE_PIN L5  IOSTANDARD LVCMOS33 } [get_ports bit_in]                  ;# sw[0]

## Output - Unlock LED
set_property -dict { PACKAGE_PIN J3  IOSTANDARD LVCMOS33 } [get_ports unlocked]                ;# led[0]

## 7-Segment Display (Common Anode/Cathode assumed Active-Low)
set_property -dict { PACKAGE_PIN G2 IOSTANDARD LVCMOS33 } [get_ports {seg[0]}] ; A
set_property -dict { PACKAGE_PIN G1 IOSTANDARD LVCMOS33 } [get_ports {seg[1]}] ; B
set_property -dict { PACKAGE_PIN H5 IOSTANDARD LVCMOS33 } [get_ports {seg[2]}] ; C
set_property -dict { PACKAGE_PIN H4 IOSTANDARD LVCMOS33 } [get_ports {seg[3]}] ; D
set_property -dict { PACKAGE_PIN J5 IOSTANDARD LVCMOS33 } [get_ports {seg[4]}] ; E
set_property -dict { PACKAGE_PIN J4 IOSTANDARD LVCMOS33 } [get_ports {seg[5]}] ; F
set_property -dict { PACKAGE_PIN H2 IOSTANDARD LVCMOS33 } [get_ports {seg[6]}] ; G
set_property -dict { PACKAGE_PIN H1 IOSTANDARD LVCMOS33 } [get_ports {seg[7]}] ; DP (optional)

## Digit enable (active-low)
set_property -dict { PACKAGE_PIN F2 IOSTANDARD LVCMOS33 } [get_ports {digit[0]}]
set_property -dict { PACKAGE_PIN E1 IOSTANDARD LVCMOS33 } [get_ports {digit[1]}]
set_property -dict { PACKAGE_PIN G5 IOSTANDARD LVCMOS33 } [get_ports {digit[2]}]
set_property -dict { PACKAGE_PIN G4 IOSTANDARD LVCMOS33 } [get_ports {digit[3]}]
