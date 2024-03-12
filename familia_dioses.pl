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

esDescendienteDirecto(hera, cronos).
esDescendienteDirecto(afrodita, ares).
esDescendienteDirecto(hefesto, ares).
esDescendienteDirecto(afrodita, hera).
esDescendienteDirecto(hefesto, hera).
esDescendienteDirecto(zeus, poseidon).
esDescendienteDirecto(zeus, afrodita).
esDescendienteDirecto(baco, afrodita).
esDescendienteDirecto(baco, hefesto).
esDescendienteDirecto(atena, afrodita).
esDescendienteDirecto(atena, hefesto).
esDescendienteDirecto(nera, hipolita).
esDescendienteDirecto(nera, zeus).
esDescendienteDirecto(hermes, atena).

% REGLAS

esPadre(cronos, hera):-esHombre(cronos), esDescendienteDirecto(hera, cronos).
esPadre(ares, afrodita):-esHombre(ares), esDescendienteDirecto(afrodita, ares).
esPadre(ares, hefesto):-esHombre(ares), esDescendienteDirecto(hefesto, ares).
esPadre(poseidon, zeus):-esHombre(poseidon), esDescendienteDirecto(poseidon, zeus).
esPadre(hefesto, baco):-esHombre(hefesto), esDescendienteDirecto(baco, hefesto).
esPadre(hefesto, atena):-esHombre(hefesto), esDescendienteDirecto(atena, hefesto).
esPadre(zeus, nera):-esHombre(zeus), esDescendienteDirecto(nera, zeus).

esMadre(hera, afrodita):-esMujer(hera), esDescendienteDirecto(afrodita, hera).
esMadre(hera, hefesto):-esMujer(hera), esDescendienteDirecto(hefesto, hera).
esMadre(afrodita, zeus):-esMujer(afrodita), esDescendienteDirecto(zeus, afrodita).
esMadre(hipolita, nera):-esMujer(hipolita), esDescendienteDirecto(nera, hipolita).
esMadre(atena, hermes):-esMujer(atena), esDescendienteDirecto(hermes, atena).

esHijo(hefesto, ares):-esHombre(hefesto), esDescendienteDirecto(hefesto, ares).
esHijo(zeus, poseidon):-esHombre(zeus), esDescendienteDirecto(zeus, poseidon).
esHijo(zeus, afrodita):-esHombre(zeus), esDescendienteDirecto(zeus, afrodita).
esHijo(baco, hefesto):-esHombre(baco), esDescendienteDirecto(baco, hefesto).
esHIjo(baco, afrodita):-esHombre(baco), esDescendienteDirecto(baco, afrodita).
esHijo(hermes, atena):-esHombre(hermes), esDescendienteDirecto(hermes, atena).

esHija(hera, cronos):-esMujer(hera), esDescendienteDirecto(hera, cronos).
esHija(afrodita, ares):-esMujer(afrodita), esDescendienteDirecto(afrodita, ares).
esHija(afrodita, hera):-esMujer(afrodita), esDescendienteDirecto(afrodita, hera).
esHija(atena, afrodita):-esMujer(atena), esDescendienteDirecto(atena, afrodita).
esHija(atena, hefesto):-esMujer(atena), esDescendienteDirecto(atena, hefesto).
esHija(nera, hipolita):-esMujer(nera), esDescendienteDirecto(nera, hipolita).
esHija(nera, zeus):-esMujer(nera), esDescendienteDirecto(nera, zeus).

esHermano(hefesto, afrodita):-esDescendienteDirecto(afrodita, ares),esDescendienteDirecto(afrodita, hera).
esHermano(zeus, baco):-esDescendienteDirecto(baco, afrodita),esDescendienteDirecto(zeus, afrodita).
esHermano(baco, zeus):-esDescendienteDirecto(zeus, afrodita),esDescendienteDirecto(baco, afrodita).
esHermano(baco, atena):-esDescendienteDirecto(atena, hefesto),esDescendienteDirecto(atena, afrodita).

esHermana(atena, baco):-esDescendienteDirecto(baco, hefesto),esDescendienteDirecto(baco, afrodita).
esHermana(afrodita, hefesto):-esDescendienteDirecto(hefesto, ares),esDescendienteDirecto(afrodita, hera).


esAbuelo(cronos, afrodita):-esHombre(cronos), esDescendienteDirecto(afrodita, hera).
esAbuelo(cronos, hefesto):-esHombre(cronos), esDescendienteDirecto(hefesto, hera).
esAbuelo(ares, zeus):-esHombre(ares), esDescendienteDirecto(zeus, afrodita).
esAbuelo(ares, baco):-esHombre(ares), esDescendienteDirecto(baco, hefesto).
esAbuelo(ares, atena):-esHombre(ares), esDescendienteDirecto(atena, hefesto).
esAbuelo(hefesto, hermes):-esHombre(hefesto), esDescendienteDirecto(heres, atena).
esAbuelo(poseidon, nera):-esHombre(poseidon), esDescendienteDirecto(nera, zeus).

esAbuela(hera, zeus):-esMujer(hera), esDescendienteDirecto(zeus, afrodita).
esAbuela(hera, baco):-esMujer(hera), esDescendienteDirecto(baco, hefesto).
esAbuela(hera, atena):-esMujer(hera), esDescendienteDirecto(atena, hefesto).
esAbuela(afrodita, nera):-esMujer(afrodita), esDescendienteDirecto(nera, zeus).
esAbuela(afrodita, hermes):-esMujer(hermes), esDescendienteDirecto(hermes, atena).
