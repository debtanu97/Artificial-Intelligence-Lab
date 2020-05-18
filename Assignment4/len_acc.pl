len_acc(L,N):-
	len(L,0,N).

len([],N,N).
len([H|L],A,N):-
	A1 is A+1,
	len(L,A1,N).	