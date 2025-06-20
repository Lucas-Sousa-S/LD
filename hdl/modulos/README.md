![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Módulos:+Hierarquia+%20&fontAlignY=40&color=00bfbf)

---

Agora você já está familiarizado com um **módulo**, que é um circuito que interage com seu exterior por meio de **portas de entrada e saída**. Circuitos maiores e mais complexos são construídos pela composição de **módulos maiores a partir de módulos menores** e outras partes (como instruções de atribuição e blocos `always`) conectadas entre si. Isso forma uma **hierarquia**, pois os módulos podem conter instâncias de outros módulos.

Abaixo, temos um exemplo de como criar uma instância de um submódulo dentro de um módulo principal. O módulo fornecido `mod_a` possui três portas: `in1`, `in2` e `out`, e o objetivo é conectá-las às portas do módulo de nível superior: `a`, `b` e `saida`. Além disso, Note que, no [código](hdl/modulos/modulo.v) , não podemos instanciar o módulo duas vezes com a mesma saída, pois elas estariam em curto.


### Definição do submódulo (fornecido):

```verilog
module mod_a (
    input in1,
    input in2,
    output out
);
// ... implementação interna (não visível)
endmodule
```

### Módulo principal com instância do submódulo:

```verilog
module top_module (
    input a,
    input b,
    output saida
);

    // Instanciação do submódulo mod_a
    mod_a instancia (
        .in1(a),
        .in2(b),
        .out(saida)
    );

endmodule
```

Nesse exemplo:

* O módulo `top_module` é o nível superior (módulo principal).
* Dentro dele, criamos uma **instância** do módulo `mod_a`, chamada `instancia`.
* As portas do submódulo são conectadas às variáveis do módulo principal usando **associação nomeada** (`.porta(substituto)`).
* A implementação interna de `mod_a` não precisa ser conhecida — **basta saber as portas** e seus tipos (entrada ou saída).

Essa prática permite **organizar o código em partes reutilizáveis**, facilitando a **manutenção**, **testes** e a **compreensão** de circuitos digitais complexos. O uso da hierarquia é um dos pilares do design em Verilog e em qualquer linguagem de descrição de hardware.

---


<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
