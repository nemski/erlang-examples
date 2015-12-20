-module(my_list).

-export([span/2]).

span(From, To) when To >= From ->
  lists:flatten([From, span(From + 1, To)]);

span(_, _) -> [].