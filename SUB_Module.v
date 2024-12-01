
module SUB_Module(
    input [3:0] A,
    input [3:0] B,
    input borrow_in,
    output [3:0] Diff,
    output borrow_out
);
    assign {borrow_out, Diff} = A - B - borrow_in;
endmodule
