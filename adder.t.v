// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    //behavioralFullAdder adder (sum, carryout, a, b, carryin);
    structuralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin
    // Your test code here

    $dumpfile("adder.vcd");
    $dumpvars;

    $display("a b Cin| sum Cout | Expected Output");
    a=0;b=0;carryin=0; #1000 
    $display("%b %b %b  |  %b   %b   | s=0, Cout=0", a, b, carryin, sum, carryout);
    a=0;b=0;carryin=1; #1000 
    $display("%b %b %b  |  %b   %b   | s=1, Cout=0", a, b, carryin, sum, carryout);
    a=0;b=1;carryin=0; #1000 
    $display("%b %b %b  |  %b   %b   | s=1, Cout=0", a, b, carryin, sum, carryout);
    a=0;b=1;carryin=1; #1000 
    $display("%b %b %b  |  %b   %b   | s=0, Cout=1", a, b, carryin, sum, carryout);
    a=1;b=0;carryin=0; #1000 
    $display("%b %b %b  |  %b   %b   | s=1, Cout=0", a, b, carryin, sum, carryout);
    a=1;b=0;carryin=1; #1000 
    $display("%b %b %b  |  %b   %b   | s=0, Cout=1", a, b, carryin, sum, carryout);
    a=1;b=1;carryin=0; #1000 
    $display("%b %b %b  |  %b   %b   | s=0, Cout=1", a, b, carryin, sum, carryout);
    a=1;b=1;carryin=1; #1000 
    $display("%b %b %b  |  %b   %b   | s=1, Cout=1", a, b, carryin, sum, carryout);
    end
endmodule
