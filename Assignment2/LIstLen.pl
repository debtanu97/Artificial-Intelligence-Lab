len([],0).
len([X|L],Len) :-
	len(L,Len1),
	Len is Len1 + 1.