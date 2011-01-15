grandparent(X,Y) :- parent(X,Z), parent(Z,Y).
brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X).
sister(X,Y) :- parent(Z,X), parent(Z,Y), female(X).
aunt(X,Y) :- sister(X,Z),parent(Z,Y).
uncle(X,Y) :- brother(X,Z),parent(Z,Y).

male(jorge).
male(fred).
female(anita).
female(mafer).
female(leda).

parent(leda,anita).
parent(leda,fred).
parent(jorge,mafer).
parent(leda,jorge).

