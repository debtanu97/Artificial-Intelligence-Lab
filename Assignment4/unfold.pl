unfold(L,L1):-
	len_acc(L,N),
	Mid is (N+1)/2,
	trim(Mid,L,L2),
	reverse_acc(L2,RL2),
	trim_last(Mid,L,L3),
	reverse_acc(L3,RL3),
	append(RL3,RL2,L1).