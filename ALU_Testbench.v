module ALU_Testbench();
    reg [3:0] A, B;
    reg carry_in, borrow_in;
    wire [3:0] AND_Out, NAND_Out, OR_Out, NOR_Out, XOR_Out, XNOR_Out, NOT_Out, Shifter_Out;
    wire [3:0] Sum, Diff, Quotient, Remainder;
    wire carry_out, borrow_out;
    wire [7:0] Product;

    // Instantiate Logic Modules
    AND_Module and_mod(A, B, AND_Out);
    NAND_Module nand_mod(A, B, NAND_Out);
    OR_Module or_mod(A, B, OR_Out);
    NOR_Module nor_mod(A, B, NOR_Out);
    XOR_Module xor_mod(A, B, XOR_Out);
    XNOR_Module xnor_mod(A, B, XNOR_Out);
    NOT_Module not_mod(A, NOT_Out);
    Shifter_Module shifter_mod(A, Shifter_Out);

    // Instantiate Arithmetic Modules
    ADD_Module add_mod(A, B, carry_in, Sum, carry_out);
    SUB_Module sub_mod(A, B, borrow_in, Diff, borrow_out);
    MUL_Module mul_mod(A, B, Product);
    DIV_Module div_mod(A, B, Quotient, Remainder);

    initial begin
        $dumpfile("ALU_waveform.vcd");  // VCD file for waveform
        $dumpvars(0, ALU_Testbench);    // Dump all variables

        // First set of test values
        A = 4'b1010; B = 4'b0101; carry_in = 0; borrow_in = 0;
        #10;  // Wait for 10 time units

        // Second set of test values
        A = 4'b1100; B = 4'b0011; carry_in = 1; borrow_in = 1;
        #10;

        // Third set of test values
        A = 4'b0110; B = 4'b1001; carry_in = 0; borrow_in = 0;
        #10;

        // Fourth set of test values
        A = 4'b0011; B = 4'b0001; carry_in = 1; borrow_in = 1;
        #10;

        // Fifth set of test values
        A = 4'b1111; B = 4'b0001; carry_in = 0; borrow_in = 0;
        #10;

        $finish;  // End simulation
    end
endmodule
