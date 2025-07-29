module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
);

    // Mínima SOP: lógica‑1 para os valores 2, 7 e 15
    assign out_sop = (c & d) | (~a & ~b & c);

    // Mínima POS: lógica‑0 para os valores 0,1,4,5,6,9,10,13,14
    assign out_pos = c & (~b | d) & (~a | b);

endmodule
