![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Mux2to1v+%20&fontAlignY=40&color=00bfbf)

## 🔀 100-bit 2:1 Multiplexer


Este repositório contém a implementação de um **multiplexador 2:1 de 100 bits** desenvolvido em Verilog, proposto na plataforma [HDLBits](https://hdlbits.01xz.net/). Esse circuito seleciona entre dois vetores de 100 bits com base em um sinal de controle (`sel`), direcionando o vetor escolhido para a saída.

## ⚙️ Especificação do Módulo

```verilog
module top_module( 
    input  [99:0] a,    // Vetor de 100 bits - entrada 0
    input  [99:0] b,    // Vetor de 100 bits - entrada 1
    input         sel,  // Bit de seleção
    output [99:0] out   // Vetor de 100 bits - saída
);
```
## Diagrama de Tempo
![Image](https://github.com/user-attachments/assets/2a9ed2a3-6c16-4ac2-b6af-fe7b2dae3dab)

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](Mux2to1v.v)

</div>

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
