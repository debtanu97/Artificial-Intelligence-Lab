add_list(X,[],[X]).
add_list(X,L,L) :-
	our_member(X,L),!.
	add_list(X,L,[X|L]).
	