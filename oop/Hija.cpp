#include "Hija.h"
#include <iostream>

using namespace std;

void Hija::imprimir() {
    Madre::imprimir();
    cout << "Z: "<<z<<" W: "<<w<<endl;
}

Hija::Hija(int x, int y, int z, int w) : Madre(x,y), Padre(x,y) {
    this->z = z;
    this->w = w;
}
