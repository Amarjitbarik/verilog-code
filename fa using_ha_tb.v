`include "full adder_using_ha.v"
module tb;
	reg a,b,cin;
	wire sum,cout;
	fa dut(a,b,cin,sum,cout);
		initial begin
		repeat(10) begin;
		a=$random;
		b=$random;
		#1;
		$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
		end
	end
endmodule
