module top_module (
    input clk,
    input x,
    output z
); 

    reg[2:0] o;
    always@(posedge clk) begin
        o[0] <= x ^ o[0];
        o[1] <= x & ~o[1];
        o[2] <= x | ~o[2];
    end
    assign z = ~(|o);

endmodule