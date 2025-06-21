module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output reg [7:0] q 
);

    wire [7:0] q1, q2, q3;

    // Instanciando os flip-flops em cadeia
    my_dff8 dff1 (clk, d,  q1);
    my_dff8 dff2 (clk, q1, q2);
    my_dff8 dff3 (clk, q2, q3);

    // Multiplexador 4:1 para selecionar o valor a ser enviado para a saída
    always @(*) begin
        case (sel)
            2'b00: q = d;   // sem atraso
            2'b01: q = q1;  // 1 ciclo de atraso
            2'b10: q = q2;  // 2 ciclos de atraso
            2'b11: q = q3;  // 3 ciclos de atraso
        endcase
    end

endmodule
