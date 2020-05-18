csr(L,L1):-
	reverse(L,L2),
	csl(L2,L3),
	reverse(L3,L1).