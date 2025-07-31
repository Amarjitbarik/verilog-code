`include "mux41_data.v"
module tb;
	reg i0,i1,i2,i3;
	reg s0,s1;
	wire y;
	mux41 dut(i0,i1,i2,i3,s1,s0,y);
	initial begin
		repeat(10) begin
		{i0,i1,i2,i3,s0,s1}=$random;
		
		#1;
		$display("i0=%b,i1=%b,i2=%b,i3=%b,s1=%b,s0=%b,y=%b",i0,i1,i2,i3,s1,s0,y);
		end
	end
endmodule

//# i0=1,i1=0,i2=0,i3=1,s1=0,s0=0,y=1
//# i0=0,i1=0,i2=0,i3=0,s1=1,s0=0,y=0
//# i0=0,i1=0,i2=1,i3=0,s1=1,s0=0,y=0
//# i0=1,i1=0,i2=0,i3=0,s1=1,s0=1,y=0
//# i0=0,i1=0,i2=1,i3=1,s1=1,s0=0,y=0
//# i0=0,i1=0,i2=1,i3=1,s1=1,s0=0,y=0
//# i0=1,i1=0,i2=0,i3=1,s1=1,s0=0,y=0
//# i0=0,i1=1,i2=0,i3=0,s1=0,s0=1,y=0
//# i0=0,i1=0,i2=0,i3=0,s1=1,s0=0,y=0
//# i0=0,i1=0,i2=1,i3=1,s1=1,s0=0,y=0



