module top_module (
    input clk,
    input in, 
    output out);
    wire x;
    always@(posedge clk) begin
        x= in^out;
        out=x;
    end

endmodule
