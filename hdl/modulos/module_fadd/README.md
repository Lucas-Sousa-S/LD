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
- Instanciar três módulos my_dff8 em cadeia, criando um registrador de deslocamento de 8 bits de largura e profundidade 3.
- Implementar um multiplexador 4:1 para escolher entre:
d (entrada direta, 0 ciclos de atraso)
Saída após o primeiro my_dff8 (1 ciclo de atraso)
Saída após o segundo my_dff8 (2 ciclos de atraso)
Saída após o terceiro my_dff8 (3 ciclos de atraso)

![Image](https://github.com/user-attachments/assets/7b9240cb-d5dd-4cbd-b8cc-237f28fe9d1d)

## Diagrama de Tempo
![Image](https://github.com/user-attachments/assets/e665d9a1-8cd2-4954-9df1-3ac9f44bbd6c)

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](module_fadd.v)

</div>



<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
