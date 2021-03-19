# vim: ft=prolog

power(_,0,1).
power(X,N,XN) :- N > 0, N1 is N-1, power(X, N1, Temp), XN is Temp*X.
power(X,N,XN) :- N < 0, N1 is N+1, power(X, N1, Temp), XN is Temp/X.
