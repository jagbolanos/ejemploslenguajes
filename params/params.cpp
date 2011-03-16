#include <stdio.h>

int f(int v(), int x) {
    return v(x);
}

int otrafuncion(int x) {

    return x * x;
}


int main() {

    printf("El valor es %d\n", f(otrafuncion, 10));

    return 0;
}
