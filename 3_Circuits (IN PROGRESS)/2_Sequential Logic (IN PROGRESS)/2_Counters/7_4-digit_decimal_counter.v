module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);
    
    count10 counter1(clk, reset, 1, q[3:0]);
    count10 counter2(clk, reset, ena[1], q[7:4]);
    count10 counter3(clk, reset, ena[2], q[11:8]);
    count10 counter4(clk, reset, ena[3], q[15:12]);
    assign ena = {q[11:0] == 12'h999, q[7:0] == 8'h99, q[3:0] == 4'h9};

endmodule

module count10 (input clk, input reset, input ena, output [3:0] q);
    always@(posedge clk) begin
        if(reset) q <= 0;
        else if(~ena) q <= q;
        else begin
            if(q == 9) q <= 0;
            else q <= q + 1;
        end
    end
endmodule