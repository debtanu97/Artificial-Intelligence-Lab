interleave(L1,[],L1):-!.
interleave([],L2,L2):-!.
interleave([H1|T1],[H2|T2],[H1|[H2|T]]):-
	interleave(T1,T2,T).