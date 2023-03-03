algoritmo "descontoLoja_P2"
// Função :
// Autor :Leonardo Araujo
// Data : 16/06/2020
// Seção de Declarações 
var

vc: real      //Valor da Compra
tc: inteiro   //Tipo de Cliente
vp: real      //Valor a ser Pago

inicio
// Seção de Comandos 

Escreva("Digite o Valor da Compra: ")
Leia(vc)   //Valor da Compra

Escreva("Escreva o Tipo de cliente (1 - Funcionário / 2 - Vip / 3 - Comum) : ")
Leia(tc)  //Tipo de Cliente

Se (tc=1) entao
vp <- (vc - ((vc * 20)/100)))

escreva ("o valor a ser pago é", vp)
fimse



Se (tc=2) entao
vp <- (vc - ((vc*15)/100)))

escreva ("o valor a ser pago é", vp)
fimse




Se (tc = 3) entao
vp <- (vc - ((vc * 10)/100)))

escreva ("o valor a ser pago é", vp)
fimse




fimalgoritmo
