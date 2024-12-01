module ALU_Arithmetic(
    input [3:0] A,  // 4-bit input A
    input [3:0] B,  // 4-bit input B
    input carry_in, // carry in for addition/subtraction
    output [3:0] Sum,    // Sum for addition
    output carry_out,    // Carry out for addition
    output [3:0] Diff,   // Difference for subtraction
    output borrow_out,   // Borrow out for subtraction
    output [7:0] Prod,   // Product for multiplication (8 bits needed)
    output [3:0] Quot,   // Quotient for division
    output [3:0] Rem     // Remainder for division
);

    // Addition with Carry In and Carry Out
    assign {carry_out, Sum} = A + B + carry_in;

    // Subtraction with Borrow In and Borrow Out
    assign {borrow_out, Diff} = A - B - carry_in;

    // Multiplication (Output is 8 bits to hold larger result)
    assign Prod = A * B;

    // Division (Quotient and Remainder)
    assign Quot = A / B;
    assign Rem = A % B;

endmodule
