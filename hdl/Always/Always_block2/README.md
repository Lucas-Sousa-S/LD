![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Always+Block2+%20&fontAlignY=40&color=00bfbf)


Para síntese de hardware, existem dois tipos de blocos always relevantes:<br>
- Combinacionais: always @(*)
- Clocked: always @(posedge clk)<br><br>
Blocos always com clock criam um blob de lógica combinacional, assim como blocos always combinacionais, mas também criam um conjunto de flip-flops (ou "registradores") na saída do blob de lógica combinacional. Em vez de as saídas do blob de lógica serem visíveis imediatamente, as saídas são visíveis apenas imediatamente após a próxima (posedge clk). <br>
## Atribuição Bloqueante vs. Não Bloqueante <br> 
Existem três tipos de atribuições em Verilog:
- Atribuições **contínuas** (atribuição x = y;). Só podem ser usadas quando não estão dentro de um procedimento ("bloco always").
- Atribuição **bloqueadora procedural**: (x = y;). Só podem ser usadas dentro de um procedimento.
- Atribuição **não bloqueadora** procedural: (x <= y;). Só podem ser usadas dentro de um procedimento.
Em um bloco **always combinacional**, use atribuições bloqueadoras. Em um bloco always com clock, use atribuições não bloqueantes. Uma compreensão completa do porquê não é particularmente útil para o projeto de hardware e requer um bom entendimento de como os simuladores Verilog rastreiam eventos. Não seguir esta regra resulta em erros extremamente difíceis de encontrar, que são não determinísticos e diferem entre a simulação e o hardware sintetizado.
<br><br>

## Praticando um pouco
Usando uma instrução de atribuição, um bloco always combinacional e um bloco always com clock. Percebo que o bloco com clock gera um circuito diferente dos outros dois, pois inclui um flip-flop, o que faz com que a saída tenha um atraso. <br>
![Image](https://github.com/user-attachments/assets/e3603f28-375d-47e6-a853-0aae097a6286)

## Diagrama de Tempo
![Image](https://github.com/user-attachments/assets/4f8fa959-833a-4632-a8d1-2aa2a71beec4)
 <br>

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](Always_block2.v)

</div>

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
