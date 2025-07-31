`include "nand_gate.v"
module tb;
	reg a,b;
	wire y;
	nand_gate dut(a,b,y);
	initial begin
		repeat(5) begin
		a=$random;
		b=$random;
		#1;
		$display("a=%b,b=%b,y=%b",a,b,y);
		end
	end
endmodule

// a=0,b=1,y=1
//# a=1,b=1,y=1
//# a=1,b=1,y=1
//# a=1,b=0,y=1
//# a=1,b=1,y=1
//
