hombre(francisco).
hombre(alan).
mujer(enedina).
mujer(lorena).
mujer(laura).

progenitor(francisco,lorena).
progenitor(enedina,lorena).
progenitor(lorena,laura).
progenitor(lorena,alan).

eshermano(alan,laura).
eshermana(laura,alan).

espadre(X,Y):-
  hombre(X),
  progenitor(X,Y).
esmadre(X,Y):-
  mujer(X),
  progenitor(X,Y).

esabuelo(X,Y):-
 espadre(X,Z),
 progenitor(Z,Y).
 
esabuela(X,Y):-
 progenitor(Z,Y),
 esmadre(X,Z).

esnieto(X,Y):-
 progenitor(Y,Z),
 progenitor(Z,X),
 hombre(X).
esnieta(X,Y):-
 progenitor(Y,Z),
 progenitor(Z,X),
 mujer(X).

