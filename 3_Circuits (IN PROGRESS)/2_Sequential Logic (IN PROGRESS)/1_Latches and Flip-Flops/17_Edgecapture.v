module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);

    integer i;
    reg[31:0] past;
    always@(posedge clk) begin
        if(reset) out <= 0;
        else for(i = 0; i < 32; i = i + 1) begin
            out[i] <= (~in[i] & past[i]) ? 1 : out[i];
        end
        past <= in;
    end
    
endmodule