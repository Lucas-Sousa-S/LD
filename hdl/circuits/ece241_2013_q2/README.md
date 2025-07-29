![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=ece241_2013_q2+%20&fontAlignY=40&color=00bfbf)


### Exams: ece241 2013 q2

Este exercício aborda a implementação lógica de um sistema digital com quatro entradas (`a`, `b`, `c`, `d`) e duas saídas (`out_sop`, `out_pos`), utilizando expressões booleanas minimizadas nas formas **SOP** (Soma de Produtos) e **POS** (Produto de Somas).

#### Enunciado

O sistema gera:

* **Saída lógica 1** quando a entrada representa os valores decimais **2, 7 ou 15**;
* **Saída lógica 0** para os valores **0, 1, 4, 5, 6, 9, 10, 13 ou 14**;
* Os valores **3, 8, 11 e 12** **nunca ocorrem** (são *don't care*).

A codificação segue a ordem `a` (MSB) até `d` (LSB), ou seja:

```
valor_decimal = {a, b, c, d}
```

#### 🧮 Solução

* **Expressão mínima em SOP (Soma de Produtos):**

  ```verilog
  assign out_sop = (c & d) | (~a & ~b & c);
  ```

* **Expressão mínima em POS (Produto de Somas):**

  ```verilog
  assign out_pos = c & (~b | d) & (~a | b);
  ```

Assim a implementação atende todos os casos de teste propostos pelo HDLBits, passando 100% dos vetores de simulação.

#### 📁 Código completo

```verilog
module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
);

    assign out_sop = (c & d) | (~a & ~b & c);
    assign out_pos = c & (~b | d) & (~a | b);

endmodule
```


<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](ece241_2013_q2.v)

</div>

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
