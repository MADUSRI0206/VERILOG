/* Bit Select Access
 Use a vector reg [7:0] data
 Assign data = 8'b10101100
 Access specific bit using data[3]. */


module bit_select_access;
reg [7:0] data;
initial begin
assign data=8'b10101100;
$display(data[3]);
end
endmodule
