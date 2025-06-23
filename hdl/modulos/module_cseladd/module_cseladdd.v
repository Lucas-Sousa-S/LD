  // Por Lucas Sousa, em 2025.

    module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] sum0, sum1;
    wire cout0, cout1, sel;

    wire [15:0] sum_upper;

    // Primeira etapa: somador de 16 bits com carry-in = 0
    add16 adder0 (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(sel)
    );

    // Segunda etapa: dois somadores para a parte superior, um com cin = 0, outro com cin = 1
    add16 adder1 (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(sum0),
        .cout(cout0)
    );

    add16 adder2 (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(sum1),
        .cout(cout1)
    );

    // MUX para selecionar a soma correta da parte superior
    assign sum[31:16] = (sel == 1'b0) ? sum0 : sum1;

endmodule
