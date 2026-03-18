module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire a1;
    wire a2;
    wire a3;
    wire a4;
    
   assign a1 = p2a & p2b;
   assign a2 = p1a & p1b & p1c;
   assign a3 = p1e & p1f & p1d;
   assign a4 = p2c & p2d;
    assign p2y = a1 | a4;
    assign p1y = a2 | a3;



endmodule
