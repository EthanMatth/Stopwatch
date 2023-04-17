module Count6 (clk, inc, reset, count, count_eq_9);
    input clk, inc, reset;

    output [3:0] count;
    output count_eq_9;

    wire [3:0] RCA_out;
    wire F, rst;

    assign F = (count == 4'b0110) ? 1 : 0;
    assign count_eq_9 = F;

    assign rst = (F && inc) || reset;

    RCA Ripple (count, inc, RCA_out);
    DFF4 DFF0 (RCA_out, clk, rst, count);
    
endmodule