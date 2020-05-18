double([],[]).
double([X|Rest1], [X|[X|Rest2]]) :-
	double(Rest1, Rest2).