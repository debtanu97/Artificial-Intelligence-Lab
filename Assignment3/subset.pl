subset([],_).

subset([X|L], M) :-
	our_member(X, M), !,
	efface(X, M, M1),
	subset(L, M1).