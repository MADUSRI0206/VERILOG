/*.Part Select Operation
 Extract lower nibble from reg [7:0] bus using bus[3:0].*/

module part_select_access;
reg [7:0] bus;
initial begin
assign bus=8'b10101100;
$display(bus[3:0]);
end
endmodule
