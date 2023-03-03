#include <iostream>
#define N 3
#include <time.h>

using namespace std;

int main()
{
    srand(time(NULL));

    int matrizA[N][N];
    int matrizB[N][N];
    int matrizC[N][N];

    for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            matrizA[i][j] = (rand() % 6) + 1;
            matrizB[i][j] = (rand() % 6) + 1;
            if(matrizA[i][j] == matrizB[i][j]){

            }
        }
    }

    for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            cout << matrizA[i][j] << " ";
        }
        cout << endl;
    }

    cout << endl;

      for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            cout << matrizB[i][j] << " ";
        }
        cout << endl;
    }

    cout << endl;


}
