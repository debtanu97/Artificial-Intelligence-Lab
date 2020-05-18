rev([],[]).
rev([H|T],L):-
		append(T1,[H],L),
		reverse(T,T1).