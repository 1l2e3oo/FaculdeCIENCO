#include <iostream>
#include <locale>

float com (float venda);  // com = Valor da Comissão

using namespace std;

int main()
{
    setlocale(LC_ALL,"Portuguese");

    float venda;

    cout<<"Insira o valor de venda para calcular a comissão:";
    cin>> venda;

    cout<<"\n\nO valor dessa comissão é igual a "<< com (venda);

}

float com (float venda){
    float com;
    if(venda <=5000){
              com = venda * 0.1;
    }
    else{
            com = venda * 0.2;
    }
    return com;
}
