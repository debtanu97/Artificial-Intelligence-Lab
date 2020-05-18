insertionsort([],[]).
insertionsort([A],[A]).
insertionsort([H|T], Out):-
  insertionsort(T,Z),!,
  insert(H,Z,Out).

insert(X, [], [X]).
insert(X, [H|T], [X,H|T]):-
  X =< H,!.
insert(X, [H|T], [H|Z]):-
  X > H,
  insert(X,T,Z).