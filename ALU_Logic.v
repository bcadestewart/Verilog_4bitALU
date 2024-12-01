module ALU_Logic(
    input [3:0] A,  // 4-bit input A
    input [3:0] B,  // 4-bit input B
    output [3:0] AND_Out, 
    output [3:0] NAND_Out, 
    output [3:0] OR_Out, 
    output [3:0] NOR_Out, 
    output [3:0] XOR_Out, 
    output [3:0] XNOR_Out,
    output [3:0] NOT_A_Out,
    output [3:0] Shifter_Out
);

    // Logic Operations
    assign AND_Out = A & B;        // AND
    assign NAND_Out = ~(A & B);    // NAND
    assign OR_Out = A | B;         // OR
    assign NOR_Out = ~(A | B);     // NOR
    assign XOR_Out = A ^ B;        // XOR
    assign XNOR_Out = ~(A ^ B);    // XNOR
    assign NOT_A_Out = ~A;         // NOT (of A)

    // 2x4-bit Shifter (Shift A by 1-bit)
    assign Shifter_Out = A << 1;   // Left shift A by 1 bit

endmodule
