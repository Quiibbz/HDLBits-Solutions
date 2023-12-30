module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output [7:0] q
);
    
    genvar i;
    generate for(i = 0; i < 8; i = i + 1)
        begin: DFF
            dFlipFlop instance_i(.clk(clk), .reset(reset), .d(d[i]), .q(q[i]));
        end
    endgenerate

endmodule

module dFlipFlop(input clk, input reset, input d, output q);
    always@(posedge clk) begin 
        if(reset) q <= 0;
        else q <= d;
    end
endmodule