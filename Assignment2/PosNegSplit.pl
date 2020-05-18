pn([],[],[]).

pn([X|L],[X|L1],L2):-
	pn(L,L1,L2),
	X >= 0.

pn([X|L],L1,[X|L2]):-
	pn(L,L1,L2),
	X < 0.		 

