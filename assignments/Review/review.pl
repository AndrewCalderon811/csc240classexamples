
split([], _, [], []).
split([H | T], 1, H, T) :- !.
split([H | T], N, [H | Tret], L2) :- N > 1, N1 is N - 1, split(T, N1, Tret, L2)