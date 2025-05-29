// Create a comparator module that uses ==, <, and > to output ceq, clt, and cgt. 

//DESIGN :

module comparator(input [3:0] x,y,output ceq,clt,cgt);
  assign ceq= (x==y);
  assign clt= (x<y);
  assign cgt= (x>y);
endmodule

//TESTBENCH:

module comparator_tb();
reg [3:0]x;
reg [3:0]y;
wire ceq,clt,cgt;
comparator dut(.x(x), .y(y), .ceq(ceq),.clt(clt),.cgt(cgt));
initial begin
x = 4'b0000; y=4'b1101; #5; $display("ceq : %b  clt : %b  cgt  : %b",ceq,clt,cgt);
x = 4'b1101; y=4'b0001; #5; $display("ceq : %b  clt : %b  cgt  : %b",ceq,clt,cgt);
x = 4'b1010; y=4'b1111; #5; $display("ceq : %b  clt : %b  cgt  : %b",ceq,clt,cgt);
x = 4'b0100; y=4'b0100; #5; $display("ceq : %b  clt : %b  cgt  : %b",ceq,clt,cgt);
x = 4'b1111; y=4'b0000; #5; $display("ceq : %b  clt : %b  cgt  : %b",ceq,clt,cgt);
$finish;
end
endmodule

/* OUTPUT :
    ceq : 0  clt : 1  cgt  : 0
    ceq : 0  clt : 0  cgt  : 1
    ceq : 0  clt : 1  cgt  : 0
    ceq : 1  clt : 0  cgt  : 0
    ceq : 0  clt : 0  cgt  : 1  */
