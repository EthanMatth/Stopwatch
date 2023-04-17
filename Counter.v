module Counter (clock, reset, inc, a, b, c, d, e, f, g);
    input clock, reset, inc;
    output a, b, c, d, e, f, g;

    wire clk_out, carry;
    wire [3:0] count;

    clk_divider div(clock, reset, clk_out);
    Count10 o1(clk_out, inc, reset, count, carry);
    BCD_7Seg bcd(count[3], count[2], count[1], count[0], a, b, c, d, e, f, g);
    
endmodule