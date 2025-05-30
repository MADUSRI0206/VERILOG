//DESIGN

module half_adder (
    input A,
    input B,
    output SUM,
    output CARRY
);
    assign SUM = A ^ B;      
    assign CARRY = A & B;   
endmodule

//TESTBENCH

module tb_half_adder;
    reg A, B;
    wire SUM, CARRY;
    half_adder uut (.A(A),.B(B),.SUM(SUM),.CARRY(CARRY));
    initial begin
        A = 0; B = 0; #10;
        $display("%b %b |  %b    %b", A, B, SUM, CARRY);

        A = 0; B = 1; #10;
        $display("%b %b |  %b    %b", A, B, SUM, CARRY);

        A = 1; B = 0; #10;
        $display("%b %b |  %b    %b", A, B, SUM, CARRY);

        A = 1; B = 1; #10;
        $display("%b %b |  %b    %b", A, B, SUM, CARRY);

        $finish;
    end
endmodule

/* OUTPUT :
0 0 |  0    0
0 1 |  1    0
1 0 |  1    0
1 1 |  0    1 */
