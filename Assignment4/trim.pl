trim(0,L,L):-!.

trim(N,[H|L],L1):-
	N1 is N-1,
	trim(N1,L,L1).