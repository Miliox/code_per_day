-module(fizz_buzz).
-export([run/0]).

run() ->
    run(1).

run(101) -> ok;
run(N) when ((N rem 3) == 0) and ((N rem 5) == 0) ->
    io:format("FizzBuzz~w~n", [N]),
    run(N+1);
run(N) when (N rem 5) == 0 ->
    io:format("Buzz~w~n", [N]),
    run(N+1);
run(N) when (N rem 3) == 0 ->
    io:format("Fizz~w~n", [N]),
    run(N+1);
run(N) -> run(N+1).
