![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Always+if+%20&fontAlignY=40&color=00bfbf)

Uma instrução if geralmente cria um multiplexador 2 para 1, selecionando uma entrada se a condição for verdadeira e a outra entrada se a condição for falsa.<br><br>
![Image](https://github.com/user-attachments/assets/7ebc7130-dea2-4b03-a15b-0cf5039bb0ca)

```always @(*) begin
    if (condition) begin
        out = x;
    end
    else begin
        out = y;
    end
end
```
Isso equivale a usar uma atribuição contínua com um operador condicional:<br>
```assign out = (condition) ? x : y;``` <br>
No entanto, a instrução procedural if oferece uma nova maneira de cometer erros. O circuito é combinacional somente se out sempre receber um valor.

## Praticando um pouco
Construa um mux 2 para 1 que escolha entre a e b. Escolha b se sel_b1 e sel_b2 forem verdadeiros. Caso contrário, escolha um. Faça o mesmo duas vezes, uma vez usando instruções de atribuição e uma vez usando uma instrução if processual.

sel_b1       | sel_b2 | out_assign<br>out_always
:----------- | :----: | :----:
0		|  0   | a
0		|  1   | a
1		|  0   | a
1		|  1   | b





## Diagrama de Tempo
![Image](https://github.com/user-attachments/assets/fd822743-4da4-4c60-aa4f-6c4a41a5b17a)

 <br>

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](always_if.v)

</div>

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
