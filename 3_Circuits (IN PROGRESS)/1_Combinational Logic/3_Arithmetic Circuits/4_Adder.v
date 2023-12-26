module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire[2:0] o;
    fadd instance0(.x(x[0]), .y(y[0]), .cout(o[0]), .sum(sum[0]));
    fadd instance1(.x(x[1]), .y(y[1]), .cin(o[0]), .cout(o[1]), .sum(sum[1]));
    fadd instance2(.x(x[2]), .y(y[2]), .cin(o[1]), .cout(o[2]), .sum(sum[2]));
    fadd instance3(.x(x[3]), .y(y[3]), .cin(o[2]), .cout(sum[4]), .sum(sum[3]));

endmodule

module fadd(input x, input y, input cin, output cout, output sum);
    assign sum = x ^ y ^ cin;
    assign cout = x & y | x & cin | y & cin;
endmodule