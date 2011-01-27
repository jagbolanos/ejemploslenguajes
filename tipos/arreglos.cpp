#include <stdio.h>
#include <stdlib.h>

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

	int matriz1[ROWS][COLUMNS];
	char matriz2[ROWS][COLUMNS];
	
	int *matriz3 = (int*)malloc(sizeof(int) * ROWS * COLUMNS);
	int **matriz4;
	


	int i;
	for(i = 0; i < LENGTH; i++) {
		*(arreglo2+i) = 'a' + i;
	}

	for(i = 0; i < LENGTH; i++) {
		printf("%c ", arreglo2[i]);
	}


	for(i = 0; i < LENGTH; i++) {
		*(arreglo1+i) =  i * i;
	}

	for(i = 0; i < LENGTH; i++) {
		printf("%d ", arreglo1[i]);
	}

	printf("\n");


	int *p = *matriz1;

	printf("matriz1: %X\n", &matriz1);
	for (i = 0; i < ROWS * COLUMNS; i++) {
		printf("%X ", (*matriz1)+i);
		*((*matriz1)+i) = i;
		if ((i+1) % COLUMNS == 0) {
			printf("\n");
		}
	}

	printf("\n");
	printf("p: %X\n", &p);
	for (i = 0; i < ROWS * COLUMNS; i++) {
		printf("%X ", p+i);
		if ((i+1) % COLUMNS == 0) {
			printf("\n");
		}
	}

	printf("\n");

	int j;
	for (i = 0; i < ROWS; i++) {
		for (j = 0; j < COLUMNS; j++) {		
			printf("%X ", &(matriz1[i][j]));
			//printf("%d ", matriz1[i][j]);
		}
		printf("\n");
	}

	printf("matriz3: %X %X\n", matriz3, &matriz3);
	j = 0;
	for (i = 0; i < ROWS * COLUMNS; i++) {
		printf("%X ", matriz3+i);
		matriz3[i*ROWS + COLUMNS] = i;
		j++;
		if ((i+1) % COLUMNS == 0) {
			printf("\n");
			j = 0;
		}
	}
	
	matriz4 = new int*[ROWS];
	for(i = 0; i < ROWS; i++) {
	    matriz4[i] = new int[COLUMNS];
	}
		
		

    printf("matriz4: %X %X\n", matriz4, &matriz4);
	for (i = 0; i < ROWS; i++) {
		for (j = 0; j < COLUMNS; j++) {		
			printf("%X ", &(matriz4[i][j]));
			//printf("%d ", matriz1[i][j]);
		}
		printf("\n");
	}
	

	free(matriz3);
	
	for(i = 0; i < ROWS; i++) {
	    delete [] matriz4[i];
	}
	
	delete [] matriz4;
	return 0;
}
