square(X, Y) :- Y is X * X.
celsius_to_fahrenheit(In, Out) :- Out is In * 9 / 5 + 32.
fahrenheit_to_celsius(In, Out) :- Out is (In - 32) * 5 / 9.
price_with_tax(In, Tax, Out) :- Out is In * (1 + (Tax / 100)).
after_tax_income(In, Tax, Out) :- Out is In * (1 - (Tax / 100)).
square_the_smallest(X, Y, N) :- X < Y, N is X * X.
square_the_smallest(X, Y, N) :- X >= Y, N is Y * Y.
three_square_sum(A, B, C, R) :- R is A * A + B * B + C * C.
four_in_a_row(A, B, C, D) :- A < B, B < C, C < D.
fifth_element([_, _, _, _, E | _], E).
head_to_tail_power([H | T], X) :- X is H ** T.
div_by_small_prime(X) :- 0 is (X mod 2).
div_by_small_prime(X) :- 0 is (X mod 3).
div_by_small_prime(X) :- 0 is (X mod 5).
div_by_small_prime(X) :- 0 is (X mod 7).
convert_24hr_to_12hr_time([H | T], X) :- 
    X is [H | T].