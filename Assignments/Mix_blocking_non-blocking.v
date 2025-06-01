//Mix = and <= in one block and explain simulation output.

module mix;
  reg clk,a,b;
  initial begin
    a = 0;
    b = 1;
    clk = 0;
    #5 clk = 1;
    #5 clk = 0;
    #5 $finish;
  end
  always @(posedge clk) begin
    a = b; 
    b <= a;
  end
  initial begin
    $monitor("Time=%0t: a=%b, b=%b", $time, a, b);
    $dumpfile("wave.vcd");
    $dumpvars(0,mix);
  end
endmodule
