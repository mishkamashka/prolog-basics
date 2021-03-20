% 41 Создайте предикат, осуществляющий перестановку двух элементов
% списка с заданными номерами.

% exchange(N1, N2, [Head|Tail], Res) :- 
%     N1 > N2 -> (Buf is N2, N2 is N1, N1 is Buf),
%     replace_elements(N1, N2, [Head|Tail], Res),!.

exchange(N1, N2, [Head|Tail], Res) :- 
    % N1 < N2,
    replace_elements(N1, N2, [Head|Tail], Res),!.

replace_elements(N1, N2, [Head|Tail], Res) :-
    N1 = 0, !, Element1 is Head, N2_next is N2 - 1,
    replace_found_element(Element1, N2_next, Tail, Res1, Element2),
    Res = [Element2|Res1].
    
replace_elements(N1, N2, [Head|Tail], Res) :- 
    N1_next is N1 - 1, N2_next is N2 - 1,
    replace_elements(N1_next, N2_next, Tail, Res1),
    Res = [Head|Res1].


replace_found_element(Element1, N2, [Head|Tail], Res, Element2) :-
    N2 = 0, Element2 is Head,
    Res = [Element1|Tail], !.

replace_found_element(Element1, N2, [Head|Tail], Res, Element2) :-
    N2 > 0, N2_next is N2 - 1,
    replace_found_element(Element1, N2_next, Tail, Res1, Element2),
    Res = [Head|Res1].
