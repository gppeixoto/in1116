# in1116 - 2018.1

---
## Projeto final - monkey and bananas problem

### Guilherme Palma Peixoto [gpp@cin.ufpe.br]

O projeto é composto de dois arquivos:

* `monkey-bananas-dom.pddl`, que contém a definição do domínio descrito;
* `monkey-bananas-prob.pddl`, que contém a definição do problema.

O problema consiste em realizar o planejamento de um macaco (na posição A) a alcançar uma banana (na posição C) elevada com o auxílio de uma caixa (na posição B).

Os tipos definidos são: `MONKEY`, `BANANA`, `BOX` e `LOCATION`. 

Os predicados definidos são:
* `at-obj ?obj ?loc`, que indica se um objeto `obj` encontra-se na localização `loc`;
* `is-high ?obj`, que indica se um objeto está elevado ou "no nível do chão";
* `has-banana ?monk ?ban`, que indica se o macaco `?monk` possui, nesse momento, a banana `?ban`.

As ações definidas são:

* `MOVE`, que movimenta o macaco;
* `PUSH`, que faz o macaco empurrar uma caixa;
* `CLIMB`, que faz o macaco subir/escalar um objeto;
* `PICKUP`, que faz o macaco pegar um objeto;
* `GETDOWN`, que faz o macaco descer de um objeto;
* `CARRY`, que faz o macaco carregar um objeto (a banana). 

O projeto foi executado com o auxílio do `blackbox`, num ambiente MacOS. Rodando o binário pelo terminal com o seguinte comando abaixo, o programa é capaz de realizar o planejamento e imprimir na tela de saída do terminal o resultado:

```bash
$ ./blackbox -o monkey-bananas-dom.pddl -f monkey-bananas-prob.pddl
```

a saída da execução do comando acima encontra-se no arquivo `blackbox.out`.