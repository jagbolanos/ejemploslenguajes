#include <stdio.h>

int main() {

    int x;

    printf("Ingrese x: ");
    scanf("%d", &x);
    
    switch (x) {
        case 0:
            printf("CERO");
            break;
        case 1:
            printf("UNO");
        case 2:
            printf("DOS");
            break;
        case 3:
            printf("TRES");
            break;
        default:
            printf("OTRO");
            break;
    
    }
        
    return 0;
}
