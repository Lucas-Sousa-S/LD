module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up
); 

    // Bloco combinacional que atribui valores a todas as saídas
    always @(*) begin
        // Inicializa todas as saídas como 0 para evitar infecção de latches
        left  = 1'b0;
        down  = 1'b0;
        right = 1'b0;
        up    = 1'b0;
        case (scancode)
            16'he06b: left  = 1'b1; // Seta para a esquerda
            16'he072: down  = 1'b1; // Seta para baixo
            16'he074: right = 1'b1; // Seta para a direita
            16'he075: up    = 1'b1; // Seta para cima
            // Não precisa de default, pois já inicializamos tudo com 0
        endcase
    end

endmodule

