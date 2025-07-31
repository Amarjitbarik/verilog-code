module dff(clk,res,d,q);
	input res,clk,d;
	output reg q;
	always @(posedge clk) begin
		if (res==1) q=0;
		else q=d;
		end
endmodule
