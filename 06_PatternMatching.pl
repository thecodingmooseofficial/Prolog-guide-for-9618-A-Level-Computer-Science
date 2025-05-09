% Pattern Matching
% -----------------

% Match exact structure
pair_sum([A, B], Sum) :-
    Sum is A + B.

% Match head and tail of list
first_element([H|_], H).

% Match nested structures
get_inner_value([[_, X]|_], X).

% Match a list starting with 'a'
starts_with_a([a|_]).

% Using anonymous variable for ignoring parts
second_element([_, X | _], X).

% Example Queries:
% ?- pair_sum([4, 6], X).             % X = 10
% ?- first_element([apple, banana], X). % X = apple
% ?- get_inner_value([[z, 99], [a, 5]], X).  % X = 99
