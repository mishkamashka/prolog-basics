% 21 Создайте предикат, порождающий список, состоящий из случайного
% количества случайных чисел.

generate_list(Res) :- random(0, 20, Length), create_list(Length, Res).

create_list(Length, List) :- Length = 0, List = [],!.
create_list(Length, [Head|Tail]) :- 
    Length_next is Length - 1,
    create_list(Length_next, Tail),
    random(0, 100, Head),
    Res = [Head|Tail].
