#include "Madre.h"
#include "Hija.h"

int main() {
    Madre m1(3,4);
    Hija h1(1,1,5,6);
    
    m1.imprimir();
    h1.imprimir();
    
    m1 = h1;

    m1.imprimir();
    h1.imprimir();

    return 0;
}
