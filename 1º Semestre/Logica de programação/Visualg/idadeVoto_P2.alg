algoritmo "idadeVoto_P2"
// Fun??o :Perguntar a idade para o usuario e notificalo de sua situa??o
// Autor :Leonardo Araujo
// Data : 16/06/2020
// Se??o de Declara??es 
var

i: inteiro  //idade

inicio
// Se??o de Comandos 

Escreva("Digite sua idade: ")
Leia(i)

Se (i < 16) entao
Escreval ("Voto n?o Permitido!")
fimse

Se (i >= 18)e (i <= 65) entao
Escreval ("Voto ? Obrigatorio!")
fimse

Se ((i >= 16)e (i < 18)) ou (i > 65) entao
Escreval ("Voto ? facultativo!")
fimse




fimalgoritmo
