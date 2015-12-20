-module(sum1).

-export([sum/1]).

sum(X) -> sum(X, 0).

sum([H|T], Acc) -> sum(T, Acc + H);

sum([], Acc) -> Acc.