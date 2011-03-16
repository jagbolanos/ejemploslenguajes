#include <stdio.h>

int main() {

    int x = 10;

    int f(int v) {
        
        return x * x + v;
    }
    
    printf("El calculo: %d\n", f(x));
    return 0;
}
