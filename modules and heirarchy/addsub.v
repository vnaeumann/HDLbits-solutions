module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]alp;
    wire cout, c2;
    wire [15:0] s1, s2;
	assign alp = b ^ {32{sub}};
    add16 inst1( a[15:0],alp[15:0],sub,s1,cout);
    add16 inst2( a[31:16], alp[31:16],cout ,s2,c2 );
    assign sum = {s2, s1};
    

endmodule
