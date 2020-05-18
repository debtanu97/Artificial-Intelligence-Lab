remove_every_other([],[]):-!.
remove_every_other([X],[X]):-!.
remove_every_other([H|[S|T]],[H|L1]):-
	remove_every_other(T,L1).

	