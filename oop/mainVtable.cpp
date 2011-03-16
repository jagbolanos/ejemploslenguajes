#include "Hija.h"

int main() {
    Padre *p1;
    Madre *m1;
    Hija *h1 = new Hija(2,3,4,5);
    
    p1 = h1;
    m1 = h1;
    
    p1->imprimir();
    m1->imprimir();
    h1->imprimir();

    return 0;
}
