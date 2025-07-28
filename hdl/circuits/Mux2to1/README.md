![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Mux2to1+%20&fontAlignY=40&color=00bfbf)

## 🔌 1-Bit 2:1 Multiplexer (Verilog - HDLBits)


Este problema consiste na implementação de um **multiplexador de 1 bit com 2 entradas** em Verilog. O circuito seleciona uma das duas entradas com base em um sinal de controle (`sel`).

---

## 🧠 Enunciado do Problema

> **Create a one-bit wide, 2-to-1 multiplexer.**  
> When `sel = 0`, choose `a`.  
> When `sel = 1`, choose `b`.

> **Expected solution length:** Around 1 line.  
> Complete: Module Declaration

---

## ⚙️ Especificação do Módulo

```verilog
module top_module( 
    input a,        // Entrada 0
    input b,        // Entrada 1
    input sel,      // Selecionador
    output out      // Saída selecionada
);

```
## Diagrama de Tempo
![Image](https://github.com/user-attachments/assets/3de76c3a-3870-4b3d-b851-87eaa966af1a)
 <br>

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](Mux2to1.v)

</div>

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
