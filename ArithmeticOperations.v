module ArithmeticOperations (
    input [3:0] A,
    input [3:0] B,
    input CarryIn,
    output [3:0] Add_out,
    output CarryOut_Add,
    output [3:0] Sub_out,
    output CarryOut_Sub,
    output [7:0] Mult_out,   // 4-bit multiplication produces an 8-bit result
    output [3:0] Div_out,
    output [3:0] Remainder_out
);
    assign {CarryOut_Add, Add_out} = A + B + CarryIn;
    assign {CarryOut_Sub, Sub_out} = A - B - CarryIn;
    assign Mult_out = A * B;
    assign Div_out = A / B;
    assign Remainder_out = A % B;
endmodule
