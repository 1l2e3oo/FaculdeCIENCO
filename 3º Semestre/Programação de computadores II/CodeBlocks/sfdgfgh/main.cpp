#include <iostream>
#include <cstdlib>
#include <time.h>
#define N 2

using namespace std;

int main()
{
    //m = Matriz
   int mA[N][N];
   int mB[N][N];
   int mAB[N][N];

   srand(time(NULL));

   for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
              mA[i][j] = rand() % 10 + 1;
              cout << mA[i][j] << " ";
        }
        cout << endl;
    }

   cout << endl;

for(int i = 0; i < N; i++)
    {
      for(int j = 0; j < N; j++)
        {
            mB[i][j] = rand() % 10 + 1;
            cout << mB[i][j] << " ";
        }
        cout << endl;
    }
cout << endl;

for(int i = 0; i < N; i++)
    {
      for(int j = 0; j < N; j++)
        {
            if(mA[i][j] < mB[i][j])
            {
                mAB[i][j] = mB[i][j];
            }
            else
            {
                mAB[i][j] = mA[i][j];
            }
            cout << mAB[i][j] << " ";
        }
        cout << endl;
    }

}
