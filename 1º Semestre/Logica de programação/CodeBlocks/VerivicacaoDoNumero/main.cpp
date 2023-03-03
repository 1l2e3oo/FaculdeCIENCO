#include<iostream>

using namespace std;

int main()
{
    int numero;

    cout << "Digite um Numero:";
    cin >> numero;

    if(numero > 10)
    {
        numero = numero *3;
        cout << numero;
    }
    else
        numero = numero + 2;
    cout << numero;
}
