delete_nth(1,[X|L],L).

delete_nth(N,[X|L],[X|L1]):-
	N1 is N-1,
	delete_nth(N1,L,L1),!.


