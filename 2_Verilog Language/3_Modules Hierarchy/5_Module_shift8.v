module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    wire[23:0] o;
    my_dff8 instance1(.clk(clk), .d(d), .q(o[7:0]));
    my_dff8 instance2(.clk(clk), .d(o[7:0]), .q(o[15:8]));
    my_dff8 instance3(.clk(clk), .d(o[15:8]), .q(o[23:16]));
    always@(*) begin
        case(sel)
            0: q = d;
            1: q = o[7:0];
            2: q = o[15:8];
            3: q = o[23:16];
        endcase
    end
    
endmodule
