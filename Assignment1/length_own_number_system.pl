length_1([],0).
length_1([X|Rest], s(N)) :-
	length_1(Rest, N).