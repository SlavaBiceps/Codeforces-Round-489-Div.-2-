#include <bits/stdc++.h>
using namespace std;
const int MOD = 1000000007;
long long mod(long long n) {
    return (n % MOD + MOD) % MOD;
}

long long fp(long long a, long long b) {
    if (b == 0) return 1;
    long long t = fp(a, b / 2);
    if (b % 2 == 0) return mod(t * t);
    else return mod(mod(t * t) * a);
}

signed main() {
    long long x, k;
    cin >> x >> k;
    if (x == 0) {
        cout << "0\n";
        return 0;
    }
    if (k == 0) cout << mod(2 * x) << '\n';
    else {
        long long a = mod(2 * x - 1);
        cout << mod(2 * a * fp(2, k - 1) + 1) << '\n';
    }

    return 0;
}