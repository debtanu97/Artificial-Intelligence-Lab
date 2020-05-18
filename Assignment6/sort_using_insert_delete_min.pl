insert_bst(X, nil, bst(nil, X, nil)) :- !.
insert_bst(X, bst(L, Root, R), bst(L1, Root, R)) :-
	X =< Root, !, insert_bst(X, L, L1).
insert_bst(X, bst(L, Root, R), bst(L, Root, R1)) :-
	insert_bst(X, R, R1).

get_bst_from_list([], BST, BST).
get_bst_from_list([H|T], Acc, BST) :-
	insert_bst(H, Acc, Acc1),
	get_bst_from_list(T, Acc1, BST).

delete_min(bst(nil, X, R), R, X) :- !.
delete_min(bst(L, X, R), bst(L1, X, R), M) :-
	delete_min(L, L1, M).

get_list_from_bst(nil, []) :- !.
get_list_from_bst(BST, [X|L]) :-
	delete_min(BST, BST1, X),
	get_list_from_bst(BST1, L).

sort_using_insert_delete(Unsorted, Sorted) :-
	get_bst_from_list(Unsorted, nil, BST),
	get_list_from_bst(BST, Sorted).