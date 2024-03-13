cronos.
ares.
hera.
poseidon.
afrodita.
hefesto.
hipolita.
zeus.
nera.
baco.
atena.
hermes.

esHombre(cronos).
esHombre(ares).
esHombre(poseidon).
esHombre(hefesto).
esHombre(zeus).
esHombre(baco).
esHombre(hermes).

esMujer(hera).
esMujer(afrodita).
esMujer(hipolita).
esMujer(nera).
esMujer(atena).

esDescendienteDirecto(hera,cronos).
esDescendienteDirecto(afrodita,ares).
esDescendienteDirecto(hefesto,ares).
esDescendienteDirecto(afrodita,hera).
esDescendienteDirecto(hefesto,hera).
esDescendienteDirecto(zeus,poseidon).
esDescendienteDirecto(zeus,afrodita).
esDescendienteDirecto(baco,afrodita).
esDescendienteDirecto(baco,hefesto).
esDescendienteDirecto(atena,afrodita).
esDescendienteDirecto(atena,hefesto).
esDescendienteDirecto(nera,hipolita).
esDescendienteDirecto(nera,zeus).
esDescendienteDirecto(hermes,atena).

% REGLAS

esAncestro(Ancestro,Persona):- esDescendienteDirecto(Persona, Ancestro), esHombre(Ancestro).
esAncestro(Ancestro,Persona):- esDescendienteDirecto(Persona, Padre), esAncestro(Ancestro, Padre).


