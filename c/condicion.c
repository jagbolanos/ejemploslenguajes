#include <stdio.h>

int main() {

    int x;

    printf("Ingrese x: ");
    scanf("%d", &x);
    
    if (x > 5)
        printf("Es mayor\n");
    else
        printf("Es menor o igual\n");
        
    return 0;
}
