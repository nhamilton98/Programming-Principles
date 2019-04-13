{\rtf1\ansi\ansicpg1252\deff0\nouicompat\deflang1033{\fonttbl{\f0\fnil\fcharset0 Calibri;}}
{\*\generator Riched20 10.0.17134}\viewkind4\uc1 
\pard\sa200\sl276\slmult1\f0\fs22\lang9 module alu(S0, S1, D0, D1, O0);\par
    input S0, S1, D0, D1;\par
    output O0;\par
    \par
    assign W0 = ~S0 & ~S1;\par
    assign W1 = ~S0 & S1;\par
    assign W2 = S0 & ~S1;\par
    assign W3 = S0 & S1;\par
    \par
    assign V0 = W0 & (D0 & D1);\par
    assign V1 = W1 & (D0 | D1);\par
    assign V2 = W2 & (D0 ^ D1);\par
    assign V3 = W3 & ~D0;\par
    \par
    assign O0 = V0 | V1 | V2 | V3;\par
endmodule\par
\par
module TB;\par
    reg s0, s1, d0, d1;\par
    wire O0;\par
    alu ALU(s0, s1, d0, d1, O0);\par
    \par
    initial begin\par
    $display("s0  s1  d0  d1  out");\par
    $display("-----------------------");\par
    s0 = 0; s1 = 0; d0 = 0; d1 = 0;\par
    #1 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 0; s1 = 0; d0 = 0; d1 = 1;\par
    #2 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 0; s1 = 0; d0 = 1; d1 = 0;\par
    #3 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 0; s1 = 0; d0 = 1; d1 = 1;\par
    #4 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 0; s1 = 1; d0 = 0; d1 = 0;\par
    #5 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 0; s1 = 1; d0 = 0; d1 = 1;\par
    #6 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 0; s1 = 1; d0 = 1; d1 = 0;\par
    #7 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 0; s1 = 1; d0 = 1; d1 = 1;\par
    #8 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 1; s1 = 0; d0 = 0; d1 = 0;\par
    #9 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 1; s1 = 0; d0 = 0; d1 = 1;\par
    #10 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 1; s1 = 0; d0 = 1; d1 = 0;\par
    #11 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 1; s1 = 0; d0 = 1; d1 = 1;\par
    #12 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 1; s1 = 1; d0 = 0; d1 = 0;\par
    #13 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 1; s1 = 1; d0 = 0; d1 = 1;\par
    #14 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 1; s1 = 1; d0 = 1; d1 = 0;\par
    #15 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    s0 = 1; s1 = 1; d0 = 1; d1 = 1;\par
    #16 $display("%b | %b | %b | %b |  %b", s0, s1, d0, d1, O0);\par
    end\par
endmodule\par
}
 