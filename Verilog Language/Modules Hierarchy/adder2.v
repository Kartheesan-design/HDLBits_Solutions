module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire x = 0,y;
    add16 in1(.a(a[15:0]),.b(b[15:0]),.cin(x),.sum(sum[15:0]),.cout(y));
    add16 in2(.a(a[31:16]),.b(b[31:16]),.cin(y),.sum(sum[31:16]));

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
	assign sum = a ^ b ^ cin;
    assign cout = a&b | (a | b)&cin; 
endmodule
