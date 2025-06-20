`timescale 1ns / 1ps

module FIFObuffer_8bit_tb;

    reg Clk;
    reg Rst;
    reg EN;
    reg RD;
    reg WR;
    reg [7:0] dataIn;

    wire [7:0] dataOut;
    wire EMPTY;
    wire FULL;

    
    FIFObuffer_8bit uut (
        .Clk(Clk),
        .Rst(Rst),
        .EN(EN),
        .RD(RD),
        .WR(WR),
        .dataIn(dataIn),
        .dataOut(dataOut),
        .EMPTY(EMPTY),
        .FULL(FULL)
    );

    
    initial Clk = 0;
    always #5 Clk = ~Clk;

    
    initial begin
        
        $dumpfile("fifo_tb.vcd");   
        $dumpvars(0, FIFObuffer_8bit_tb);

        
        EN = 1;
        Rst = 1;
        WR = 0;
        RD = 0;
        dataIn = 0;

        #20 Rst = 0; 

      
        repeat (4) begin
            @(posedge Clk);
            WR = 1;
            dataIn = dataIn + 8'd1;
        end

        @(posedge Clk);
        WR = 0;

        
        #20;

    
        repeat (4) begin
            @(posedge Clk);
            RD = 1;
        end

        @(posedge Clk);
        RD = 0;

      
        dataIn = 8'hAA;
        repeat (8) begin
            @(posedge Clk);
            WR = 1;
        end
        @(posedge Clk);
        WR = 0;

        
        repeat (8) begin
            @(posedge Clk);
            RD = 1;
        end
        @(posedge Clk);
        RD = 0;

        #20;

        $finish;
    end

endmodule
