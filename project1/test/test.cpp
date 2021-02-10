#include <iostream>
using namespace std;

int main() {
    char selection;
    cin >> selection; // input: abcd
    cin.clear();
    fflush(stdin);
    printf("you entered the character: %c", selection); //selection='a'
return 0;
}