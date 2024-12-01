
module Shifter_Module(
    input [3:0] A,
    output [3:0] Shifter_Out
);
    assign Shifter_Out = A << 1;
endmodule
