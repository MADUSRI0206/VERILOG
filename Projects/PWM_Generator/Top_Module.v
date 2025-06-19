module PWM_Generator(
    input clk,              // 100MHz clock input
    input [7:0] sw,         // Switches to control duty cycle
    output reg led_out      // PWM-controlled LED output
);

    // Clock Divider to generate ~1kHz PWM clock
    reg [16:0] clk_div = 0;  // Enough bits to divide 100MHz to ~1kHz
    reg pwm_clk = 0;

    always @(posedge clk) begin
        clk_div <= clk_div + 1;
        if (clk_div == 49999) begin    // 100_000_000 / (49999+1) / 2 = 1kHz
            clk_div <= 0;
            pwm_clk <= ~pwm_clk;
        end
    end

    // PWM Generator with 8-bit resolution
    reg [7:0] counter = 0;

    always @(posedge pwm_clk) begin
        counter <= counter + 1;
        led_out <= (counter < sw) ? 1'b1 : 1'b0;
    end

endmodule
