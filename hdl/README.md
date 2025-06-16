<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=header"/>

[![Typing SVG](https://readme-typing-svg.herokuapp.com/?color=00bfbf&size=35&center=true&vCenter=true&width=1000&lines=HDL;+Hardware+Description+Language+:%29)](https://git.io/typing-svg) 

# **H**ardware **D**escription Language

É uma linguagem utilizada para modelar, simular e sintetizar circuitos digitais. Diferentemente das linguagens de programação tradicionais, que descrevem algoritmos que serão executados por um processador, o HDL descreve como o hardware deve se comportar e ser estruturado.

Em vez de escrever um programa que será interpretado, com HDL você escreve um projeto de hardware digital, que pode ser sintetizado para FPGAs (Field Programmable Gate Arrays) ou ASICs (Application-Specific Integrated Circuits).
## As principais linguagens desse tipo são:
- VHDL<br>Mais verbosa e formal.
- Verilog<br>Sintaxe semelhante à linguagem C.
  
# Exemplo em Verilog
```
module contador_4bits (
    input wire clk,
    input wire reset,
    input wire enable,
    input wire up_down,
    output reg [3:0] count
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;  // Reset assíncrono
    else if (enable) begin
        if (up_down)
            count <= count + 1;  
        else
            count <= count - 1;  // Contagem decrescente
    end
end

endmodule
```
<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
