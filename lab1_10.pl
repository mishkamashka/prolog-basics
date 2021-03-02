wings(X) :- bird(X);plane(X).
bird(crow).
bird(penguin).
bird(peacock).
bird(parrot).

flies(X) :- bird(X), wings(X), dif(ostrich, X), dif(penguin, X).

