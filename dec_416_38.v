module dec38(i,y);
	input[2:0]i;
	input en;
	output reg[7:0]y;
	always@(*) begin
	if(en==1) y=(i==3'b000)?8'b00000001 :(i==3'b001)?8'b00000010 :(i==3'b010)?8'b00000100 :(i==3'b011)?8'b00001000 :(i==3'b100)?8'b00010000 :(i==3'b101)?8'b00100000 :(i==3'b110)?8'b01000000 :8'b10000000;
	else y=8'b00000000;
	end
endmodule



module dec416(i,y);
	input [3:0]i;
	output [15:0]y;
	wire n1;
	not g1(n1,i[3]);
	dec38 g2(.i(i[2:0],.en(n1),.y(y[7:0]));
	dec38 g3(.i(i[2:0],.en(i[3]),.y(y[15:8]));
endmodule

