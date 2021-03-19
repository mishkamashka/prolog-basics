# vim: ft=prolog

count(X) :- R is ((X div 100) + (- (X div 100)*10 + X div 10) + X mod 10),
		write(R).
