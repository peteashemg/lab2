#include <iostream>
#include <string>

using namespace std;

int main() {
	string s, t;
	cout << "Введите S ";
	cin >> s;
	cout << "Введите T ";
	cin >> t;
			
	if (s.length() == t.length () && (s + s). find(t) != string::npos) {
        	cout << "Результат: Yes" << endl;
        }
        else {
                cout << "Результат: No" << endl;
        }
	return 0;
}
