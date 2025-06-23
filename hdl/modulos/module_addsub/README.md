![waving](https://capsule-render.vercel.app/api?type=waving&height=200&text=Module+addsub+%20&fontAlignY=40&color=00bfbf)

  Um somador-subtrator pode ser construído a partir de um somador, negando opcionalmente uma das entradas, o que é equivalente a inverter a entrada e depois adicionar 1. O resultado líquido é um circuito que pode fazer duas operações: (a + b + 0) e (a + ~b + 1). 
Construa o adicionador-subtrator abaixo.<br><br>Você recebe um módulo de soma de 16 bits, foi necessário instanciar duas vezes:<br>
```module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );``` <br>
Usando uma porta XOR de 32 bits de largura para inverter a entrada b sempre que sub for 1. (Isso também pode ser visto como b[31:0] XORed com sub replicado 32 vezes. Veja o operador de replicação.). Conectando também a subentrada ao carry-in do somador.


## Como eu resolvi
- Use o operador XOR para inverter ```b``` condicionalmente (com base no sinal ```sub```);
- Conecte o resultado ao somador de 16 bits;
- Use dois somadores de 16 bits: um para os bits menos significativos (```[15:0]```) e outro para os mais significativos (```[31:16]```);
- O ```sub``` também vai como ```cin``` no primeiro somador (para somar o 1 quando estamos subtraindo);
- O ```cout``` do primeiro somador entra como ```cin``` no segundo.

![Image](https://github.com/user-attachments/assets/1fc72f00-e3f9-4df1-8b1c-4c174597d62a)

## Diagrama de Tempo
![Image](https://github.com/user-attachments/assets/8ae4e9b4-46c6-4bc7-9e76-f4f65634ff44)

<div align="center">
  
[![Ir ao problema](https://img.shields.io/badge/Ir%20ao%20problema-00bfbf?style=for-the-badge&logoColor=white&labelColor=00bfbf)](module_addsub.v)

</div>

> [!NOTE]
> Uma ```porta XOR``` também pode ser vista como um inversor programável, onde uma entrada controla se a outra deve ser invertida. Os dois circuitos a seguir são ambos portas XOR


<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=00bfbf&height=120&section=footer"/>
