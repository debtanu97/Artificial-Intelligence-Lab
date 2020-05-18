insert_bst(X, nil, bst(nil, X, nil)) :- !.

insert_bst(X, bst(L, Root, R), bst(L1, Root, R)) :-
	X =< Root, !, insert_bst(X, L, L1).

insert_bst(X, bst(L, Root, R), bst(L, Root, R1)) :-
	insert_bst(X, R, R1).