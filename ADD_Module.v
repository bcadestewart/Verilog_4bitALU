
module ADD_Module(
    input [3:0] A,
    input [3:0] B,
    input carry_in,
    output [3:0] Sum,
    output carry_out
);
    assign {carry_out, Sum} = A + B + carry_in;
endmodule
