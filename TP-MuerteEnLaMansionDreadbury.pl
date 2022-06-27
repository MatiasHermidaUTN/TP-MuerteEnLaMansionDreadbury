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
odiaA(mayordomo,Persona):-
    odiaA(tiaAgatha,Persona).

esMasRicoQue(Persona,tiaAgatha):-
    viveEnDreadbury(Persona),
    not(odiaA(mayordomo,Persona)).


% Consulta:   ?- quienMata(Asesino,tiaAgatha).
% Respuesta: Asesino = mayordomo.

%2.1 - Si existe alguien que odie a milhouse.
% Consulta:   ?- odiaA(_,milhouse).
% Respuesta:    false.

%2.2 - A quién odia charles.
% Consulta:   ?- odiaA(charles,Odiado).
% Respuesta:    Odiado = mayordomo.

%2.3 - El nombre de quien odia a tía Ágatha.
% Consulta:   ?- odiaA(Odiador,tiaAgatha).
% Respuesta:    Odiador = tiaAgatha ;
%               Odiador = mayordomo.

%2.4 - Todos los odiadores y sus odiados.
% Consulta:   ?- odiaA(Odiador,Odiado).
/*Resultados:   Odiador = charles,
                Odiado = mayordomo ;
                Odiador = Odiado, Odiado = tiaAgatha ;
                Odiador = tiaAgatha,
                Odiado = charles ;
                Odiador = mayordomo,
                Odiado = tiaAgatha ;
                Odiador = mayordomo,
                Odiado = charles.  
*/

%2.5 - Si es cierto que el mayordomo odia a alguien.
% Consulta:   ?- odiaA(mayordomo,_).
% Respuesta:    true.