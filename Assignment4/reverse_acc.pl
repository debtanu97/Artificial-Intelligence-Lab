reverse_acc(L,RL):-
	rev(L,[],RL).

rev([],A,A):- !.

rev([H|T],A,L2):-
	rev(T,[H|A],L2).
