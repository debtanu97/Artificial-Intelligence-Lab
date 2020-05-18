maxofbst(t(_,X,nil),X).

maxofbst(t(_,X,Right),Y):-
	maxofbst(Right,Y).!.
	