`timescale 1ns / 1ps

module tb_full_adder;


reg a, b, c_in;

wire sum, carry_out;

full_adder dut (a, b, c_in, sum, carry_out);


initial begin

    $dumpfile("full_adder.vcd");
    $dumpvars(0, tb_full_adder);

    $display("Testing Full Adder");

    $monitor("a = %b, b = %b, c_in = %b, sum = %b, carry_out = %b", a, b, c_in, sum, carry_out);

    a = 1; b = 1; c_in = 1; #10;  // Expect sum = 1, carry_out = 1

    a = 0; b = 0; c_in = 1; #10;  // Expect sum = 1, carry_out = 0

    a = 0; b = 1; c_in = 0; #10;  // Expect sum = 1, carry_out = 0

    a = 0; b = 1; c_in = 1; #10;  // Expect sum = 0, carry_out = 1

    a = 1; b = 0; c_in = 0; #10;  // Expect sum = 1, carry_out = 0

    // … Add more test cases as needed

    $finish;
end
endmodule