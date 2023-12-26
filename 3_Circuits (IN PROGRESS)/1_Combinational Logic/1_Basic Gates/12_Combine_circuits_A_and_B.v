module top_module (input x, input y, output z);

    wire[3:0] o;
    A IA1(.x(x), .y(y), .z(o[0]));
    B IB1(.x(x), .y(y), .z(o[1]));
    A IA2(.x(x), .y(y), .z(o[2]));
    B IB2(.x(x), .y(y), .z(o[3]));
    assign z = (o[0] | o[1]) ^ (o[2] & o[3]); 
    
endmodule

module A (input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule

module B (input x, input y, output z);
    assign z = x == y;
endmodule