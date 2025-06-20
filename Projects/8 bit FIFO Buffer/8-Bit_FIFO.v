module FIFObuffer_8bit (
    input wire Clk,
    input wire Rst,
    input wire EN,
    input wire RD,
    input wire WR,
    input wire [7:0] dataIn,
    output reg [7:0] dataOut,
    output wire EMPTY,
    output wire FULL
);

    reg [2:0] readCounter = 0;
    reg [2:0] writeCounter = 0;
    reg [2:0] Count = 0;

  reg [7:0] FIFO [0:7];

    assign EMPTY = (Count == 0);
    assign FULL  = (Count == 8);

    always @(posedge Clk) begin
      if (!EN) begin
        end else begin
            if (Rst) begin
                readCounter <= 0;
                writeCounter <= 0;
                Count <= 0;
                dataOut <= 8'd0;
            end
            else begin
                if (WR && !FULL) begin
                    FIFO[writeCounter] <= dataIn;
                    writeCounter <= (writeCounter == 7) ? 0 : writeCounter + 1;
                    Count <= Count + 1;
                end
                else if (RD && !EMPTY) begin
                    dataOut <= FIFO[readCounter];
                    readCounter <= (readCounter == 7) ? 0 : readCounter + 1;
                    Count <= Count - 1;
                end
            end
        end
    end
endmodule
