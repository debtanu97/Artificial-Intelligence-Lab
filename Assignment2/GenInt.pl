gen(N1,N2,[N1]):- N1 = N2,!.
gen(N1,N2,[N1|L]) :-
	N1<N2,
	N3 is N1+1,
	gen(N3,N2,L).