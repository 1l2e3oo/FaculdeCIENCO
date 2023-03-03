#include<iostream>
#include<locale>

using namespace std;

int main()

{
    float n1, n2, n3, m;

    setlocale(LC_ALL, "Portuguese");

    cout << "Entre com as tres notas" << endl;
    cin >> n1;
    cin >> n2;
    cin >> n3;

    m =(n1 + n2 + n3)/3;
    cout << "A média é:" << m << endl;

    if(m >= 7)
    {
        cout << "O aluno esta aprovado";
    }
    else
        cout << "O aluno esta reprovado";

}
