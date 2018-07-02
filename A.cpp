#include <bits/stdc++.h>

using namespace std;

signed main() {
    int n;
    cin >> n;
    set <int> ms;
    for (int i = 0; i < n; ++i) {
        int x; cin >> x;
        if (x) ms.insert(x);
    }
    cout << ms.size() << '\n';
    return 0;
}