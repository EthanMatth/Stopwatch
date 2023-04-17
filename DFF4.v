module DFF4 (in, clock, reset, out);
input [3:0] in;
input clock, reset;

output [3:0] out;

DFF0
D0 (in[0], clock, reset, out[0]),
D1 (in[1], clock, reset, out[1]),
D2 (in[2], clock, reset, out[2]),
D3 (in[3], clock, reset, out[3]);
    
endmodule