
module NAND_Module(
    input [3:0] A,
    input [3:0] B,
    output [3:0] NAND_Out
);
    assign NAND_Out = ~(A & B);
endmodule
