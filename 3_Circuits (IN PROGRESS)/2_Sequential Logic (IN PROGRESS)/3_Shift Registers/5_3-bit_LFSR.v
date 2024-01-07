module top_module (
	input [2:0] SW,      // R
	input [1:0] KEY,     // L and clk
	output [2:0] LEDR);  // Q
    
    FlipFlop instance0(KEY[0], SW[0], LEDR[2], KEY[1], LEDR[0]);
    FlipFlop instance1(KEY[0], SW[1], LEDR[0], KEY[1], LEDR[1]);
    FlipFlop instance2(KEY[0], SW[2], (LEDR[1]^LEDR[2]), KEY[1], LEDR[2]);

endmodule

module FlipFlop(input clk, input r, input q, input l, output reg Q);
    always@(posedge clk) Q <= l ? r : q;
endmodule