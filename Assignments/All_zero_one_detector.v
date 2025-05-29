/* Write a module to detect all-zero and all-one using:
 assign zero = ~(|x); assign one = &x; */

//DESIGN: 

module all_zero_one_detector(input [3:0] x,output zero,one);
  assign zero = ~(|x); 
  assign one  = &x;
endmodule

//TESTBENCH:

module all_zero_one_tb();
reg  [3:0] x;
wire zero, one;
all_zero_one_detector dut(.x(x), .zero(zero), .one(one));
initial begin
$display("x     | zero one");
x = 4'b0000; #5; $display("%b |  %b    %b", x, zero, one);
x = 4'b1101; #5; $display("%b |  %b    %b", x, zero, one);
x = 4'b1010; #5; $display("%b |  %b    %b", x, zero, one);
x = 4'b0100; #5; $display("%b |  %b    %b", x, zero, one);
x = 4'b1111; #5; $display("%b |  %b    %b", x, zero, one);
$finish;
end
endmodule

/* OUTPUT: 
    x     | zero one
    0000 |  1    0
    1101 |  0    0
    1010 |  0    0
    0100 |  0    0
    1111 |  0    1   */
