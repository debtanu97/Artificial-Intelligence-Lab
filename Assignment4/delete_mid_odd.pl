delete_middle_odd(L,L1):-
	len_acc(L,N),
	N1 is (N+1)/2,
	delete_nth(N1,L,L1).