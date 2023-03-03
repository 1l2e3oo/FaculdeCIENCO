/*
Programa que solicita ao usuario o valor de seu salario atual,
o porcentual de reajuste, calcula e mostra:
o valor do salario atual
o valor do reajuste
e o valor do novo salario (salario atual + reajuste)
*/

#include<iostream>
#include<locale>
using namespace std;

int main()
{
    setlocale(LC_ALL, "Portuguese");
    float sa, pr, vr, ns; //sa = salario atual/ vr = valor da variavel/ ns= novo salario

    cout << "Digite o valor do salario atual:";
    cin >> sa;

    cout << "Digite o porcentual do reajuste:";
    cin >> pr;

    vr = sa * (pr / 100);
    ns = sa + vr;

    cout<<"O valor do seu salario atual é =" << sa << endl;
    cout<< "O valor do reajuste é de =" << vr << endl;
    cout<< "Seu novo salario é =" << ns << endl;

    return 17;
}
