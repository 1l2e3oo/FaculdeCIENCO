algoritmo "tresNotasMaior"
// Fun??o :Ler tres notas e mostrar a maior
// Autor :Leonardo Araujo
// Data : 14/04/2020
// Se??o de Declara??es 
var
n1 :numerico
n2 :numerico
n3 :numerico
nome :literal
inicio
// Se??o de Comandos 

Escreva("Digite o seu nome: ")
leia (nome)
escreva("Escreva a primeira nota: ")
leia (n1)
escreva("Escreva a segunda nota: ")
leia (n2)
escreva("Escreva a terceira nota: ")
leia (n3)

escreva("Nome: ", nome )

se (n2 > n1) e (n2 > n3) entao
escreval("sua maior nota ?: ", n2)
fimse

se (n1 > n2) e (n1 > n3) entao
escreval("A maior nota ?: ", n1)
fimse

se (n3 > n2) e (n3 > n1) entao
escreval("A maior nota ?: ", n3)
fimse



fimalgoritmo
