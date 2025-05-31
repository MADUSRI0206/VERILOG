//DESIGN

module full_subtractor(input a,b,c,output diff,borrow);
assign diff=a^b^b;
assign borrow = ((~a)&b)|((~a)&c)|(b&c);
endmodule

//TESTBENCH

module full_subtractor_tb();
reg a,b,c;
  wire diff,borrow;
  full_subtractor dut(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,full_subtractor_tb);
    $monitor(" A :%b   B  :%b  C  :%b DIFF  :%b   BORROW  :%b",a,b,c,diff,borrow);
    #5;
    a=0;b=0;c=0; #5;
    a=0;b=0;c=1; #5;
    a=0;b=1;c=0; #5;
    a=0;b=1;c=1; #5;
    a=1;b=0;c=0; #5;
    a=1;b=0;c=1; #5;
    a=1;b=1;c=0; #5;
    a=1;b=1;c=1; #5;
    $finish;
  end
endmodule
