busca([],[]).
busca([X|Xs],[Y,Ys]):-
  integer(X),!, Y is X+1, busca(Xs,Ys).
busca2(N,1):-
 N=<1,!.
busca2(N, Re):-
 busca2(N-1,ReAux), Re is ReAux + N.
