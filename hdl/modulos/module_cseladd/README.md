![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Module+cseladd+%20&fontAlignY=40&color=00bfbf)

Uma desvantagem do somador de transporte de ondulação [ver o problema anterior](../module_add/module_add.v) é que o atraso para um somador calcular o carry out (do carry in, no pior caso) é bastante lento, e o somador de segundo estágio não pode começar a calcular seu carry out até que o somador de primeiro estágio tenha terminado. Isso torna o somador lento. Uma melhoria é um somador de seleção de carry, mostrado abaixo. O somador de primeiro estágio é o mesmo de antes, mas duplicamos o somador de segundo estágio, um assumindo carry in = 0 e outro assumindo carry in = 1, e então usamos um multiplexador 2 para 1 rápido para selecionar qual resultado estava correto.
Neste exercício, você recebe o mesmo módulo add16 do exercício anterior, que soma dois números de 16 bits com carry in e produz um carry out e uma soma de 16 bits. Você deve instanciar três deles para construir o somador de seleção de carry, usando seu próprio multiplexador 2 para 1 de 16 bits.

Conectando os módulos conforme mostrado no [diagrama abaixo](#diagrama-de-tempo). O módulo add16 fornecido contém a seguinte declaração:<br><br>

## Como eu resolvi
- ```sel``` é o ```carry-out``` da primeira etapa (bit menos significativo), que determina qual das duas somas da segunda etapa será usada.
- Dois somadores ```add16``` computam simultaneamente os resultados da parte superior ([31:16]), assumindo ```cin = 0``` e ```cin = 1```.
- Um multiplexador 2:1 ```(assign)``` escolhe qual soma de 16 bits usar, com base no carry da primeira parte.

![Image](https://github.com/user-attachments/assets/cb537c72-c892-41c2-9bd1-8b650077bd7a)

## Diagrama de Tempo

![Image](https://github.com/user-attachments/assets/25ce64d1-98bf-4201-9e42-dc1b8192f877) <br>

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](module_cseladd.v)

</div>

> [!NOTE]
> Enquanto o primeiro ```add16``` está computando ```sum[15:0]```, os dois da parte alta já estão calculando em paralelo.


<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
