#include <iostream>
#include<locale>

using namespace std;

int main()
{
   int v1, v2;
   setlocale(LC_ALL, "Portuguese");

 cout << "Entre com dois valores:";
 cin >> v1;
 cin >> v2;

 if( v1 > v2)
    cout << "O maior valor é: " << v1;
 else if (v1 < v2)
    cout << "O maior valor é: " << v2;
 else if ( v1 = v2)
  cout << "Os dois valores são iguais";







}
