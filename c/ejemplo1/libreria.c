#include <stdio.h>

int iglobal = 0;

void imprimir(int n) {
	int i;

	for (i = 0 ; i < n ; i ++) {
		printf("%d\n", i);
	}
}

void imprimir_static() {
	static int i = 0;
	printf("%d\n",i++);
}

void imprimir_global() {
	printf("%d\n",iglobal++);
}
