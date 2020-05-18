% state( MonkeyRoom, MonkeyBoxPos , BoxPosition , Banana(has/has_not) )


move(state(middle, on_box, middle, has_not),
		grasp,
		state(middle, on_box, middle, has)).
move(state(P, on_floor, P, H),
		climb,
		state(P, on_box, P, H)	).
move(state(P1, on_floor, P1, H),
		push(P1, P2),
		state(P2, on_floor, P2, H)).
move(state(P1, on_floor, P, H),
	walk(P1, P2),
	state(P2, on_floor, P, H)).

canget(state(_, _, _, has),[]).
canget(OldState,[Move|MovesTillNow]) :-
		move(OldState, Move, NewState),
		canget(NewState,MovesTillNow).

start :-
	canget(state(at_door, on_floor, at_window, has_not), Path),
	write("\nMonkey's Initial Room Position : Door\n"),
	write("\nMonkey's Initial Box Position : Floor\n"),
	write("\nBox's Initial Room Position : Window\n"),
	write("\nMonkey's Banana Position : has_not"),
	write("\nSteps followed by monkey : \n"),
	printpath(Path).

	printpath([]).
	printpath([X|Y]) :-
		write(X),
		write("\n"),
		printpath(Y).	