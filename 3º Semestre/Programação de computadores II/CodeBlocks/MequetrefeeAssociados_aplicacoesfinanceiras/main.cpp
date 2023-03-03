#include <iostream>
#include <locale>
#include <iomanip>
#include <stdlib.h>

using namespace std;

int main()
{
    setlocale(LC_ALL,"Portuguese");
    float c = 0;  //Capital que sera aplicada
    int p = 0; //Periodo em que sera aplicado
    int op = 0;
    float vm = 0; //Valor Montante

    cout << fixed << setprecision(2);

    cout << "Entre com o capital que deseja investir: ";
    cin  >> c;
    cout << "Entre com a quantidade de m�ses que deseja manter o investimento: ";
    cin  >> p;


    cout << "       Entre com op��o desejada: " << endl;
    cout << "   1 - Poupan�a Simples (Capital m�nimo 100.00, Juros de 1.00 % ao m�s e tempo m�nimo de aplica��o de 3 meses)\n";
    cout << "   2 - Poupan�a Plus (Capital m�nimo 500.00, Juros de 1.50 % ao m�s e tempo m�nimo de aplica��o de 6 meses)\n";
    cout << "   3 - Poupan�a Mega (Capital m�nimo 1000.00, Juros de 2.00 % ao m�s e tempo m�nimo de aplica��o de 12 meses)\n";
    cin  >> op;

    system("cls || clear");

    switch(op)
    {
    case 1:
        if(c >= 100 && c < 500 && p >= 3){
        vm = c + ((0.01* p) * 100);
        cout << "Poupan�a Simples - " << "R$" << vm << " " <<  p << " meses";
        } else {
            cout << "Opera��o inv�lida...Escolha outra op��o!";
        }
        break;
    case 2:
        if(c >= 500 && c < 1000 && p >= 6){
         vm = c + ((0.015 * p) * 100);
         cout << "Poupan�a Plus - " << "R$" << vm << " " << p << " meses";
        } else {
           cout << "Opera��o inv�lida...Escolha outra op��o!";
        }
         break;
    case 3:
        if(c >= 1000 && p >= 12){
        vm = c + ((0.02 * p) * 100);
        cout << "Poupan�a Plus - " << "R$" << vm << " " << p << " meses";
        } else {
            cout << "Opera��o inv�lida... Escolha outra op��o!";
        }
        break;
    default:
        cout << "Opera��o inv�lida... Escolha outra op��o!";

    }
}
