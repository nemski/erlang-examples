-module(fizz_buzz).

-export([fizz_buzz/1]).

fizz_buzz([H|T]) -> fizz_buzz([H|T], divisible_fifteen(H), divisible_five(H), divisible_three(H));

fizz_buzz([]) -> ok.

fizz_buzz([_|T], Div_15, _, _) when Div_15 ->
  io:fwrite("FizzBuzz~n"),
  fizz_buzz(T);

fizz_buzz([_|T], _, Div_5, _) when Div_5 ->
  io:fwrite("Fizz~n"),
  fizz_buzz(T);

fizz_buzz([_|T], _, _, Div_3) when Div_3 ->
  io:fwrite("Buzz~n"),
  fizz_buzz(T);

fizz_buzz([H|T], _, _, _) ->
  io:fwrite(io_lib:format("~p", [H])),
  io:fwrite("~n"),
  fizz_buzz(T).

divisible_fifteen(Num) -> Num rem 15 == 0.

divisible_five(Num) -> Num rem 5 == 0.

divisible_three(Num) -> Num rem 3 == 0.
