algoritmo "CalculaSalario"

// Fun??o...: Com base no salario atual e percentual de reajuste, calcular o valor do reajuste e valor do novo sal?rio
// Autor....: LP - CIENCO 2020 - Exemplo de utiliza??o do VISUALG
// Data.....: 17/03/2020

// Se??o de Declara??es
 
var
Salario: REAL
PercReajuste: REAL
ValorReajuste: REAL
NovoSalario: REAL

inicio
// Se??o de Comandos 

Salario <- 5000;       // Atribuindo a vari?vel Sal?rio o valor do sal?rio atual
PercReajuste <- 0.12;  // Atribuindo a vari?vel PercReajuste a porcentagem
ValorReajuste <- Salario * PercReajuste;
NovoSalario <- Salario + ValorReajuste;

ESCREVAL ("O valor do reajuste ?: R$", ValorReajuste)        // A letra L no final da palavra escreva equivale ao fim de linha
ESCREVAL ("O valor do novo sal?rio ?: R$", NovoSalario)      // A letra L no final da palavra escreva equivale ao fim de linha
fimalgoritmo
