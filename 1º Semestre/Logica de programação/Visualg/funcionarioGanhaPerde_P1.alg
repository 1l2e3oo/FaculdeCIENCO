algoritmo "funcionarioGanhaPerde"
// Fun??o :Fala se o vendedor vendeu o numero de pe?as necessarias para "ganhar"
// Autor :Leonardo Araujo
// Data : 14/04/2020
// Se??o de Declara??es 
var
n :literal      //Nome
mv :inteiro    //Meta de vendas
pv :inteiro   //Pe?as vendidas


inicio
// Se??o de Comandos 

escreva("Digite o seu nome: ")
leia(n)
escreva("Digite a meta de vendas: ")
leia(mv)
escreva("Digite o numero de pe?as vendidas: ")
leia(pv)

se (pv > mv) entao

escreva("O funcionario: ",n)
escreva(", GANHOU!!!!!")

senao
escreva("O funcionario: ",n)
escreva(", N?O GANHOU, N?O FOI DESSA VEZ, TENTE NA PROXIMA!!!")
fimse






fimalgoritmo
