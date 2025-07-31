module ha(a,b,sum,carry);
	input a,b;
	output sum,carry;

	assign sum=a^b;
	assign carry=a&b;
endmodule


module full_adder(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	wire sum1,carry1,carry2;


	half_adder h1(.a(a),.b(b).sum(sum),.carry(carry1));
	half_adder h2(.a(sum1),.b(cin),.sum(sum),.carry(carry2));

	assign cout=carry1 |carry2;
endmodule
