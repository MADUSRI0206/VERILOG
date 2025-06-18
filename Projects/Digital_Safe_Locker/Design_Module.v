module digital_safe_lock (
    input wire clk,
    input wire reset,     // pb[1]
    input wire enter,     // pb[0]
    input wire bit_in,    // sw[0]
    output reg unlocked,  // led[0]
    output reg [7:0] seg, // Seven_Seg[7:0]
    output reg [3:0] digit // digit[3:0]
);

    // FSM state
    localparam S0 = 3'd0,
               S1 = 3'd1,
               S2 = 3'd2,
               S3 = 3'd3,
               S4 = 3'd4,
               ERROR = 3'd5;

    reg [2:0] state, next_state;

    // Clock divider for button/sample rate (~0.5s)
    reg [24:0] clkdiv = 0;
    wire slow_clk = clkdiv[15];
    always @(posedge clk) clkdiv <= clkdiv + 1;

    // Synchronize and debounce 'enter'
    reg enter_d, enter_dd;
    always @(posedge slow_clk) begin
        enter_d <= enter;
        enter_dd <= enter_d;
    end
    wire enter_clean = enter_d & ~enter_dd; // rising edge detection

    // FSM logic
    always @(posedge slow_clk or posedge reset) begin
        if (reset)
            state <= S0;
        else if (enter_clean)
            state <= next_state;
    end

    always @(*) begin
        next_state = S0;
        unlocked = 0;
        case (state)
            S0: next_state = (bit_in == 1) ? S1 : ERROR;
            S1: next_state = (bit_in == 0) ? S2 : ERROR;
            S2: next_state = (bit_in == 1) ? S3 : ERROR;
            S3: next_state = (bit_in == 1) ? S4 : ERROR;
            S4: begin
                unlocked = 1;
                next_state = S0;
            end
            ERROR: next_state = S0;
        endcase
    end

    // 7-segment active-low values
    always @(*) begin
        digit = 4'b1110; // enable only digit 0
        case (state)
            S0:     seg = 8'b11000000; // 0
            S1:     seg = 8'b11111001; // 1
            S2:     seg = 8'b10100100; // 2
            S3:     seg = 8'b10110000; // 3
            S4:     seg = 8'b10011001; // 4
            ERROR:  seg = 8'b10000110; // E
            default:seg = 8'b11111111; // Blank
        endcase
    end

endmodule
