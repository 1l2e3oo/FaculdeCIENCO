algoritmo "Valor de comissão"
// Função :Venda e porcentual de comissão
// Autor :Leonardo Faria Araujo
// Data : 17/03/2020
// Seção de Declarações 
var
VV: REAL
PC: REAL
VC: REAL
inicio
// Seção de Comandos
ESCREVAL ("Digite o valor do produto:")
LEIA (VV)
ESCREVAL ("Digite o porcentual de cimissão:")
LEIA (PC)
VC <- VV * (PC / 100)
ESCREVAL ("O Valor da comissão é:", VC)
fimalgoritmo
