`include "jk_ff.v"
module tb;
	reg clk,res,j,k;
	wire q;
	jk_ff dut(.clk(clk),.res(res),.j(j),.k(k),.q(q));

	always #5 clk=~clk;
	initial begin
		clk=0;
		res=1;
		#10;
		res=0;
		repeat (50) begin
			{j,k}=$random;
			#7;
		end
		#100;
		$finish;
	end
endmodule

