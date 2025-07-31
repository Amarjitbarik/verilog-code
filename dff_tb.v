`include "dff.v"
module tb;
	reg res,clk,d;
	wire q;
	dff dut(.clk(clk).res(res).d(d));
	always #5 clk=~clk;
	initial begin
	clk=0;
	res=1;
	#10;
	res=0;
	repeat(20) begin
		{d}=$random;
		#7;
		end
		#100;
		$finish;
	end
endmodule
