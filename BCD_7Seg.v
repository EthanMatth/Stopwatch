module BCD_7Seg(o1, o2, o3, o4, a, b, c, d, e, f, g);
    input o1, o2, o3, o4;
    output a, b, c, d, e, f, g;

    assign a = (o2 & ~o4) | (~o1 & ~o2 & ~o3 & o4) ;
    assign b = o2 & (o3 ^ o4);
    assign c = ~o2 & o3 & ~o4;
    assign d = ~o3 & (o2 ^ o4) | (o2 & o3 & o4);
    assign e = (o2 & ~o3) | o4;
    assign f = (o3 & o4) | (~o1 & ~o2 & o4) (~o2 & o3);
    assign g = (~o1 & ~o2 & ~o3) | (o2 & o3 &o4);

endmodule