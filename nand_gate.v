module nand_gate(a,b,y);
	input a,b;
	output y;
	nand g1(y,a,b);
endmodule
