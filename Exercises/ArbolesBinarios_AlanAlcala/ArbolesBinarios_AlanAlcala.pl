btree([]).
btree(n(_,L,R)) :-
  btree(L),
  btree(R). 

preorden([],[]).
preorden(n(R,I,D), Orden) :-
  preorden(I,I2),
  preorden(D,D2),
  append([R|I2],D2, Orden).

inorden([],[]).
inorden(n(R,I,D), Orden) :-
  inorden(I,I2),
  inorden(D,D2),
  append(I2,[R|D2], Orden).

postorden([],[]).
postorden(n(R,I,D), Orden) :-
  postorden(I,I2),
  postorden(D,D2),
  append(I2,D2,ID),append(ID,[R], Orden).
