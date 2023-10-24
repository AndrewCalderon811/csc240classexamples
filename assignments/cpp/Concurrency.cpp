#include <iostream>
#include <thread>

using namespace std;


const int ROWS = 5;
const int COLS = 5;

int add(int col, int rowLength, int matrix[ROWS][COLS]){
    int ret = 0;
    for(int i = 0; i < rowLength; i++){
        ret += matrix[i][col];
    }
    cout << "Thread: " << col << " = " << ret << endl;;
    return ret;
}


int main(){

    int matrix[ROWS][COLS];

    int ii, jj;

    srand(time(NULL));

    cout << "Matrix: " << endl;;
    for (ii=0;ii<ROWS;ii++) {
        for (jj=0;jj<COLS;jj++) {
            matrix[ii][jj] = rand() % 10;
            cout << matrix[ii][jj] << "  ";
        }
        cout << endl;;
    }

    cout << endl << "Thread Processing: " << endl;;

    thread t[COLS];
    
    for(int i = 0; i < COLS; i++){
        t[i] = thread(add, i, ROWS, matrix);
    }
    
    for(int ii = 0; ii < COLS; ii++) { 
        t[ii].join();
    }

    return 0;
} 