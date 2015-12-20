-module(hello_world).

-export([hello_world/0, add/2, multiply/2, divide/2]).

hello_world() -> "Hello World".

add(A, B) -> A + B.

multiply(A, B) -> A*B.

divide(A, B) -> A/B.
