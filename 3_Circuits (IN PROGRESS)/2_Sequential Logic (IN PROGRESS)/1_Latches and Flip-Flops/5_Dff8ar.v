module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    
    genvar i;
    generate for(i = 0; i < 8; i = i + 1)
        begin: DFF
            dFlipFlop(.clk(clk), .areset(areset), .d(d[i]), .q(q[i]));
        end
    endgenerate

endmodule

module dFlipFlop(input clk, input areset, input d, output q);
    always@(posedge clk or posedge areset) begin
        if(areset) q <= 0;
    	else q <= d;
    end
endmodule