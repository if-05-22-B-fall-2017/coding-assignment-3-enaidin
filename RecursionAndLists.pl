prepend(E, [], [E]).
prepend(E, [Head|Tail], [E|[Head|Tail]]).

addElement(E, [], [E]).
addElement(E, [Head|Tail], [Head|ExtendedTail]) :- addElement(E, Tail, ExtendedTail).

haslength([], 0).
haslength([_|Tail], X) :- haslength(Tail, Y), X is 1 + Y.

remove(E, [E|Tail], Tail).
remove(E, [_|Tail], [Head|ReducedTail]) :- remove(E, Tail, ReducedTail).
