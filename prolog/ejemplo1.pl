grandparent(X,Y) :- parent(X,Z), parent(Z,Y).
brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X), X\=Y.
sister(X,Y) :- parent(Z,X), parent(Z,Y), female(X), X\=Y.
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


factorial(0,1).
factorial(N,F) :-
N>0,
N1 is N-1,
factorial(N1,F1),
F is N * F1.
