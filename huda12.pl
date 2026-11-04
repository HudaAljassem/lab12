% ARTI 401 - Lab 12: Graphs
% Finding paths between different cities.

% Directed edges
edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Makkah', 'Riyadh').
edge('Tabuk', 'Taif').
edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').
edge('Dammam', 'Al-Qatif').
edge('Dammam', 'Riyadh').
edge('Riyadh', 'Dammam').
edge('Al-Qatif', 'Madinah').
edge('Al-Qatif', 'Dammam').

% Find a path between two cities.
travel(From, To, Path) :-
    path(From, To, [From], ReversePath),
    reverse(ReversePath, Path).

path(To, To, Visited, Visited).

path(From, To, Visited, Path) :-
    edge(From, Next),
    \+ member(Next, Visited),
    path(Next, To, [Next|Visited], Path).
