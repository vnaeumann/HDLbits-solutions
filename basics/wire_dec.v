`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire ab;
    wire cd;
    wire op;
    
    assign ab = a&b;
    assign cd = c&d;
    assign op = ab | cd;
    assign out_n = ~op;
    assign out = op;

endmodule
