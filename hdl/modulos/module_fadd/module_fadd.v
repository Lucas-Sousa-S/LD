// Feito por Lucas Sousa, em 2025.

module add1 (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule

// Top module: somador de 32 bits usando dois módulos add16
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum_low, sum_high;
    wire carry;

    // Somador dos bits 15:0
    add16 u0 (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum_low),
        .cout(carry)
    );

    // Somador dos bits 31:16
    add16 u1 (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(carry),
        .sum(sum_high),
        .cout()  // carry-out ignorado
    );

    assign sum = {sum_high, sum_low};
endmodule
