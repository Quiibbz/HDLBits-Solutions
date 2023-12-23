`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire[1:0] o;
    assign o[0] = a && b;
    assign o[1] = c && d;
    assign out = o[0] || o[1];
    assign out_n = ~out; 

endmodule
