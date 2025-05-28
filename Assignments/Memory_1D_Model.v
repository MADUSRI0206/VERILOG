/* 1D Memory Model
 Declare reg [7:0] mem[7:0];
 Write and read values to/from it. */

module memory_1d_model;
  reg [7:0] mem [7:0];
  integer i;
  initial begin
    for (i = 0; i < 8; i = i + 1)
      mem[i] = i * 8'b10100111;
    for (i = 0; i < 8; i = i + 1)
      $display("mem[%0d] = %b", i, mem[i]);
  end
endmodule
