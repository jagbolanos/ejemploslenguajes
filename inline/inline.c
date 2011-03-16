#include <stdio.h>

static inline int max(int x, int y)  __attribute__((always_inline));

static inline int max(int x, int y) {
	return x > y ? x : y;
}

int main() {

	printf("El maximo entre 5 y 6 es: %d\n", max(5, 6));
	printf("El maximo entre 6 y 5 es: %d\n", max(6, 5));
	return 0;
}
