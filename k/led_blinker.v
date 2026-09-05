module led_blinker #(
    parameter MAX_COUNT = 5
)(
    input  wire clk,
    input  wire reset,
    output reg  led
);

    reg [31:0] count;

    always @(posedge clk) begin

        if (reset) begin
            count <= 0;
            led   <= 0;
        end

        else if (count == MAX_COUNT - 1) begin
            count <= 0;
            led   <= ~led;
        end

        else begin
            count <= count + 1;
        end

    end

endmodule