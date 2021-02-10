#include <iostream>
using namespace std;

int main()
{
    char option;
    while(true) {

        int n, num, digit, rev = 0;
        int base = 10; // hex is base 16

        while(true){
            cout << "Enter a positive integer: ";
            cin >> num;
            if(num < 1){
                cout << "Invalid input, please try again.\n";
            } else {
                break;
            }
        }

        n = num;

        while (num != 0){ // exchange digits of num to rev per iteration
            digit = num % base;
            rev = (rev * base) + digit;
            num = num / base;
            // cout << "Rev: " << rev << endl;
            // cout << "Num: " << num << endl;
        }

        cout << " The reverse of the number is: " << rev << endl;

        if (n == rev)
            cout << " The number is a palindrome.";
        else
            cout << " The number is not a palindrome.";


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

/*
Enter a positive integer: 12321
Rev: 1
Num: 1232
Rev: 12
Num: 123
Rev: 123
Num: 12
Rev: 1232
Num: 1
Rev: 12321
Num: 0
 The reverse of the number is: 12321
 The number is a palindrome.
*/