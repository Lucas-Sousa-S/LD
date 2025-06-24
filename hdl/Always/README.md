![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Procedures+%20&fontAlignY=40&color=00bfbf)

Procedimentos incluem blocos [always](#1-section), [initial](#2-section), [task](#3-section) e [function](#4-section). Procedimentos permitem que instruções sequenciais (que não podem ser usadas fora de um procedimento) sejam usadas para descrever o comportamento de um circuito.<br><br>
Em **Verilog**, procedimentos são blocos que permitem descrever comportamentos sequenciais, ou seja, instruções que são executadas em uma determinada ordem (diferente da atribuição contínua ```assign```, que é sempre simultânea). Eles são essenciais para modelar comportamentos que mudam com o tempo ou que dependem de condições específicas.

Os principais tipos de procedimentos são:

1.  **always** (bloco sempre executado)
Usado para modelar circuitos que reagem a eventos (como bordas de clock ou mudanças em sinais).

Exemplo (flip-flop D):
```
always @(posedge clk) begin
    q <= d;
end
```
> Executado sempre que ocorre um evento na lista de sensibilidade (@).
Pode ser usado para lógica sequencial (com posedge clk) ou combinacional (com *).
<br> <br>
2. **initial** (bloco executado uma vez no início da simulação)
Usado apenas em simulação, não é sintetizável.

Exemplo:

```initial begin
    a = 0;
    b = 1;
end 
```

> Executado uma única vez no início da simulação.
<br> <br>
3. **task** 
Define um procedimento que pode executar várias ações, com tempo envolvido (```#```, ```@```).

Exemplo:
```
task automatic reset;
    begin
        rst = 1;
        #5 rst = 0;
    end
endtask
```
> Pode receber argumentos.
Pode ter múltiplas instruções e delays.
Usado para reutilização de código com ações sequenciais.
<br> <br>
4. **function**
Define um procedimento que retorna um valor, mas não pode conter delays ou eventos.

Exemplo:
```
function [3:0] mux2;
    input [3:0] a, b;
    input sel;
    begin
        mux2 = sel ? b : a;
    end
endfunction
```

> Sempre combinacional.
Apenas um valor de retorno.
Muito útil em lógica aritmética ou seleção.

<br> <br>

> [!IMPORTANT]
> Declarações como if, case, for, while só podem ser usadas dentro de blocos procedurais, ou seja, dentro de always, initial, task, ou function. Por isso, eles são essenciais para descrever comportamentos condicionais ou iterativos em um circuito digital.




<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
