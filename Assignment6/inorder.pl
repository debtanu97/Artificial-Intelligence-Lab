inorder(nil,[]).

inorder(t(Left,Root,Right),L):-
	inorder(Left,L1),
	inorder(Right,L2),
	append(L1,[Root|L2],L).