#include "Padre.h"
#include <iostream>

using namespace std;

void Padre::imprimir() {
    cout << "X: "<<x<<" Y: "<<y<<endl;
}

Padre::Padre(int x, int y) {
    this->x = x;
    this->y = y;
}
