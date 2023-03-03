algoritmo "Media 3"
// Função :Recebe 3 notas e calcula a média
// Autor :Leonardo Faria Araujo
// Data : 17/03/2020
// Seção de Declarações 
var
N1: REAL
N2: REAL
N3: REAL
MEDIA: REAL
inicio
// Seção de Comandos

ESCREVAL ("Digite o valor da primeira nota")
LEIA (N1)
ESCREVAL ("Digite o valor da segunda nota")
LEIA (N2)
ESCREVAL ("Digite o valor da terceira nota")
LEIA (N3)

MEDIA <- (N1 + N2 + N3)/ 3
ESCREVAL ("A sua média é:", MEDIA)
fimalgoritmo
