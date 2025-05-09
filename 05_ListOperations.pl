% List Operations
% ----------------

% --- Append ---
% append(List1, List2, CombinedList)
% Built-in: returns true if CombinedList is the result of joining List1 and List2

% Examples:
% ?- append([1,2], [3,4], X).     % X = [1, 2, 3, 4]
% ?- append(X, Y, [1,2,3]).       % Backtracking gives splits

% --- Member ---
% member(Element, List)
% Checks if Element is in the List

% ?- member(apple, [banana, apple, orange]).   % true

% --- Read and Write ---
get_and_show :-
    write('Enter a value: '),
    read(Input),          % reads from user
    write('You entered: '),
    write(Input), nl.

% --- Custom List Length Predicate ---
list_length([], 0).
list_length([_|Tail], Length) :-
    list_length(Tail, L1),
    Length is L1 + 1.

% Anonymous variable use: just count how many elements
print_list_lengths([H|T]) :-
    list_length(H, _),    % we ignore actual length value
    write('Processed a list'), nl,
    print_list_lengths(T).
print_list_lengths([]).
