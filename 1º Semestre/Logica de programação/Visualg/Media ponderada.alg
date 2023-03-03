algoritmo "Media ponderada"
// Função :Calcula Media Ponderada
// Autor :Leonardo Faria Araujo
// Data : 17/03/2020
// Seção de Declarações 
var
N1: Real
P1: Real
N2: Real
P2: Real
N3: Real
P3: Real
M: Real
inicio
// Seção de Comandos
ESCREVAL ("Digite a primeira nota:")
LEIA (N1)
ESCREVAL ("Digite o peso da primeira nota")
Leia (P1)
ESCREVAL ("Digite a segunda nota:")
LEIA (N2)
ESCREVAL ("Digite o peso da segunda nota")
Leia (P2)
ESCREVAL ("Digite a terceira nota:")
LEIA (N3)
ESCREVAL ("Digite o peso da terceira nota")
Leia (P3)
M <- ((N1 * (P1/100)) + (N2 * (P2/100)) + (N3 * (P3/100)) / ((P1/100)+ (P2/100) + (P3/100)))
Escreval ("A média final é:", M)
fimalgoritmo
