algoritmo "media"
// Fun??o :
// Autor :
// Data : 07/04/2020
// Se??o de Declara??es 
var
n1, n2, m :real

inicio
// Se??o de Comandos

Escreval("Escreva a primeira nota: ")
Leia(n1)

Escreval("Escreva a segunda nota: ")
Leia(n2)

m <-((n1 + n2)/2)

se (m > 7) entao
Escreva("Sua media ? superior a media minima")
fimse
se (m = 7) entao
Escreva("Sua media ? igual a m?dia minima")
fimse
se (m < 7) entao
Escreva ("Sua media ? inferior a m?dia minima")
fimse
fimalgoritmo
