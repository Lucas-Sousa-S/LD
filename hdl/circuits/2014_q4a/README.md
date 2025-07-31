![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=2014_q4a+%20&fontAlignY=40&color=00bfbf)

Este problema envolve a implementação de um estágio de um registrador de deslocamento com multiplexadores e flip-flop. Considerando o circuito de registro de deslocamento de n bits mostrado abaixo: <br><br>
<img width="1482" height="557" alt="Image" src="https://github.com/user-attachments/assets/e2ba5d9d-7fe5-44b6-af31-106d0f4795f1" />
<br><br>
Aqui, um bit vive sob a tensão de quatro sinais de controle, tentando decidir seu futuro a cada `posedge clk`.

O Desafio
---
Construa um módulo que represente um estágio de um shift register, com os seguintes controles:

- `L`: **Load** ☞ força um valor direto (`R`) ao flip-flop.
- `E`: **Enable** ☞ ativa o deslocamento via entrada `w`.
- Se nenhum for ativado, o valor de `Q` se mantém.


## Interface do Módulo
``` 
    module top_module (
    input clk,   // Clock
    input w,     // Entrada de dado a ser deslocado
    input R,     // Valor a ser carregado
    input E,     // Sinal de enable (ativa deslocamento)
    input L,     // Sinal de load (ativa carregamento)
    output Q     // Saída do flip-flop (valor armazenado)
);
```
---
 <br> <br>
 
“Carregar, deslocar ou permanecer o mesmo... eis a questão.”  
 Um bit confuso, mas sincronizado
<br><br>
<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](2014_q4a.v)

</div>

 > “Mesmo um bit precisa de escolhas. E às vezes, manter o estado é tão importante quanto mudá-lo.”

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
