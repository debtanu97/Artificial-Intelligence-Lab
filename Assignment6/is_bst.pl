is_bst(nil):- !.

is_bst(bst(Left,Root,Right)):- 
	is_bst(Left), 
	is_bst(Right), 
	smaller(Root,Right), 
	bigger(Root,Left).

smaller(_,nil):- !.
smaller(N,bst(Left,M,Right)):- 
	N < M, 
	smaller(N,Left), 
	smaller(N,Right).

bigger(_,nil):- !.
bigger(N,bst(Left,M,Right)):- 
	N >= M, 
	bigger(N,Left), 
	bigger(N,Right).