show(seinfeld, 1989, 8.9).
show(the_xfiles, 1993, 8.7).
show(friends, 1994, 8.9).
show(firefly, 2002, 9.1).
show(the_walking_dead, 2010, 8.4).
show(sherlock, 2010, 9.1).
show(game_of_thrones, 2011, 9.3).
show(silicon_valley, 2014, 8.5).
show(atlanta, 2016, 8.5).
show(stranger_things, 2016, 8.7).
show(for_all_mankind, 2019, 7.9).
show(shadow_and_bone, 2019, 7.7).
show(the_mandalorian, 2019, 8.8).
show(loki, 2021, 8.3).

% Rules
good_show(Name) :- show(Name, _, Rating), Rating >= 8.9.

same_year(Name1, Name2) :-
    show(Name1, Year1, _),
    show(Name2, Year2, _),
    Year1 = Year2.


quad(Arg1, Arg2) :- Arg2 is Arg1 * 4.

ispos(X) :- X >= 0.
isneg(X) :- X < 0.

bloop(X, Y) :- ispos(X), Y is X * 2.
bloop(X, Y) :- isneg(X), Y is X / 2.

mult(X, Y, Z) :- Z is X * Y.

bigger(X, Y, Z) :- X < Y, Z is Y.
bigger(X, Y, Z) :- X > Y, Z is X.


absol(X, Y) :- Y is abs(X).

