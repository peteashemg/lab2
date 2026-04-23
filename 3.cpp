#include <iostream>
using namespace std;

int main() {
    int n, num;
    cin >> n;

    for (int i = 0; i < n; i++) {
        cin >> num;
        if (num < 10) {
            cout << "- ";
        } else {
            int count = 0;
            while (num > 0) {
                int digit = num % 10;
                if (digit % 2 == 0) count++;
                num /= 10;
            }
            cout << count << " ";
        }
    }
    cout << endl;
    return 0;
}














