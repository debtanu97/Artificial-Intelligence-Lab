msort( [], [] ).
msort( [X], [X] ).
msort( U, S ) :- 
	split(U, L, R), 
	msort(L, SL), 
	msort(R, SR), 
	merge(SL, SR, S).
 
split( [], [], [] ).
split( [X], [X], [] ).
split( [L,R|T], [L|LT], [R|RT] ) :- 
	split( T, LT, RT ).
 
merge( [], RS, RS ).
merge( LS, [], LS ).
merge( [L|LS], [R|RS], [L|T] ) :- 
	L =< R, 
	merge( LS, [R|RS], T).
merge( [L|LS], [R|RS], [R|T] ) :- 
	L > R,  
	merge( [L|LS],   RS,  T).