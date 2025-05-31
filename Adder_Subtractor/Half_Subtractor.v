//DESIGN

module half_subtractor(input a,b,output diff,borrow);
assign diff=a^b;
assign borrow = (~a)&b;
endmodule

//TESTBENCH

module half_subtractor_tb();
reg a,b;
  wire diff,borrow;
  half_subtractor dut(.a(a),.b(b),.diff(diff),.borrow(borrow));
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,half_subtractor_tb);
    $monitor(" A :%b   B  :%b   DIFF  :%b   BORROW  :%b",a,b,diff,borrow);
    #5;
    a=0;b=0; #5;
    a=0;b=1; #5;
    a=1;b=0; #5;
    a=1;b=1; #5;
    $finish;
  end
endmodule
