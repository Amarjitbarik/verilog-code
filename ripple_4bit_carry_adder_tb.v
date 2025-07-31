`include "ripple_4bit_carry_adder.v"
module tb;
	reg[3:0]a,b;
	reg cin;
	wire [3:0]sum;
	wire cout;
	ripple_4bit_carry_adder dut(a,b,sum,cin,cout);
	initial begin
		repeat(10) begin
		a=4'b0000;
		b=4'b0001;
		#1;
		$display("a=%b,b=%b,sum=%b,cin=%b,cout=%b",a,b,sum,cin,cout);
		end
	end
endmodule

