//Programa de calcular a media de tres notas

#include<iostream>
#include<locale>

using namespace std;

int main()
{



setlocale(LC_ALL, "Portuguese");

float n1, n2, n3, m;

cout<<"Escreva a nota da primeira prova:";
cin >> n1;
cout<<"Escreva a nota da segunda prova:";
cin >> n2;
cout<<"Escreva a nota da terceira prova:";
cin>> n3;

m = (n1 + n2 + n3)/3;

cout <<"A média final é:"<< m;

}
