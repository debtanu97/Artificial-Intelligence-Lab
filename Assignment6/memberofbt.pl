memberofbt(X,t(Left,X,Right)).
memberofbt(X,t(Left,Root,Right)):-
	memberofbt(X,Left),!.
memberofbt(X,t(Left,Root,Right)):-
	memberofbt(X,Right),!.

% t( t( t(nil,45,nil),90,t(nil,93,nil) ), 97, t( t(nil,103,nil), 110, t(nil, 125,nil)))	