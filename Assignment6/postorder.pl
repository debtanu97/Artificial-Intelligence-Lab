postorder(nil,[]).

postorder(t(Left,Root,Right),L):-
	postorder(Left,L1),
	postorder(Right,L2),
	append(L1,L2,L3),
	append(L3,[Root],L).