module stopwatch(clock, reset, start_stop, seg1, seg2, seg3, seg4);
input clock, reset, start_stop;
output [6:0] seg1, seg2, seg3, seg4;

wire clk_div, Q;
wire [3:0] O1, O2, O3, O4, Ceq9, inc;


clk_divider div(clock, 1'b0, clk_div);
TFF0 TFF(1'b1, start_stop, 1'b0, Q);

assign inc[0] = Q;
Count10 C1 (clk_div, reset, inc[0], O1, Ceq[0]);
BCD_7Seg hundreth(O1[3], O1[2], O1[1], O1[0], seg1[0], seg1[1], seg1[2], seg1[3], seg1[4], seg1[5], seg1[6]);

assign inc[1] = Ceq[0] & inc[0];
Count10 C2 (clk_div, reset, inc[1], O2, Ceq[1]);
BCD_7Seg thenth(O2[3], O2[2], O2[1], O2[0], seg2[0], seg2[1], seg2[2], seg2[3], seg2[4], seg2[5], seg2[6]);

assign inc[2] = Ceq[1] & inc[1];
Count10 C3 (clk_div, reset, inc[2], O3, Ceq[2]);
BCD_7Seg ones(O3[3], O3[2], O3[1], O3[0], seg3[0], seg3[1], seg3[2], seg3[3], seg3[4], seg3[5], seg3[6]);

assign inc[3] = Ceq[2] & inc[2];
Count6 C4 (clk_div, reset, inc[3], O4, Ceq[3]);
BCD_7Seg tens(O4[3], O4[2], O4[1], O4[0], seg4[0], seg4[1], seg4[2], seg4[3], seg4[4], seg4[5], seg4[6]);

endmodule