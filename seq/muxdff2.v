module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    wire d,f;
    
    always@(posedge clk) begin
        if(E) f=w;
        else if(!E) f = Q;
        if(L) d=R;
        else d=f;
        
        Q=d;
    end

endmodule
