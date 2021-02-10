#include <iostream>
using namespace std;

int main() {
char option;
int nth;
while(true) {
while(true){
    cout << "Enter a positive integer: ";
    cin >> nth;
    if(nth < 1){
        cout << "Invalid input, please try again.\n";
    } else {
        break;
    }
}
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


cout << "\nDo you want to try again(Press any key for yes, N for no)? ";
cin >> option;
cin.clear();
fflush(stdin);    
if(tolower(option) == 'n') {
    break;
}

}    
return 0;
}