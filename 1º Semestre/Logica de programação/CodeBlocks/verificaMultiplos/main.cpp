#include <iostream>
#include<locale>

using namespace std;

int main()
{
    int numero;
    setlocale(LC_ALL, "Portuguese");

    cout << "Digite um numero:";
    cin >> numero;

    if(numero % 2 == 0 && numero % 3 == 0)
    cout << numero << " é multiplo de 2 e 3 simultaneamente";
    else
        cout << numero << " não é multiplo simultaneamente por 2 e 3";

}
