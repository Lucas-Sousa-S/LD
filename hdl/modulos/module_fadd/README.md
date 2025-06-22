![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Module+fadd+%20&fontAlignY=40&color=00bfbf)

<p>Neste exercício, você criará um circuito com dois níveis de hierarquia. Seu módulo top_module instanciará duas cópias de add16 (fornecidas), cada uma das quais instanciará 16 cópias de add1 (que você deve escrever). Portanto, você deve escrever dois módulos: top_module e add1.
Assim como o módulo_add, você recebe um módulo add16 que realiza uma adição de 16 bits. Você deve instanciar dois deles para criar um somador de 32 bits. Um módulo add16 calcula os 16 bits inferiores do resultado da adição, enquanto o segundo módulo add16 calcula os 16 bits superiores do resultado. Seu somador de 32 bits não precisa lidar com carry-in (assuma 0) ou carry-out (ignorado).Conecte os módulos add16 como mostrado no diagrama abaixo. O módulo add16 fornecido possui a seguinte declaração:
module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
Em cada add16, 16 somadores completos (módulo add1, não fornecido) são instanciados para realizar a adição. Você deve escrever o módulo somador completo que possui a seguinte declaração:
module add1 ( input a, input b, input cin, output sum, output cout );
Lembre-se de que um somador completo calcula a soma e o carry-out de a+b+cin.
Em resumo, há três módulos neste projeto:
top_module — Seu módulo de nível superior que contém dois de...
add16, provided — Um módulo somador de 16 bits composto por 16 de...
add1 — Um módulo somador completo de 1 bit.</p>

## Como eu resolvi
- Entendi que ```add16``` depende de ```add1```, então o primeiro passo foi criar um somador completo de 1 bit ```(add1)``` com expressões booleanas conhecidas:
- ```sum = a ^ b ^ cin```
- ```cout = (a & b) | (a & cin) | (b & cin)```
- Para o ```top_module```, percebi que a soma de 32 bits deveria ser feita em duas partes de 16 bits:
A primeira usa ```add16``` com ```cin = 0``` (parte baixa).
A segunda usa outro ```add1``` com o carry gerado da primeira (parte alta).
- Por fim, uni os resultados com ```assign sum = {sum_high, sum_low}``` para compor os 32 bits finais, como exige o módulo de topo.

![Image](https://github.com/user-attachments/assets/7b9240cb-d5dd-4cbd-b8cc-237f28fe9d1d)

## Diagrama de Tempo
![Image](https://github.com/user-attachments/assets/e665d9a1-8cd2-4954-9df1-3ac9f44bbd6c)

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](module_fadd.v)

</div>



<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
