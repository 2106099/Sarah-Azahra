/* fakta */
orangtua(jack, susan).
orangtua(jack, ray).
orangtua(david, liza).
orangtua(david, john).
orangtua(john, peter).
orangtua(john, mary).
orangtua(karen, susan).
orangtua(karen, ray).
orangtua(amy, liza).
orangtua(amy, john).
orangtua(susan, peter).
orangtua(susan, mary).

lakik(david).
lakik(john).
lakik(peter).
lakik(jack).
lakik(ray).

wanita(amy).
wanita(liza).
wanita(susan).
wanita(mary).
wanita(karen).

/* aturan*/
orang_tua(X, Y) :- orangtua(X, Y).
saudara(X, Y) :- orangtua(Z, X), orangtua(Z, Y), X\=Y.
anak(Y, X) :- orangtua(X, Y).
kakek(X, Z) :- orangtua(X, Y), orangtua(Y, Z), lakik(X).
nenek(X, Z) :- orangtua(X, Y), orangtua(Y, Z), wanita(X).
