![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Always+Block1+%20&fontAlignY=40&color=00bfbf)

Como os circuitos digitais são compostos de portas lógicas conectadas com fios, qualquer circuito pode ser expresso como alguma combinação de módulos e atribuir instruções. No entanto, às vezes essa não é a maneira mais conveniente de descrever o circuito. Os procedimentos (dos quais os blocos são sempre um exemplo) fornecem uma sintaxe alternativa para descrever circuitos.
Para sintetizar hardware, dois tipos de sempre blocos são relevantes: <br>
- Combinacional: sempre @(*)
- Relógio: sempre @(posedge clk)
  
Sempre blocos combinacionais são equivalentes a atribuir instruções, portanto, sempre há uma maneira de expressar um circuito combinacional de ambas as maneiras. A escolha entre qual usar é principalmente uma questão de qual sintaxe é mais conveniente. A sintaxe para o código dentro de um bloco de procedimentos é diferente do código que está fora. Os blocos processuais têm um conjunto mais rico de instruções (por exemplo, if-then, case), não podem conter atribuições contínuas*, mas também introduzem muitas novas maneiras não intuitivas de cometer erros. (*Atribuições contínuas processuais existem, mas são um pouco diferentes das atribuições contínuas e não são sintetizáveis.)
Por exemplo, a atribuição e o bloco combinacional sempre descrevem o mesmo circuito. Ambos criam a mesma bolha de lógica combinacional. Ambos recompalcam a saída sempre que qualquer uma das entradas (lado direito) mudar de valor.<br>
```assign out1 = a & b | c ^ d;```<br>
```always @(*) out2 = a & b | c ^ d;```<br><br>

## Um pouco de prática
Construa um portão AND usando uma instrução de atribuição e um bloco sempre combinacional. (Como atribuir instruções e combinacional sempre bloqueia a função de forma idêntica, não há como impor que você esteja usando os dois métodos. 


![Image](https://github.com/user-attachments/assets/c53bf81a-4a64-4417-b139-a6112b9325cf)

## Diagrama de Tempo
![Image](https://github.com/user-attachments/assets/d9dfe2fc-0c34-481a-8476-29c2cb5a368e)

 <br>

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](always_block1.v)

</div>



<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
