#include <stdio.h> 

void funcion(int x, int &y, int *z, int *w) {
	x = 20;
	y = 20;
	*z = 20;
	*w = 20;
}

int main() {
	int x = 10, y = 5, w = 1;
	int *z = new int(2);
	funcion(x, y, z, &w);
	printf("x: %d y: %d z: %d w: %d\n", x, y, *z, w);

	delete z;
	
	return 0;
}

