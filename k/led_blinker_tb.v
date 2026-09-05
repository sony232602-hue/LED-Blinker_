`timescale 1ns/1ps

module led_blinker_tb;

    reg clk;
    reg reset;
    wire led;

    led_blinker #(
        .MAX_COUNT(5)
    ) uut (
        .clk(clk),
        .reset(reset),
        .led(led)
    );

    // Clock generation
    initial begin
        clk = 0;

        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin

        $dumpfile("waveform.vcd");
        $dumpvars(0, led_blinker_tb);

        $monitor(
            "Time = %0t | Reset = %b | LED = %b",
            $time,
            reset,
            led
        );

        reset = 1;

        #20;

        reset = 0;

        #200;

        $finish;
    end

endmodule