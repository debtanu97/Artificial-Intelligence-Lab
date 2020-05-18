inner_prod([],[],0):- !.

inner_prod([H1|L1],[H2|L2],Prod):-
	inner_prod(L1,L2,Sum),
	Prod is Sum + H1*H2.

