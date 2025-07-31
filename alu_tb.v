`include"alu_fun_beh_case.v"
module tb;
	reg [31:0]a,b;
	reg [2:0]cs;
	wire [31:0]y;
	alu dut(.a(a),.b(b),.cs(cs),.y(y));
	initial begin
		a=15;
		b=3;
		$monitor("%0t: a=%0d b=%0d cs=%b y=%0d",$time,a,b,cs,y);
		repeat(10) begin
			cs=$random;
			#1;
		//	$display("a=%0d b=%0d cs=%b y=%0d",a,b,cs,y);
		end
	end
endmodule

//
//# 0: a=15 b=3 cs=100 y=0
//# 1: a=15 b=3 cs=001 y=12
//# 3: a=15 b=3 cs=011 y=5
//# 4: a=15 b=3 cs=101 y=3375
//# 7: a=15 b=3 cs=010 y=45
//# 8: a=15 b=3 cs=001 y=12
//# 9: a=15 b=3 cs=101 y=3375
	
