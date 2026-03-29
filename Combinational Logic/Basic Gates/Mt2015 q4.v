module top_module (input x, input y, output z);
    wire a,b,c,d,e,f;
    a1 inst1(x,y,a);
    a2 inst11(x,y,b);
    a1 inst2(x,y,c);
    a2 inst22(x,y,d);
    assign e = a|b;
    assign f = c&d;
    assign z = f^e;

endmodule

module a1( input x, input y, output z );
    assign z = ~(x ^ y);
endmodule    
module a2 (input x, input y, output z);
    assign z = (x^y) & x;
endmodule
