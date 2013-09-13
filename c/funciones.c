#include <stdio.h>
typedef struct {
	int x;
	int y;
	double z;
} t_punto;
	
int f(t_punto p) {
	
	int contador = 0;
	
	while (p.x < p.y) {
		printf("%d\n", p.y);
		p.x++;
		contador++;
	}
	
	return contador;
}

int main() {
	t_punto punto = {5, 20};
	
	int resultado = f(punto);
	
	return 0;
}




