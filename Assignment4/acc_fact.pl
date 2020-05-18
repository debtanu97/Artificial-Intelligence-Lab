fact(N,R):-
	factorial(N,1,R).
	
factorial(0,A,A):-!.
	
factorial(N,A,R):-
		A1 is A*N,
		N1 is N-1,		
		factorial(N1,A1,R).