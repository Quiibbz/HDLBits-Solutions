module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    wire[2:0] o;
    bcd_fadd instance0(.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(o[0]), .sum(sum[3:0]));
    bcd_fadd instance1(.a(a[7:4]), .b(b[7:4]), .cin(o[0]), .cout(o[1]), .sum(sum[7:4]));
    bcd_fadd instance2(.a(a[11:8]), .b(b[11:8]), .cin(o[1]), .cout(o[2]), .sum(sum[11:8]));
    bcd_fadd instance3(.a(a[15:12]), .b(b[15:12]), .cin(o[2]), .cout(cout), .sum(sum[15:12]));

endmodule