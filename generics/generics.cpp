#include <iostream>

using namespace std;

template <class T>
T max_generico(T x, T y) {
	return x > y ? x : y;
}

int main() {

	cout << "Max (5, 6): " << max_generico(5, 6) << endl;
	cout << "Max (6.0, 5.0): " << max_generico(6.6, 5.5) << endl;
	return 0;
}
