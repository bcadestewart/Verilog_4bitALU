module ShiftingOperations (
    input [3:0] A,
    input [3:0] B,
    input ShifterControl, // 0 for left shift, 1 for right shift
    output [3:0] Shift_out
);
    assign Shift_out = (ShifterControl == 0) ? (A << 1) : (B >> 1);
endmodule
