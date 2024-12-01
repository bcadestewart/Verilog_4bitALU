
module XNOR_Module(
    input [3:0] A,
    input [3:0] B,
    output [3:0] XNOR_Out
);
    assign XNOR_Out = ~(A ^ B);
endmodule
