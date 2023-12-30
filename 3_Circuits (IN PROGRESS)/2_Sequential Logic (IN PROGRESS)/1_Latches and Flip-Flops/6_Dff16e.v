module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
    
    genvar i;
    generate for(i = 0; i < 8; i = i + 1)
        begin: DFF
            dFlipFlop lower_instances(.clk(clk), .resetn(resetn), .byteena(byteena[0]), .d(d[i]), .q(q[i]));
            dFlipFlop higher_instances(.clk(clk), .resetn(resetn), .byteena(byteena[1]), .d(d[i+8]), .q(q[i+8]));
        end
    endgenerate

endmodule

module dFlipFlop(input clk, input resetn, input byteena, input d, output q);
    always@(posedge clk) begin
        if(~resetn) q <= 0;
        else q <= byteena ? d : q;
    end
endmodule