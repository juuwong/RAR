#include <iostream>
using namespace std;

int main()
{
    int n, num, digit, rev = 0;
    int base = 16; // hex is base 16

    cout << "Enter a positive number: ";
    cin >> num;

    n = num;

    while (num != 0){
        digit = num % base;
        rev = (rev * base) + digit;
        num = num / base;
    }

    cout << " The reverse of the number is: " << rev << endl;

    if (n == rev)
        cout << " The number is a palindrome.";
    else
        cout << " The number is not a palindrome.";

    return 0;
}