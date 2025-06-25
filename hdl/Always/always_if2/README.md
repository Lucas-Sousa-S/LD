![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Always+if2+%20&fontAlignY=40&color=00bfbf)

## Uma fonte comum de erros: Como evitar fazer travas
Ao projetar circuitos, você deve pensar primeiro em termos de circuitos:
- Eu quero este logic gate;
- Eu quero uma bolha *combinational* que tenha essas entradas e produza essas saídas;
- Eu quero uma bolha *combinational* seguida por um conjunto de flip-flops.

O que você não deve fazer é escrever o código primeiro, depois esperar que ele gere um circuito adequado.
- If (cpu_overheated) então shut_off_computer = 1;
- If (~arrived) então keep_driving = ~gas_tank_empty;

O código sintaticamente correto não resulta necessariamente em um circuito razoável (lógica combinada + flip-flops). O motivo usual é: "O que acontece nos casos que não sejam aqueles que você especificou?". A resposta do Verilog é: Mantenha as saídas inalteradas.
Esse comportamento de "manter as saídas inalteradas" significa que o estado atual precisa ser lembrado e, portanto, produz uma trava. A lógica combinacional (por exemplo, portas lógicas) não consegue lembrar de nenhum estado. Cuidado com o Aviso (10240): ... inferindo mensagens de trava(s)". A menos que a trava tenha sido intencional, quase sempre indica um bug. Os circuitos combinacionais devem ter um valor atribuído a todas as saídas em todas as condições. Isso geralmente significa que você sempre precisa de cláusulas else ou um valor padrão atribuído às saídas.

## Demonstração
O código a seguir contém um comportamento incorreto que cria uma trava. Corrija os bugs para que você desligue o computador apenas se ele estiver realmente superaquecido e pare de dirigir se tiver chegado ao seu destino ou se precisar reabastecer.

![Image](https://github.com/user-attachments/assets/474ad314-f37d-4a4f-be68-1aac834cd687)
> Este é o circuito descrito pelo código, não o circuito que você deseja construir.
```
always @(*) begin
    if (cpu_overheated)
       shut_off_computer = 1;
end

always @(*) begin
    if (~arrived)
       keep_driving = ~gas_tank_empty;
end
```

## Diagrama de Tempo
![Image](https://github.com/user-attachments/assets/26eecdc1-350d-4b10-97f6-a98e35c764ff)
 <br>

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](always_if2.v)

</div>

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
