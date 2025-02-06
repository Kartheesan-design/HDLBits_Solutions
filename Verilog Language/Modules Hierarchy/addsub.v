module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    wire [31:0]x;
    wire y;
    assign x = b ^ {32{sub}};
    
    add16 in1(.a(a[15:0]),.b(x[15:0]),.cin(sub),.sum(sum[15:0]),.cout(y));
    add16 in2(.a(a[31:16]),.b(x[31:16]),.cin(y),.sum(sum[31:16]));

endmodule
