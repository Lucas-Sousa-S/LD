![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Always+case+%20&fontAlignY=40&color=00bfbf)

## Entendendo a Instrução case no Verilog

As instruções case no Verilog são, na prática, quase equivalentes a uma sequência de comandos ```if-elseif-else``` que comparam uma expressão com uma lista de possíveis valores. No entanto, a sintaxe e o funcionamento são diferentes da instrução switch usada em C.

Quando escrevo um bloco ```always @(*)```, estou descrevendo um circuito combinacional. Por exemplo:<br>
```
always @(*) begin
    case (in)
        1'b1: begin
            out = 1'b1; // Uso begin-end se houver mais de uma instrução
        end
        1'b0: out = 1'b0;
        default: out = 1'bx;
    endcase
end
```


A instrução case começa com a palavra-chave case, e cada item de caso termina com dois pontos. Não há o comando switch como em C.

Cada item de case pode executar exatamente uma instrução. Por isso, o break que usamos em C não é necessário aqui. No entanto, se eu precisar executar mais de uma instrução para um caso, devo usar begin ... end para agrupá-las.

O Verilog também permite itens duplicados ou parcialmente sobrepostos no case. Quando isso acontece, o primeiro item que corresponder é o que será utilizado. Já em C, não é permitido ter itens duplicados em um switch.

Agora, para praticar, estou desenvolvendo um multiplexador 6:1. Quando sel estiver entre 0 e 5, seleciono a entrada de dados correspondente. Para qualquer outro valor, a saída será 0. Todas as entradas e saídas têm 4 bits de largura.

## Diagrama de tempo
![Image](https://github.com/user-attachments/assets/8fe245de-642e-42c2-8e6e-282feb5724c8)


<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](always_case.v)

</div>
  

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
