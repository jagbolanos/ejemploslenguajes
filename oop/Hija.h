#ifndef HIJA_H
#define HIJA_H

#include "Madre.h"
#include "Padre.h"

class Hija: public Madre, public Padre {
    public:
        int z;
        int w;
    
        virtual void imprimir();
        Hija(int,int,int, int);

};

#endif
