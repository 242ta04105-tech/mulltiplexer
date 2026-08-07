`timescale 1ns/1ps

module mux_tb;

reg A, B, Sel;
wire Y;

mux2x1 uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Y(Y)
);

initial begin
    $display("A B Sel | Y");
    $monitor("%b %b  %b  | %b", A, B, Sel, Y);

    A=0; B=0; Sel=0;
    #10 A=0; B=1; Sel=0;
    #10 A=0; B=1; Sel=1;
    #10 A=1; B=0; Sel=0;
    #10 A=1; B=0; Sel=1;
    #10 A=1; B=1; Sel=0;
    #10 A=1; B=1; Sel=1;

    #10 $finish;
end

endmodule