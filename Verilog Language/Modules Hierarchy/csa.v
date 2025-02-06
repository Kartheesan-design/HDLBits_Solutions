module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire x = 0,y,z = 0,k = 1;
    wire [15:0]sum1,sum2;
    add16 in1(.a(a[15:0]),.b(b[15:0]),.cin(x),.sum(sum[15:0]),.cout(y));
    add16 in2(.a(a[31:16]),.b(b[31:16]),.cin(z),.sum(sum1));
    add16 in3(.a(a[31:16]),.b(b[31:16]),.cin(k),.sum(sum2));
    
    always @(*)begin
        case(y)
        	0:sum[31:16] = sum1;
        	1:sum[31:16] = sum2;
       	endcase
	end
endmodule
