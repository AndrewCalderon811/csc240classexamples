parent(ava,bob).
parent(mike,bob).
parent(emma, sophia).
parent(william, sophia).
parent(emma, mia).
parent(william, mia).
parent(bob,alice).
parent(bob,steve).
parent(mia,alice).
parent(mia,steve).
parent(liam,alexander).
parent(liam,evelyn).
parent(liam,isabella).
parent(sophia,alexander).
parent(sophia,evelyn).
parent(sophia,isabella).
sister(mia, sophia).
sister(mia, henry).
sister(sophia, henry).
sister(alice,steve).
sister(evelyn, alexander).
sister(evelyn, isabella).
sister(isabella, alexander).
brother(henry, mia).
brother(henry, sophia).
brother(steve,alice).
brother(alexander,evelyn).
brother(alexander,isabella).
grandparent(ava,alice).
grandparent(ava,steve).
grandparent(mike,alice).
grandparent(mike,steve).
grandparent(william,alice).
grandparent(william,steve).
grandparent(william,alexander).
grandparent(william,evelyn).
grandparent(william,isabella).
grandparent(emma,alice).
grandparent(emma,steve).
grandparent(emma,alexander).
grandparent(emma,evelyn).
grandparent(emma,isabella).


% Rules
uncle(Uncle, Nephew) :- brother(Uncle, Parent), parent(Parent, Nephew).
aunt(Aunt, Nephew) :- sister(Aunt, Parent), parent(Parent, Nephew).

cousin(C1, C2) :- grandparent(Grand, C1), grandparent(Grand, C2).

fib(1, 1).
fib(N, F) :- N >= 1, N1 is N - 1, fib(N1, R), F is N + R.

car([H | _], H).
cdr([_ | T], T).

double([], []).
double([H | T], [HR | TR]) :- HR is H * 2, double(T, TR).
double(I, O) :- O is I * 2.

member_of(X, [X | _]).
member_of(X, [_ | T]) :- member_of(X, T).

get_odds([], []).
get_odds([H | T], [H | Ret]) :- 1 is H mod 2, get_odds(T, Ret).
get_odds([H | T], Ret) :- 0 is H mod 2, get_odds(T, Ret).

sum_all([], 0).
sum_all([H | T], Sum) :- sum_all(T, Ret), Sum is H + Ret.

mult_all([], 'false').
mult_all([H | []], H).
mult_all([H | T], Sum) :- mult_all(T, Ret), Sum is H * Ret.

square_list([], []).
square_list([H | T], [Ret | Res]) :- square_list(T, Res), Ret is H * H.
