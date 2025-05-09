% Query Examples -> Run these in SWI-Prolog
% ----------------------------------------

% E1: Who is Jacob's father?
% ?- father(X, jacob).

% E2: Who are Paul's grandchildren?
% ?- grandparent(paul, X).

% E3: Who are siblings of Laura?
% ?- sibling(laura, X).

% E4: Who are ancestors of Anna?
% ?- ancestor(X, anna).

% E5: Calculate factorial of 5
% ?- factorial(5, R).

% E6: Sum list [1,2,3,4]
% ?- sum_list([1,2,3,4], Total).

% E7: Is 'moose' in the list [moose, mary, susan]?
% ?- my_member(moose, [moose, mary, susan]).

% E8: Reverse list [a, b, c]
% ?- reverse_list([a, b, c], Result).