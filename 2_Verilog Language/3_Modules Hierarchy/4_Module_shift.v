module top_module ( input clk, input d, output q );
    wire[1:0] o;
    my_dff instance1(clk, d, o[1]);
    my_dff instance2(clk, o[1], o[0]);
    my_dff instance3(clk, o[0], q);
endmodule