quienMata(Asesino,Victima):-
    odiaA(Asesino,Victima),
    esMasRicoQue(Asesino,Victima).

viveEnDreadbury(tiaAgatha).
viveEnDreadbury(mayordomo).
viveEnDreadbury(charles).

odiaA(charles,Persona):-
    viveEnDreadbury(Persona),
    not(odiaA(tiaAgatha,Persona)).
odiaA(tiaAgatha,Persona):-
    viveEnDreadbury(Persona),
    Persona \= mayordomo.

esMasRicoQue(Persona,tiaAgatha):-
    viveEnDreadbury(Persona),
    not(odiaA(mayordomo,Persona)).

odiaA(mayordomo,Persona):-
    odiaA(tiaAgatha,Persona).

% Consulta:  1 ?- quienMata(Asesino,tiaAgatha).
% Respuesta: Asesino = mayordomo.