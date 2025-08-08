![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=ece241_2014_q3+%20&fontAlignY=40&color=00bfbf)
# 🎛 Multiplexadores como Blocos de Construção Lógicos

> “Se só me dão muxes, construirei minha lógica inteira com muxes.”  
> Um estudante determinado, sem portas lógicas <br>

&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img width="200" height="200" alt="Image" src="https://github.com/user-attachments/assets/5e6ca967-41bf-4bec-a05d-9dab579d0d71" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img width="200" height="200" alt="Image" src="https://github.com/user-attachments/assets/120f96b4-4760-4628-8c18-99f386d9c89f" />



## Regras do jogo

- Use **um mux 4:1** como núcleo principal.
- **Apenas multiplexadores 2:1 adicionais são permitidos**, mas use o mínimo possível.
- **Proibido usar AND, OR, NOT, XOR, XNOR...** nada de portas lógicas!
- As entradas de controle do mux 4:1 são **`a` e `b`** (não declaradas neste módulo, são externas).
- O módulo `top_module` fornece os **quatro valores de entrada** (`mux_in[3:0]`) para o mux 4:1, com base nas variáveis `c` e `d`.

---

## Interface do módulo

```

module top_module (
    input c,
    input d,
    output [3:0] mux_in // Entradas D0 a D3 do mux 4:1
);
```

Vou usar o mapa de Karnaugh como referência para gerar os quatro valores da entrada mux_in, utilizando exclusivamente multiplexadores 2:1, se necessário.

Esses valores representam a função f(a,b,c,d) onde a e b controlam o mux 4:1, e mux_in contém os quatro possíveis valores de saída dependendo de a e b.

## Solução 
```
module top_module (
    input c,
    input d,
    output [3:0] mux_in
); 
    assign mux_in[0] = c | d;   // D0: f(a=0, b=0, c, d)
    assign mux_in[1] = 0;       // D1: f(a=0, b=1, c, d)
    assign mux_in[2] = ~d;      // D2: f(a=1, b=0, c, d)
    assign mux_in[3] = c & d;   // D3: f(a=1, b=1, c, d)
endmodule


```
A saída final f depende de a e b, que controlam o mux 4:1. O seu trabalho aqui é preencher as quatro entradas desse mux, mux_in[0] até mux_in[3], de acordo com os valores da função f no mapa de Karnaugh.

Cada expressão foi escolhida com base na tabela verdade da função e minimizada utilizando as variáveis disponíveis (c e d), evitando o uso de portas explícitas.
## Diagrama de Tempo
![Image](https://github.com/user-attachments/assets/8672b102-8133-4711-ba00-eecbaac3294f)
<br>
<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](ece241_2014_q3.v)

</div>

> Feito com lógica, mux e persistência por <br> Lucas Sousa Estudante de Engenharia de Computação ⚙️

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
