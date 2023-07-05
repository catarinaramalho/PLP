dobro(A,B) :- B is A*2.
main:- read(A),
       dobro(A,B),
       write(B).
