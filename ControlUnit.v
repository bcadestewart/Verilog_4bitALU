module ControlUnit (
    input [2:0] Opcode,          // 3-bit Opcode
    output reg Enable_AND,
    output reg Enable_NAND,
    output reg Enable_OR,
    output reg Enable_NOR,
    output reg Enable_XOR,
    output reg Enable_XNOR,
    output reg Enable_NOT,
    output reg Enable_ADD,
    output reg Enable_SUB,
    output reg Enable_MULT,
    output reg Enable_DIV,
    output reg Enable_SHIFT
);

    always @(*) begin
        // Default: Disable all operations
        Enable_AND = 0;
        Enable_NAND = 0;
        Enable_OR = 0;
        Enable_NOR = 0;
        Enable_XOR = 0;
        Enable_XNOR = 0;
        Enable_NOT = 0;
        Enable_ADD = 0;
        Enable_SUB = 0;
        Enable_MULT = 0;
        Enable_DIV = 0;
        Enable_SHIFT = 0;

        // Enable based on Opcode
        case (Opcode)
            3'b000: Enable_AND = 1;     // AND Operation
            3'b001: Enable_NAND = 1;    // NAND Operation
            3'b010: Enable_OR = 1;      // OR Operation
            3'b011: Enable_NOR = 1;     // NOR Operation
            3'b100: Enable_XOR = 1;     // XOR Operation
            3'b101: Enable_XNOR = 1;    // XNOR Operation
            3'b110: Enable_NOT = 1;     // NOT Operation
            3'b111: Enable_ADD = 1;     // ADD Operation
            default: ; // No Operation
        endcase
    end
endmodule
