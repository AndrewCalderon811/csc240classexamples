% Facts
% Name, Genre, Hours_played
game(counterstrike, fps, 2560).
game(wow, mmorpg, 300).
game(runescape, mmorpg, 500).
game(godofwar, story, 60).
game(rust, survival, 40).

% Rules
ismmorpg(X) :- game(X, mmorpg).
wastedlife(X) :- game(X, _, T), T > 400.