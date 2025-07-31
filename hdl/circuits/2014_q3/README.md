![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=2014_q3+%20&fontAlignY=40&color=00bfbf)


Estou considerando a função f mostrada no mapa de Karnaugh abaixo. <br>
<img width="200" height="200" alt="Image" src="https://github.com/user-attachments/assets/2aef23c8-ac13-46f7-9f8e-f346c79cb7b7" /> <br>Vou implementá-la, lembrando que os valores ```d``` são ```don't-cares```, ou seja, posso escolher qualquer valor que for mais conveniente para simplificar a lógica

# 🔍 O Enigma do Mapa de Karnaugh

Quando o tempo é curto e os bits são caprichosos, a função precisa estar impecável.
> Um estudante em ritmo acelerado

<br>


## Sobre o desafio

No exercício **m2014_q3** do HDLBits, você precisa implementar uma função lógica `f` com base em um **Mapa de Karnaugh**, onde alguns valores são **don't-care (`d`)**. Ou seja: certos pontos não importam para o comportamento final e podem ser usados para simplificar a expressão.

O objetivo: obter a expressão mais concisa e correta possível, combinando lógica booleana com estratégia e clareza.

---

## Interface do módulo

```verilog
module top_module (
    input [4:1] x,  // vetores com índices de 1 a 4
    output f        // a saída lógica da função mapeada
);
```

-  A função ```f``` é o complemento de uma soma de produtos que cobre todos os casos onde ```f=0```.
-  Os termos agrupam os pontos obrigatórios a zero, e os don't-cares são usados para permitir agrupamentos mais largos, simplificando.
-  A negação externa ```(~(...))``` transforma a soma de minterms que resultam em zero numa função que é ```1``` nos outros casos.

  ## oq ganho estudando isso?
- Como derivar uma função a partir de um K-map com don't-cares.
- A técnica de complementação externa para gerar funções com poucos termos.
- Como garantir que sua expressão cubra exatamente os vetores certos e simplifique onde é possível.

  > Não basta simplificar: é preciso acertar todos os bits.
<br><br>
<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](2014_q3.v)

</div>


<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>

