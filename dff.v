module dff_gate(q,qbar,clk,d);

input d,clk;
output q,qbar;
assign notd = ~d;

wire nand1_out; 
wire nand2_out; 

nand(nand1_out, d,clk);
nand(nand2_out, notd,clk);
nand(q,qbar,nand1_out);
nand(qbar,q,nand2_out);

endmodule