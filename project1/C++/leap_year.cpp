#include <iostream>
using namespace std;

int main() {
char option;
while(true) {
    int year;

    cout << "Enter a year: ";
    cin >> year;

    if (year % 4 == 0) {
        if (year % 100 == 0) {
            if (year % 400 == 0)
                cout << year << " is a leap year.";
            else
                cout << year << " is not a leap year.";
        }
        else
            cout << year << " is a leap year.";
    }
    else
        cout << year << " is not a leap year.";

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