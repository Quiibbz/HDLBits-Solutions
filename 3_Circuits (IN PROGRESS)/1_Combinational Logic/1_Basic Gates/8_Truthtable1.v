module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    always@(*) begin
    	if((~x3&x2&~x1) | (~x3&x2&x1) | (x3&~x2&x1) | (x3&x2&x1)) f = 1;
    	else f = 0;
    end

endmodule