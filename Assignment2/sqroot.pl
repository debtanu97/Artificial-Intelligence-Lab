sqrt(P,X,L):-
	B is P*P,
	B =< X,
	T is P+1,
	sqrt(T,X,L);
	B is P*P,
	B>X,
	L is P-1.	

square_root(X,L):-
	sqrt(0,X,L).