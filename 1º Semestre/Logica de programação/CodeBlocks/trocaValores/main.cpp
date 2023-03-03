/*
Programa que inicializa 3 variaveis A, B C com os valores 10 20 30
respectivamente mostra seus valores e troca seus valores da seguinte forma:
A recebe o valor de B
B o valor de C
C o valor de A
para isto sera nescessario utilizar uma variavel auxiliar
*/

#include<iostream>

using namespace std;

int main()
{
    int a, b, c, z;

    a = 10;
    b = 20;
    c = 30;
    z = a;

    cout << "Impressão dos valores das variaveis antes da troca" << endl;

    cout << "A variavel a = " << a << endl;
    cout << "A variavel b = " << b << endl;
    cout << "A variavel c = " << c << endl;
    cout << "A variavel z = " << z << endl;


a = b;
b = c;
c = z;
cout << "Impressão dos valores das variaveis depois da troca" << endl;

    cout << "A variavel a = " << a << endl;
    cout << "A variavel b = " << b << endl;
    cout << "A variavel c = " << c << endl;


}
