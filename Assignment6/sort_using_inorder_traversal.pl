insert_bst(X, nil, bst(nil, X, nil)) :- !.
insert_bst(X, bst(L, Root, R), bst(L1, Root, R)) :-
	X =< Root, !, insert_bst(X, L, L1).
insert_bst(X, bst(L, Root, R), bst(L, Root, R1)) :-
	insert_bst(X, R, R1).

inorder(nil, []) :- !.
inorder(bst(Left, X, Right), L) :-
	inorder(Left, L1),
	inorder(Right, L2),
	append(L1, [X|L2], L).

get_bst_from_list([], BST, BST).
get_bst_from_list([H|T], Acc, BST) :-
	insert_bst(H, Acc, Acc1),
	get_bst_from_list(T, Acc1, BST).

sort_using_inorder_traversal(Unsorted, Sorted) :-
	get_bst_from_list(Unsorted, nil, BST),
	inorder(BST, Sorted).