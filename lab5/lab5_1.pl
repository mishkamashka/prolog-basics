% 1 Определить предикат, который находит количество вхождений
% символа в строку.

count(Char, String, Res) :- atom_chars(String, List), count_chars(Char, List, Res).

count_chars(_, [], Res) :- Res is 0.

count_chars(Char, [Head|Tail], Res) :- Char = Head, count_chars(Char, Tail, Res1), Res is  Res1 + 1.

count_chars(Char, [Head|Tail], Res) :- Char \= Head, count_chars(Char, Tail, Res1), Res = Res1.
