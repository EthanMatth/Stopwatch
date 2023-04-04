module RCA(A, inc, S, C);
    input [3:0] A;
    input inc;

    output [3:0] S, C;

    HA
    h0 (A[0], inc, S[0], C[0]);
    h1 (A[1], C[0], S[1], C[1]);
    h2 (A[2], C[1], S[2], C[2]);
    h3 (A[3], C[2], S[3], C[3]);

endmodule