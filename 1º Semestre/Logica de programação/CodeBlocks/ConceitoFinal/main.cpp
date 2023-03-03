#include<iostream>
#include<locale>

using namespace std;

int main()

{
    float n1, n2, m;

    setlocale(LC_ALL, "Portuguese");

    cout << "Entre com as duas notas" << endl;
    cin >> n1;
    cin >> n2;

    m =(n1 + n2)/2;
    cout << "A média é:" << m << endl;

    if(m >= 7)
    {
        cout << "O aluno esta aprovado";
    }
    else if (m >=4)
        cout << "O aluno esta de exame";
    else if (m <4)
        cout << "O aluno esta reprovado";

}

