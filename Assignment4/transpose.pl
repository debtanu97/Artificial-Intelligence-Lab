transpose([],[],[]):- !.

transpose([H1|L1],[H2|L2],[(H1,H2)|L]):-
	transpose(L1,L2,L).