delete_middle_even(L,L1):-
	len_acc(L,N),
	N1 is N/2,
	delete_nth(N1,L,L2),
	len_acc(L2,N2),
	N3 is (N2+1)/2,
	delete_nth(N3,L2,L1).