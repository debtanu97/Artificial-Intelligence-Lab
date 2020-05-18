preorder(nil,[]).

preorder(t(Left,Root,Right),L):-
	preorder(Left,L1),
	preorder(Right,L2),
	append([Root|L1],L2,L).