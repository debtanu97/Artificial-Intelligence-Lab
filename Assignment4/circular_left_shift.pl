addend([],X,[X]).

addend([H|T],X,[H|L1]):-
	addend(T,X,L1).

csl([H|T], L1):-
	addend(T,H,L1).