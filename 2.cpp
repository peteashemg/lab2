#include <iostream>
#include <unordered_map>
#include <string>
#include <vector>

using namespace std;

int main() {
    int n;
    if (!(cin >> n)) return 0;
    unordered_map<string, string> routes;
    unordered_map<string, int> count;
    for (int i = 0; i < n; ++i) {
        string from, to;
        cin >> from >> to;
        routes[from] = to;
        count[to]++;
        if (count.find(from) == count.end()) {
            count[from] = 0;
        }
    }

    string current;
    for (auto const& [city, in_degree] : count) {
        if (in_degree == 0) {
            current = city;
            break;
        }
    }

    while (routes.find(current) != routes.end()) {
        current = routes[current];
    }

    cout << current << endl;
    return 0;
}

