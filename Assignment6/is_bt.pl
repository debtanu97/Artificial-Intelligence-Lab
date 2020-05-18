isbt(nil).

isbt(t(Left,Root,Right)):-
	isbt(Left),
	isbt(Right).