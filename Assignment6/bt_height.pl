max(X,Y,X):- X >= Y,!.
max(X,Y,Y):- X < Y.

btheight(nil,0).

btheight(t(Left,_,Right),X):-
	btheight(Left,X1),
	btheight(Right,X2),
	max(X1,X2,X3),
	X is 1 + X3.
