
module XOR_Module(
    input [3:0] A,
    input [3:0] B,
    output [3:0] XOR_Out
);
    assign XOR_Out = A ^ B;
endmodule
