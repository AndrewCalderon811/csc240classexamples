all_even([]).
all_even([H | T]) :- 0 is H mod 2, all_even(T).

swap_negative([], []).
swap_negative([H1 | T1], [H2 | T2]) :- H1 < 0, H2 = 'negative', swap_negative(T1, T2).
swap_negative([H | T1], [H | T2]) :- H > 0, swap_negative(T1, T2).

bigger_than([], _, []).
bigger_than([H | T], N, [H | R]) :- H > N, bigger_than(T, N, R).
bigger_than([H | T], N, R) :- H =< N, bigger_than(T, N, R).


