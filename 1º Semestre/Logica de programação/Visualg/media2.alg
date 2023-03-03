algoritmo "media"
// Função :
// Autor :
// Data : 07/04/2020
// Seção de Declarações 
var
n1, n2, m :real

inicio
// Seção de Comandos

Escreval("Escreva a primeira nota: ")
Leia(n1)

Escreval("Escreva a segunda nota: ")
Leia(n2)

m <-((n1 + n2)/2)

se (m > 7) entao
Escreva("Sua media é superior a media minima")
fimse
se (m = 7) entao
Escreva("Sua media é igual a média minima")
fimse
se (m < 7) entao
Escreva ("Sua media é inferior a média minima")
fimse
fimalgoritmo
