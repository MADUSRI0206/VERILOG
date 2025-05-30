//DESIGN 

module full_adder (
    input A,
    input B,
    input CIN,
    output SUM,
    output COUT );
    assign SUM  = A ^ B ^ CIN; 
    assign COUT = (A & B) | (B & CIN) | (A & CIN); 
endmodule

//TESTBENCH

module tb_full_adder;
    reg A, B, CIN;
    wire SUM, COUT;
    full_adder uut (.A(A),.B(B),.CIN(CIN),.SUM(SUM),.COUT(COUT));
    initial begin
        $display("A B CIN | SUM COUT");
        $monitor("%b %b  %b  |  %b    %b", A, B, CIN, SUM, COUT);
        A = 0; B = 0; CIN = 0; #10;
        A = 0; B = 0; CIN = 1; #10;
        A = 0; B = 1; CIN = 0; #10;
        A = 0; B = 1; CIN = 1; #10;
        A = 1; B = 0; CIN = 0; #10;
        A = 1; B = 0; CIN = 1; #10;
        A = 1; B = 1; CIN = 0; #10;
        A = 1; B = 1; CIN = 1; #10;
        $finish;
    end
endmodule

/* OUTPUT
A B CIN | SUM COUT
0 0  0  |  0    0
0 0  1  |  1    0
0 1  0  |  1    0
0 1  1  |  0    1
1 0  0  |  1    0
1 0  1  |  0    1
1 1  0  |  0    1
1 1  1  |  1    1 */
