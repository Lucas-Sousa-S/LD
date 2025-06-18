<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=header"/>


Construa um circuito com duas entradas de 3 bits que calculam o OR bit a bit dos dois vetores, o OR lógico dos dois vetores e o inverso (NOT) de ambos os vetores. Coloque o inverso de b na metade superior de out_not (ou seja, bits [5:3]) e o inverso de a na metade inferior.


## Operadores Bit a Bit vs. Operadores Lógicos<br>
Anteriormente, mencionamos que existem versões bit a bit e lógicas dos vários operadores booleanos (por exemplo, norgate). Ao usar vetores, a distinção entre os dois tipos de operadores torna-se importante. Uma operação bit a bit entre dois vetores de N bits replica a operação para cada bit do vetor e produz uma saída de N bits, enquanto uma operação lógica trata o vetor inteiro como um valor booleano (verdadeiro = diferente de zero, falso = zero) e produz uma saída de 1 bit.
Observe as formas de onda da simulação para ver como o OR bit a bit e o OR lógico diferem.


## Declaração do Módulo <br> 
```
módulo top_module( entrada [2:0] a, entrada [2:0] b, saída [2:0] out_or_bitwise, saída_ou_lógica, saída [5:0] 
```

## Uma obs

> Embora não seja possível atribuir a um fio mais de uma vez, você pode usar uma seleção parcial no lado esquerdo de uma atribuição. Não é necessário atribuir a todo o vetor em uma única instrução.

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
