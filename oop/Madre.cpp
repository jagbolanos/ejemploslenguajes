#include "Madre.h"
#include <iostream>

using namespace std;

void Madre::imprimir() {
    cout << "X: "<<x<<" Y: "<<y<<endl;
}

Madre::Madre(int x, int y) {
    this->x = x;
    this->y = y;
}
