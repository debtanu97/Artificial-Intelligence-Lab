fib(1,0,[0]).
fib(2,1,[1,0]).
fib(N,M,L) :-
	B1 is N-1,
	fib(B1,M1,L1),
	B2 is N-2,
	fib(B2,M2,L2),
	M is M1+M2,
	append([M],L1,L).

fibonacci(N,L1) :-
	fib(N,M,L),
    reverse(L,L1). 