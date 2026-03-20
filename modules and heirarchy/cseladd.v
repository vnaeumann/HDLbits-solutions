module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c3, c2, cc;
    wire [15:0] suma, sumb, sumd;
    add16 inst1(a[15:0], b[15:0], 0, sumd, cc);
    add16 inst2(a[31:16], b[31:16], 0, suma, c2);
    add16 inst3(a[31:16], b[31:16], 1, sumb, c3);
    assign sum = (cc==0)? {suma, sumd} : {sumb, sumd};  

endmodule
