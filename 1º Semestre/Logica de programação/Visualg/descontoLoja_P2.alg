algoritmo "descontoLoja_P2"
// Fun??o :
// Autor :Leonardo Araujo
// Data : 16/06/2020
// Se??o de Declara??es 
var

vc: real      //Valor da Compra
tc: inteiro   //Tipo de Cliente
vp: real      //Valor a ser Pago

inicio
// Se??o de Comandos 

Escreva("Digite o Valor da Compra: ")
Leia(vc)   //Valor da Compra

Escreva("Escreva o Tipo de cliente (1 - Funcion?rio / 2 - Vip / 3 - Comum) : ")
Leia(tc)  //Tipo de Cliente

Se (tc=1) entao
vp <- (vc - ((vc * 20)/100)))

escreva ("o valor a ser pago ?", vp)
fimse



Se (tc=2) entao
vp <- (vc - ((vc*15)/100)))

escreva ("o valor a ser pago ?", vp)
fimse




Se (tc = 3) entao
vp <- (vc - ((vc * 10)/100)))

escreva ("o valor a ser pago ?", vp)
fimse




fimalgoritmo
