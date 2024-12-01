
module NOR_Module(
    input [3:0] A,
    input [3:0] B,
    output [3:0] NOR_Out
);
    assign NOR_Out = ~(A | B);
endmodule
