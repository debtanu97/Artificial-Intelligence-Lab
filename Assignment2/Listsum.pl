sum([],0).
sum([X|L],Sum) :-
	sum(L,Sum1),
	Sum is Sum1+X.