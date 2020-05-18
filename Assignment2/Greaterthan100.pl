greater([],0).
greater([X|L],N):-
	greater(L,N1),
	X>100.0,
	N is N1+1.
greater([X|L],N):-	
	greater(L,N1),
	X =< 100.0,
	N is N1.	

	
