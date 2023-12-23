module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire cout;
    wire[15:0] sum0, sum1;
    add16 instance1(.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(cout), .sum(sum[15:0]));
    add16 instance2(.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sum0));
    add16 instance3(.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sum1));
    
    always@(*) begin
        case(cout)
            0: sum[31:16] = sum0;
            1: sum[31:16] = sum1;
        endcase
    end
    
endmodule
