algoritmo "idadeVoto_P2"
// Função :Perguntar a idade para o usuario e notificalo de sua situação
// Autor :Leonardo Araujo
// Data : 16/06/2020
// Seção de Declarações 
var

i: inteiro  //idade

inicio
// Seção de Comandos 

Escreva("Digite sua idade: ")
Leia(i)

Se (i < 16) entao
Escreval ("Voto não Permitido!")
fimse

Se (i >= 18)e (i <= 65) entao
Escreval ("Voto é Obrigatorio!")
fimse

Se ((i >= 16)e (i < 18)) ou (i > 65) entao
Escreval ("Voto é facultativo!")
fimse




fimalgoritmo
