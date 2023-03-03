algoritmo "CalculaSalario"

// Função...: Com base no salario atual e percentual de reajuste, calcular o valor do reajuste e valor do novo salário
// Autor....: LP - CIENCO 2020 - Exemplo de utilização do VISUALG
// Data.....: 17/03/2020

// Seção de Declarações
 
var
Salario: REAL
PercReajuste: REAL
ValorReajuste: REAL
NovoSalario: REAL

inicio
// Seção de Comandos 

Salario <- 5000;       // Atribuindo a variável Salário o valor do salário atual
PercReajuste <- 0.12;  // Atribuindo a variável PercReajuste a porcentagem
ValorReajuste <- Salario * PercReajuste;
NovoSalario <- Salario + ValorReajuste;

ESCREVAL ("O valor do reajuste é: R$", ValorReajuste)        // A letra L no final da palavra escreva equivale ao fim de linha
ESCREVAL ("O valor do novo salário é: R$", NovoSalario)      // A letra L no final da palavra escreva equivale ao fim de linha
fimalgoritmo
