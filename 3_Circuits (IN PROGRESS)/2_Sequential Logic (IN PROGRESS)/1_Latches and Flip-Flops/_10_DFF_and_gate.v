module top_module (
    input clk,
    input in, 
    output out);

    D_latch latch(.clk(clk), .d(in^out), .q(out));
    
endmodule

module D_latch(input clk, input d, output q);
    always@(posedge clk) q <= d;
endmodule
