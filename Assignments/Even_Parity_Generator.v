/* Implement a 9-bit even parity generator using ^x and ~:
 assign ep = ^x; assign op = ~ep; */

module even_parity_generator;
  reg [8:0]x;
  assign ep=^x;
  assign op=~ep;
  initial begin
    x=9'b101011011;
    #5;
    $display("Even Parity Generator : %b ",ep);
    $display("Odd Parity Generator : %b ",op);
  end
endmodule

/* OUTPUT : 
  Even Parity Generator : 0 
  Odd Parity Generator : 1 */
