% Recursion
% ----------

% Factorial (N!)
factorial(0, 1).
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, SubResult),
    Result is N * SubResult.

% Sum of numbers in a list
sum_list([], 0).
sum_list([Head|Tail], Total) :-
    sum_list(Tail, Subtotal),
    Total is Head + Subtotal.

% Check if a value is a member of a list
my_member(X, [X|_]).
my_member(X, [_|Tail]) :-
    my_member(X, Tail).

% Count elements in a list
count([], 0).
count([_|Tail], Count) :-
    count(Tail, SubCount),
    Count is SubCount + 1.

% Reverse a list
reverse_list([], []).
reverse_list([Head|Tail], Reversed) :-
    reverse_list(Tail, RevTail),
    append(RevTail, [Head], Reversed).