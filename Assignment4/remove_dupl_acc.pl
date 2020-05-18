rm_dup_acc(L1,L3):-
	rm_dup(L1,[],L2),
	reverse(L2,L3).

rm_dup([],A,A).

rm_dup([H|T],A,L2):-
	our_member(H,A),!,
	rm_dup(T,A,L2).

rm_dup([H|T],A,L2):-
	rm_dup(T,[H|A],L2).
