floor(A,B) :- integer(A), B is A.
floor(A,B) :- A<0, B is (truncate(A) - 1); B is truncate(A).
ceil(A,B) :- integer(A), B is A.
ceil(A,B) :- A<0, B is truncate(A); B is (truncate(A) + 1).
abs(A,B) :- A<0, B is -A; B is A.

main :- read(N),
        floor(N, R1),
        ceil(N, R2),
        abs(N, R3),
        format("Floor de ~w = ~w~n",[N,R1]),
        format("Ceil de ~w = ~w~n",[N,R2]),
        format("Abs de ~w = ~w~n",[N,R3]),
        halt.
