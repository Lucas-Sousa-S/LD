<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=header"/>

[![Typing SVG](https://readme-typing-svg.herokuapp.com/?color=00bfbf&size=35&center=true&vCenter=true&width=1000&lines=+Circuits+)](https://git.io/typing-svg) 

# Como Funcionam os Circuitos Digitais: Da Lógica à Eficiência
Os **circuitos digitais** são composições de portas lógicas usadas para processar sinais binários em sistemas eletrônicos. Eles são a base do funcionamento de computadores, dispositivos embarcados e sistemas digitais em geral. Esses circuitos se dividem em blocos funcionais, cada um com papéis específicos, que juntos compõem sistemas mais complexos.

O ponto de partida são as **portas lógicas básicas** (Basic Gates) como AND, OR, NOT, XOR que operam diretamente sobre bits individuais conforme as regras da Álgebra Booleana. A combinação dessas portas permite formar estruturas mais elaboradas para tomada de decisão, armazenamento e controle.

Uma dessas estruturas é o **multiplexador (Multiplexer)**, um circuito que seleciona uma entre várias entradas para encaminhar a uma saída com base em sinais de controle. Ele é essencial para a comutação e roteamento de dados dentro de sistemas digitais, funcionando como um “interruptor programável”.

Nos **circuitos aritméticos (Arithmetic Circuits)**, a lógica das portas é organizada para realizar operações matemáticas, como soma e subtração. Componentes como somadores (half adder, full adder) e ALUs permitem que processadores executem cálculos e operações binárias com eficiência.

Para garantir que esses circuitos sejam eficientes e minimizem consumo de recursos, aplica-se a técnica de simplificação de expressões booleanas com o **Mapa de Karnaugh (Karnaugh Map to Circuit)**. Essa ferramenta visual ajuda a reduzir o número de portas lógicas necessárias ao representar funções em formas mais compactas, que são depois implementadas fisicamente em circuito.

Assim, o estudo de **“Circuits”** em lógica digital conecta o conhecimento de fundamentos (portas), controle (MUX), operações (aritmética) e otimização (K-Map), formando a base para o projeto e análise de sistemas digitais modernos.

---
um meio somador (Half Adder
```
module half_adder (
    input wire A,       // Primeiro bit de entrada
    input wire B,       // Segundo bit de entrada
    output wire Sum,    // Saída da soma
    output wire Carry   // Saída do vai-um
);

    assign Sum = A ^ B;       // XOR para soma
    assign Carry = A & B;     // AND para carry

endmodule

```

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
