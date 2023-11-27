at_position([H | _], 1, H).
at_position([_ | T], N, Ret) :- N > 1, N1 is N - 1, at_position(T, N1, Ret).


square_positives([], []).
square_positives([H | T], [Hsq | Trec]) :- H >= 0, Hsq is H * H, square_positives(T, Trec).
square_positives([H | T], Trec) :- H < 0, square_positives(T, Trec).