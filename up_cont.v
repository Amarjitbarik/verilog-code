module up_count(clk,res,count);
	input clk,res;
	output reg[2:0]count;

	always@(posedge clk) begin
	if (res==1)count=0;
	else count=count+1;
	end
endmodule
