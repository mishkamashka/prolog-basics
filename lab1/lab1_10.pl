# vim: ft=prolog

bird(crow).
bird(penguin).
bird(peacock).
bird(parrot).
bird(ostrich).

wings(crow).
wings(penguin).
wings(parrot).
wings(peacock).
wings(ostrich).
wings(airbus).


flies(X) :- bird(X), wings(X), dif(ostrich, X), dif(penguin, X).

