module t_flipflop (
    input t,
    input clk,
    input clear,
    output reg q,
    output qbar
);

assign qbar = ~q;

always @(posedge clk or negedge clear) begin
    if (!clear) begin
        q <= 0;
    end else if (t) begin
        q <= ~q;
    end
end
endmodule