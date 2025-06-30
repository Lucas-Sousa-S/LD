![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Always+casez+%20&fontAlignY=40&color=00bfbf)


## Codificador de Prioridade com casez em Verilog
Criei um codificador prioritário para entradas de 8 bits. Dado um vetor de 8 bits, a saída deve relatar o primeiro bit (menos significativo) no vetor que for 1. Relato zero se o vetor de entrada não tiver bits altos. Por exemplo, se a entrada for 8'b10010000, a saída será 3'd4, porque o bit[4] é o primeiro bit que está em nível alto.

No exercício anterior [always case2](.../always_case2), eu teria que lidar com 256 casos na declaração de case. Percebi que posso reduzir isso (para apenas 9 casos) se os itens da declaração de case aceitarem bits “don’t care”. É justamente para isso que serve o ```casez```: ele trata os bits com valor ```z``` como irrelevantes na comparação.

Por exemplo, isso aqui implementaria o codificador de prioridade de 4 entradas do exercício anterior:
```
always @(*) begin
    casez (in[3:0])
        4'bzzz1: out = 0; // in[3:1] pode ser qualquer coisa
        4'bzz1z: out = 1;
        4'bz1zz: out = 2;
        4'b1zzz: out = 3;
        default: out = 0;
    endcase
end
```
Entendi que uma declaração de case se comporta como se cada item fosse verificado sequencialmente (embora, na prática, isso seja representado por uma grande função lógica combinacional). Notei que existem entradas específicas (por exemplo, 4'b1111) que correspondem a mais de um item do case. Nesse caso, a primeira correspondência é a escolhida (então 4'b1111 casa com o primeiro item, out = 0, e ignora os seguintes).

Existe também um casex, semelhante ao casez, que trata tanto x quanto z como “don’t care”. No entanto, não vejo muito propósito em usá-lo no lugar do casez.

O dígito ```?``` é um sinônimo para ```z```, então ```2'bz0``` é o mesmo que ```2'b?0```

Na minha experiência, pode ser menos propenso a erros especificar explicitamente o comportamento de prioridade em vez de confiar na ordem dos itens do case. Por exemplo, o seguinte trecho continuará funcionando da mesma maneira mesmo que alguns itens sejam reordenados, porque qualquer padrão de bits só pode casar com, no máximo, um item da lista:
```
casez (in[3:0])
    4'bzzz1: ...
    4'bzz10: ...
    4'bz100: ...
    4'b1000: ...
    default: ...
endcase

```

## Diagrama de tempo
![Image](https://github.com/user-attachments/assets/5b62d9af-c5d2-4a49-abae-06efe1b0fe91)
<br>

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](always_casez.v)

</div>

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
