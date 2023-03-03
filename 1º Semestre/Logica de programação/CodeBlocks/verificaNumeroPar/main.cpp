#include<iostream>
#include<locale>

using namespace std;
int main()

{


int n;


   setlocale(LC_ALL, "Portuguese");

    cout << "Escreva o numero q voce deseja verificar:";
    cin >> n;

    if(n % 2 == 0)
    {

        cout << n << " é par";
    }
        else
        cout << n << " é impar";


}
