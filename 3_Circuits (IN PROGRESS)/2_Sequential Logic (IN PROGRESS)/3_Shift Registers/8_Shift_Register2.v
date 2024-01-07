module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
);
    
    MUXDFF instance_0(KEY[0], KEY[3], SW[3], KEY[1], KEY[2], LEDR[3]);
    genvar i;
    generate 
        for(i = 3; i > 0; i = i - 1) begin:
            MUXDFF
            MUXDFF instance_i(KEY[0], LEDR[i], SW[i-1], KEY[1], KEY[2], LEDR[i-1]);
        end
    endgenerate

endmodule



module MUXDFF(input clk,input w, input R, input E, input L,output Q);
    always@(posedge clk) Q <= L ? R : (E ? w : Q);
endmodule