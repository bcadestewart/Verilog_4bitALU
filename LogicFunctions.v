module LogicFunctions (
    input [3:0] A,
    input [3:0] B,
    output [3:0] AND_out,
    output [3:0] NAND_out,
    output [3:0] OR_out,
    output [3:0] NOR_out,
    output [3:0] XOR_out,
    output [3:0] XNOR_out,
    output [3:0] NOT_out
);
    assign AND_out = A & B;
    assign NAND_out = ~(A & B);
    assign OR_out = A | B;
    assign NOR_out = ~(A | B);
    assign XOR_out = A ^ B;
    assign XNOR_out = ~(A ^ B);
    assign NOT_out = ~A; // NOT only applies to A
endmodule
