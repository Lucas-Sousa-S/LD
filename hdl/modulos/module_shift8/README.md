![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Module+Shift8+%20&fontAlignY=40&color=00bfbf)

<p>Este exercício é uma extensão do módulo_shift. Em vez de portas de módulo serem apenas pinos únicos, agora temos módulos com vetores como portas, aos quais você conectará vetores de fio em vez de fios simples. Como em qualquer outro lugar no Verilog, o comprimento do vetor da porta não precisa corresponder ao fio conectado a ela, mas isso causará preenchimento com zeros ou truncamento do vetor. Este exercício não utiliza conexões com comprimentos de vetor incompatíveis.
Você recebe um módulo my_dff8 com duas entradas e uma saída (que implementa um conjunto de 8 flip-flops D). Instancie três deles e, em seguida, encadeie-os para criar um registrador de deslocamento de 8 bits de comprimento 3. Além disso, crie um multiplexador 4 para 1 (não fornecido) que escolha o que enviar dependendo de sel[1:0]: O valor na entrada d, após o primeiro, após o segundo ou após o terceiro flip-flop D. (Essencialmente, sel seleciona quantos ciclos atrasar a entrada, de zero a três ciclos de clock.)
O módulo fornecido a você é: module my_dff8 (input clk, input [7:0] d, output [7:0] q);
O multiplexador não é fornecido. Uma maneira possível de escrevê-lo é dentro de um bloco always com uma instrução case dentro.</p>

## Como eu resolvi
- Instanciar três módulos my_dff8 em cadeia, criando um registrador de deslocamento de 8 bits de largura e profundidade 3.
- Implementar um multiplexador 4:1 para escolher entre:
d (entrada direta, 0 ciclos de atraso)
Saída após o primeiro my_dff8 (1 ciclo de atraso)
Saída após o segundo my_dff8 (2 ciclos de atraso)
Saída após o terceiro my_dff8 (3 ciclos de atraso)

![Image](https://github.com/user-attachments/assets/805d4331-0731-4480-8241-cbf2491c3db6)

## Diagrama de Tempo
![Image](https://github.com/user-attachments/assets/75296d37-4cc6-47d5-96aa-8da901511612)

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](module_shift8.v)

</div>



<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
