% enlista(juan, [juan,maria, pedro]).

estaEnLista(Persona, [Cabeza | Cola]):-Persona==Cabeza.
estaEnLista(Persona, [Cabeza | Cola]):-estaEnLista(Persona, Cola).