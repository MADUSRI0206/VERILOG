/* Write a module using replication operator:
 assign y = {a, {4{b[0]}}, c[1]}; */

module replication_operator_tb;
reg [3:0]a;
reg [3:0]b;
reg [3:0]c;
wire [8:0]y;
assign y = {a, {4{b[0]}}, c[1]};
initial begin
a=4'b1001;
b=4'b1011;
c=4'b1000;
#5;
$display("Replication Operation : %b ",y);
end
endmodule

//OUTPUT : Replication Operation : 100111110
