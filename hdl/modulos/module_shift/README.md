![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Module+Shift+%20&fontAlignY=40&color=00bfbf)

<p>Você recebe um módulo my_dff com duas entradas e uma saída (que implementa um flip-flop D). Instancie três deles e, em seguida, encadeie-os para criar um registrador de deslocamento de comprimento 3. A porta clk precisa ser conectada a todas as instâncias.
O módulo fornecido é: módulo my_dff (entrada clk, entrada d, saída q);
Observe que, para fazer as conexões internas, precisei declarar alguns fios. Tenha cuidado ao nomear seus fios e instâncias do módulo: os nomes devem ser únicos.</p>

## Como eu resolvi
- 3 flip-flops, conectados em cadeia;
- Entrada entra no 1º;
- Saída sai do 3º;
- Todos usam o mesmo clk;
- Usei wire para interligar os estágios.

![Image](https://github.com/user-attachments/assets/064f7a20-30d3-4688-8869-e2f7cd282610)

## Diagrama de Tempo

![Image](https://github.com/user-attachments/assets/467fd3ac-0b4a-41a9-a71a-2673d0b0361d)


<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](module_shift.v)

</div>



<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
