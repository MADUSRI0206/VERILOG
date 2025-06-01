//Demonstrate a race condition using two always blocks assigning to the same variable.

module race_condition;
  reg clk,x;
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  always @(posedge clk)
    x = 1;
  always @(posedge clk)
    x = 0;
  initial begin
    $monitor("Time=%0t: x=%b", $time, x);
    $dumpfile("wave.vcd");
    $dumpvars(0,race_condition);
    #30 $finish;
  end
endmodule
