`timescale 1ns/1ps

module testbench;

    reg clk;
    reg reset;

    wire [3:0] result;
    wire zero;

    processor uut (
        .clk(clk),
        .reset(reset),
        .result(result),
        .zero(zero)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;

        #10;
        reset = 0;

        #50;

        $display("================================");
        $display("4-BIT PROCESSOR SIMULATION");
        $display("================================");
        $display("Addition Result = %0d", result);
        $display("Zero Flag       = %b", zero);
        $display("================================");

        $finish;
    end

endmodule
