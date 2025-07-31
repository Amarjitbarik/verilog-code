`include "up_cont.v"
module tb;
	reg res,clk;
	wire[2:0]count;
	up_count dut(.clk(clk).res(res).count(count));
	always #5 clk=~clk;
	initial begin
	clk=0;		
	res=1;
	repeat (2)@ (posedge clk);
	res=0;
	#200;
	$finish;
	end
endmodule

