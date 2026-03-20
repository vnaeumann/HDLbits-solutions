module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] s1, s2;
    wire co, cc;
    add16 inst1(a[15:0], b[15:0], 0, s1, co);
    add16 inst2(a[31:16],b[31:16], co, s2, cc);
    assign sum = {s2, s1};

endmodule
