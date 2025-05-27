module basic_gates_with_primitives;
  reg A, B;
  wire AND_OUT, OR_OUT, NOT_OUT, NAND_OUT, NOR_OUT, XOR_OUT, XNOR_OUT;
  and  (AND_OUT, A, B);
  or   (OR_OUT, A, B);
  not  (NOT_OUT, A);
  nand (NAND_OUT, A, B);
  nor  (NOR_OUT, A, B);
  xor  (XOR_OUT, A, B);
  xnor (XNOR_OUT, A, B);
  initial begin
    $dumpfile("basic_gates.vcd");
    $dumpvars(0, basic_gates_with_primitives);
    $display("A B | AND OR NOT NAND NOR XOR XNOR");
    $monitor("%b %b |  %b   %b   %b    %b    %b   %b    %b", A, B, AND_OUT, OR_OUT, NOT_OUT, NAND_OUT, NOR_OUT, XOR_OUT, XNOR_OUT);
    // Test combinations
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;
  end
endmodule
