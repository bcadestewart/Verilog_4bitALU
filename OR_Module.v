
module OR_Module(
    input [3:0] A,
    input [3:0] B,
    output [3:0] OR_Out
);
    assign OR_Out = A | B;
endmodule
