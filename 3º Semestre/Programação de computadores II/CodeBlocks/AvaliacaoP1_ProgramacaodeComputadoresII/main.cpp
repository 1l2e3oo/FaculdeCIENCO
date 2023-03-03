#include <iostream>

using namespace std;

int main()
{
   int matriz[5][5] = {{1, 8, 8, 4, 2}, {6, 1, 2, 3, 8}, {9, 2, 7, 6, 1}, {1, 4, 5, 7, 1}, {5, 5, 4, 6, 2}};

   for(int i = 0; i < 5; i++){
    for(int j = 0; j < 5; j++){
        cout << matriz[i][j] << " ";
    }
    cout << endl;
   }

   cout << endl;

   for(int i = 0; i < 5; i++){
        for(int j = 0; j < 5; j++){
  if(i+j == i){
   cout << matriz[i][j] << " ";
}
        }
        cout << endl;
   }
}
