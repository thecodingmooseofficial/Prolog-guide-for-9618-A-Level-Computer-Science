% Instantiation and Backtracking 
% -------------------------------

% Facts: simple choices
color(red).
color(green).
color(blue).

% Rule: choosing two different colors
different_colors(C1, C2) :-
    color(C1),
    color(C2),
    C1 \= C2.

% Anonymous variable use: print all colors without binding
print_all_colors :-
    color(_),     % here the anonymous variable is used
    write('Color available'), nl.

% Backtracking Query:
% ?- different_colors(X, Y).
% This will give all possible pairs where colors are not equal.

% Instantiation Check:
% ?- X = 5, X > 3.
% X is instantiated before the comparison.
