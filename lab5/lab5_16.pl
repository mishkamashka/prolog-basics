% 16 Определить предикат, который считывает все слова из файла и
% формирует из них список, длину списка выводит в другой файл.


read_f(File1, File2) :-
    open(File1, read, In), read_file(In, Res), close(In),
    open(File2, write, Out), write_file(Out, Res), close(Out).


% wr(List) :- open(file1, write, Stream2), write_file(Stream2, List), close(Stream2).

read_file(Stream, Res) :-
    \+ at_end_of_stream(Stream),
    read_line_to_string(Stream, String),
    split_string(String, " ", " ", List),
    read_file(Stream, Res1),
    make_res(List, Res1, Res), !.

read_file(Stream, []) :- at_end_of_stream(Stream).

make_res(List1, List2, Res) :- List1 = [""], Res = List2, !.
make_res(List1, List2, Res) :- append(List1, List2, Res),!. 


write_file(File, List) :- List = [], !.
write_file(File, [Head|Tail]) :-
    write(File, Head),
    write(File, ' '),
    write_file(File, Tail).