/* Manipulate Vector Using Part Select
 Assign and modify specific bits using both busA[i] = bus[i]; and busA = bus[3:0]; */

module vector_part_select;
  reg [7:0] bus;
  reg [3:0] busA;  
  integer i;
  initial begin
    bus = 8'b11010110;
    for (i = 0; i < 4; i = i + 1)
      begin
      busA[i] = bus[i];
      end
    $display("busA using individual bits = %b", busA);
    busA = bus[3:0];
    $display("busA using part-select     = %b", busA);
  end
endmodule
