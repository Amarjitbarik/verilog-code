module jk_ff(clk,res,j,k,q);
	input clk,res,j,k;
	output reg q;
	always @(posedge clk) begin
		if(res==1) q=0;
		else begin
			q=({j,k}==2'b00)?q:({j,k}==2'b01)?0 :({j,k}==2'b10 ? 1:~q;
		end
	end
endmodule
