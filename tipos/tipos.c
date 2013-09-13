#include <stdio.h>

#define LENGTH 15
#define ROWS 5
#define COLUMNS 4

typedef struct {
	int atributo1;
	float atributo2;
	char atributo3;
	short atributo4; 

} registro1;

typedef struct {
	int atributo1;
	char atributo3;
	float atributo2;
	short atributo4;
} registro2;


int main() {
	registro1 r1;

	int arreglo1[LENGTH];
	char arreglo2[LENGTH];
	registro1 matriz1[ROWS][COLUMNS];
	registro2 matriz2[ROWS][COLUMNS];

	printf("sizeof(char): %d\n",sizeof(char));
	printf("sizeof(short): %d\n",sizeof(short));
	printf("sizeof(int): %d\n",sizeof(int));
	printf("sizeof(long): %d\n",sizeof(long));
	printf("sizeof(float): %d\n",sizeof(float));
	printf("sizeof(double): %d\n",sizeof(double));

	printf("sizeof(registro1): %d\n",sizeof(registro1));
	printf("sizeof(registro2): %d\n",sizeof(registro2));
	printf("sizeof(r1): %d\n",sizeof(r1));
	printf("sizeof(arreglo1): %d\n",sizeof(arreglo1));
	printf("sizeof(arreglo2): %d\n",sizeof(arreglo2));
	printf("sizeof(matriz1): %d\n",sizeof(matriz1));
	printf("sizeof(matriz2): %d\n",sizeof(matriz2));

	
	return 0;
}
