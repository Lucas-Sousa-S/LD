![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Always+case2+%20&fontAlignY=40&color=00bfbf)



## Construindo um Codificador de Prioridade de 4 Bits
Estou desenvolvendo um codificador de prioridade que é um circuito combinacional projetado para identificar a posição do primeiro bit '1' em um vetor de entrada. Por exemplo, em um codificador de 8 bits, se a entrada for ```8'b10010000```, a saída seria ```3'd4```, pois o bit de índice 4 é o primeiro com valor alto (1).

No meu caso, estou implementando um codificador de prioridade de 4 bits. A lógica é simples: ele deve verificar os bits de entrada e indicar a posição do primeiro bit em nível alto, começando da esquerda para a direita (do bit mais significativo para o menos significativo). Se todos os bits forem zero, a saída também será zero. Como um vetor de 4 bits possui 16 combinações possíveis, é importante garantir que todas sejam devidamente tratadas.


> O uso de literais numéricos hexadecimais (4'hb) ou decimais (4'd11) economizaria a digitação vs. literais binários (4'b1011).

## Diagrama de tempo
![Image](https://github.com/user-attachments/assets/40723109-9e44-4a76-b49b-1b60bf719f7c)

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](always_case2.v)

</div>

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
