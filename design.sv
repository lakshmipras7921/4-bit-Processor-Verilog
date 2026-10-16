module processor (
    input clk,
    input reset,
    output reg [3:0] result,
    output reg zero
);

    reg [3:0] registers [0:3];
    reg [1:0] state;

    localparam LOAD = 2'b00,
               ADD  = 2'b01,
               SUB  = 2'b10,
               DONE = 2'b11;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            registers[0] <= 4'd5;
            registers[1] <= 4'd3;
            registers[2] <= 4'd0;
            registers[3] <= 4'd0;
            result <= 4'd0;
            zero <= 1'b0;
            state <= LOAD;
        end
        else begin
            case (state)
                LOAD: begin
                    registers[2] <= registers[0] + registers[1];
                    state <= ADD;
                end

                ADD: begin
                    registers[3] <= registers[0] - registers[1];
                    state <= SUB;
                end

                SUB: begin
                    result <= registers[2];
                    zero <= (registers[2] == 4'd0);
                    state <= DONE;
                end

                DONE: begin
                    result <= result;
                    zero <= zero;
                end
            endcase
        end
    end
endmodule
