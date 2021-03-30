% 40 Создайте предикат, удаляющий в исходном списке все повторные
% вхождения элементов.

remove_duplicates([], []):-!.

remove_duplicates([Head|Tail], Tail2):-
    member(Head, Tail), remove_duplicates(Tail, Tail2).

remove_duplicates([Head|Tail], [Head|Tail2]):-
    \+ member(Head, Tail), remove_duplicates(Tail,Tail2).
