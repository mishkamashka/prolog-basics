# vim: ft=prolog

daughter(anna, vera).
daughter(vera, oleg).
daughter(olga, pavel).
daughter(olga, alla).
daughter(alla, lidia).
man(oleg).
man(victor).
man(pavel).

not(P) :- (call(P) -> fail ; true).

fathers_names(X, Y) :- man(X), daughter(Y,X).

mothers_names(X, Y) :- daughter(Y,X), not(man(X)).

grandmothers_names(X,Z) :- daughter(Y,X), daughter(Z,Y), not(man(X)).

family(X,Y,Z) :- daughter(Z,Y), daughter(Z,X), man(X), X \= Y.