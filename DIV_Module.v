
module DIV_Module(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Quotient,
    output [3:0] Remainder
);
    assign Quotient = A / B;
    assign Remainder = A % B;
endmodule
