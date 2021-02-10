#include <iostream>
using namespace std;

int main() {
    int nth;
    cout << "Enter a positive integer: ";
    cin >> nth;
    int counter = 1;
    int number = 2;
    int loop;
    int prime;
    while(nth > counter){
        number += 1;
        prime = 1;
        for(loop = 2; loop < number; loop++) {
            if((number % loop) == 0) {
                prime = 0;
            }
        }
        if(prime==1){
            counter+=1;
        }
    }
    printf("The %ith prime number is %i.", nth, number);
    
return 0;
}