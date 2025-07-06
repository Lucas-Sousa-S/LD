![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Always+notlatches+%20&fontAlignY=40&color=00bfbf)

## `always @(*)` sem travas (Not Latches)

Precisei construir um circuito simples para interpretar os *scancodes* de um teclado PS/2 em um jogo (exemplo de aplicação). O objetivo era reconhecer quando uma das quatro teclas de seta (esquerda, direita, cima, baixo) fosse pressionada.

A entrada do meu circuito é um sinal de 16 bits que representa os dois últimos bytes recebidos do teclado. Com base nesses valores, eu precisava ativar uma das quatro saídas correspondentes a cada direção. Os códigos específicos são os seguintes:

| Código de Scancode (`[15:0]`) | Tecla         |
| ----------------------------- | ------------- |
| `16'he06b`                    | Esquerda      |
| `16'he072`                    | Baixo         |
| `16'he074`                    | Direita       |
| `16'he075`                    | Cima          |
| Qualquer outro                | Nenhuma ativa |

Inicialmente, minha ideia era usar uma estrutura `case` ou `if-elseif` dentro de um bloco `always @(*)` para definir qual tecla foi pressionada. Mas, percebi que **preciso tomar cuidado com travas (latches)**. Se eu não atribuir valores para todas as saídas em todas as situações possíveis, o sintetizador pode gerar lógica sequencial indesejada, criando latches em vez de um circuito puramente combinacional.

Então, para evitar isso

A melhor prática que adotei foi **sempre inicializar as saídas com um valor padrão logo no início do bloco `always @(*)`**. Dessa forma, mesmo que nenhum dos casos seja satisfeito, todas as saídas já têm um valor definido. Veja como eu escrevi o código:

```verilog
always @(*) begin
  cima    = 1'b0;
  baixo   = 1'b0;
  esquerda = 1'b0;
  direita = 1'b0;

  case (scancode)
    16'he06b: esquerda = 1'b1;
    16'he072: baixo    = 1'b1;
    16'he074: direita  = 1'b1;
    16'he075: cima     = 1'b1;
    // não preciso de default aqui!
  endcase
end
```

## Por que esse estilo é importante?

* Ao definir valores padrão para todas as saídas no início do bloco, **garanto que nenhuma latch será inferida**.
* Não preciso de um `default` explícito no `case`, porque **as saídas já foram inicializadas para `0`**.
* O circuito gerado será puramente **combinacional**, ou seja, o hardware resultante representa diretamente a lógica descrita **sem memória implícita**.


# Diagrama de tempo 
![Image](https://github.com/user-attachments/assets/65723d03-9c40-4ed4-8d64-5c63ce5c8153)

---


<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](always_notlatches.v)

</div>

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
