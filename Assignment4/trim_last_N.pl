trim_last(N,L,L1):-
	reverse_acc(L,L2),
	trim(N,L2,L3),
	reverse_acc(L3,L1).