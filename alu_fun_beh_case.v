module alu(a,b,cs,y);
	parameter ADD= 3'b000;
	parameter SUB= 3'b001;
	parameter MUL= 3'b010;
	parameter DIV= 3'b011;
	parameter MOD= 3'b100;
	parameter POW= 3'b101;
	parameter RS= 3'b110;
	parameter LS= 3'b111;
	//parameter ADD= 3'b000;
	//parameter ADD= 3'b000;

	input [31:0] a,b;
	input [2:0]cs;
	output reg [31:0] y;


	function reg [31:0] add(input reg[31:0] x,y);
		add=x+y;
	endfunction

	function reg [31:0] sub(input reg[31:0] x,y);
		sub=x-y;
	endfunction

	function reg [31:0] mul(input reg [31:0] x,y);
		mul=x*y;
	endfunction

	function reg [31:0] div(input reg[31:0]x,y);
		div=x/y;
	endfunction

	function reg [31:0] ls(input reg[31:0] x,y);
		ls=x<<1;
	endfunction

	function reg [31:0] mod(input reg[31:0]x,y);
		mod=x%y;
	endfunction

	function reg [31:0] pow(input reg[31:0]x,y);
		pow=x**y;
	endfunction

	function reg [31:0] rs(input reg[31:0]x,y);
		rs=x>>1;
	endfunction


	always @(*) begin
		case(cs)
		ADD: y= add(a,b);
		SUB: y= sub(a,b);
		MUL: y= mul(a,b);
		DIV: y= div(a,b);
		MOD: y= mod(a,b);
		POW: y= pow(a,b);
		RS: y= rs(a,b);
		LS: y= ls(a,b);
		default: y=32'b0;
		endcase
	end
endmodule

	

