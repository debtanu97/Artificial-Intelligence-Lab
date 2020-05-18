memberofbst(X,t(Left,X,Right)).
memberofbst(X,t(Left,Root,Right)):-
	X < Root,
	memberofbst(X,Left),!.
memberofbst(X,t(Left,Root,Right)):-
	X >= Root,
	memberofbst(X,Right),!.

% t( t( t(nil,45,nil),90,t(nil,93,nil) ), 97, t( t(nil,103,nil), 110, t(nil, 125,nil)))	