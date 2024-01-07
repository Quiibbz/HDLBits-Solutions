module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    
    reg[2:0] o;
    FlipFlop instance0(clk, resetn, in, o[2]);
    FlipFlop instance1(clk, resetn, o[2], o[1]);
    FlipFlop instance2(clk, resetn, o[1], o[0]);
    FlipFlop instance3(clk, resetn, o[0], out);

endmodule

module FlipFlop(input clk, input R, input D, output reg Q);
    always@(posedge clk) begin
        if(~R) Q <= 0;
        else Q <= D;
    end
endmodule