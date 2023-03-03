algoritmo "funcionarioGanhaPerde"
// Função :Fala se o vendedor vendeu o numero de peças necessarias para "ganhar"
// Autor :Leonardo Araujo
// Data : 14/04/2020
// Seção de Declarações 
var
n :literal      //Nome
mv :inteiro    //Meta de vendas
pv :inteiro   //Peças vendidas


inicio
// Seção de Comandos 

escreva("Digite o seu nome: ")
leia(n)
escreva("Digite a meta de vendas: ")
leia(mv)
escreva("Digite o numero de peças vendidas: ")
leia(pv)

se (pv > mv) entao

escreva("O funcionario: ",n)
escreva(", GANHOU!!!!!")

senao
escreva("O funcionario: ",n)
escreva(", NÃO GANHOU, NÃO FOI DESSA VEZ, TENTE NA PROXIMA!!!")
fimse






fimalgoritmo
