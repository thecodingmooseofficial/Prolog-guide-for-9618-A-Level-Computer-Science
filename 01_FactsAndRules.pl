% Facts and Rules
% -------------------

male(harry).
male(paul).
male(jacob).
female(anastasia).
female(laura).
female(susan).

parent(harry, jacob).
parent(harry, laura).
parent(susan, jacob).
parent(susan, laura).
parent(anastasia, susan).
parent(paul, susan).
parent(jacob, anna).

married(harry, susan).
married(paul, anastasia).

% Rule: father(X, Y) means X is the father of Y
father(X, Y) :- parent(X, Y), male(X).

% Rule: mother(X, Y) means X is the mother of Y
mother(X, Y) :- parent(X, Y), female(X).

% Rule: sibling(X, Y) means X and Y share a parent
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Rule: grandparent(X, Y) means X is the parent of Y's parent
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% Rule: ancestor (recursive)
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).