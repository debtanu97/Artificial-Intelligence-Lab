replace_nth(1,Y,[X|L],[Y|L]).

replace_nth(N,Y,[X|L],[X|L1]):-
	N1 is N-1,
	replace_nth(N1,Y,L,L1),!.