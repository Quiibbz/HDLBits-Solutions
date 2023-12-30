module top_module (
    input clk,
    input d,
    output q
);
    
    wire[1:0] o;
    posDFF positive(.clk(clk), .d(d), .q(o[0]));
    negDFF negative(.clk(clk), .d(d), .q(o[1]));
    assign q = clk ? o[0] : o[1];
    

endmodule

module negDFF(input clk, input d, output q);
    always@(negedge clk) q <= d;
endmodule

module posDFF(input clk, input d, output q);
    always@(posedge clk) q <= d;
endmodule