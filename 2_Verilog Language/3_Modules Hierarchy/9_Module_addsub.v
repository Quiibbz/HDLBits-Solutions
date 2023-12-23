module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout;
    wire[31:0] o;
    assign o = b ^ {32{sub}};
    add16 instance1(.a(a[15:0]), .b(o[15:0]), .cin(sub), .cout(cout), .sum(sum[15:0]));
    add16 instance2(.a(a[31:16]), .b(o[31:16]), .cin(cout), .sum(sum[31:16]));

endmodule