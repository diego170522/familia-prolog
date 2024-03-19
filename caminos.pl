% pais
bolivia.

% departamentos
pando.
lapaz.
beni.
cochabamba.
santacruz.
oruro.
potosi.
tarija.
chuquisaca.

% ciudades
lapazCiudad.
potosiCiudad.
oruroCiudad.
santacruzCiudad.
tarijaCiudad.
cochabambaCiudad.
sucre.
trinidad.
cobija.
riberalta.
apolo.
uyuni.
villamontes.
sanjosechiquitos.
puertosuarez.

esPais(bolivia).

esDepartamento(pando).
esDepartamento(lapaz).
esDepartamento(beni).
esDepartamento(cochabamba).
esDepartamento(santacruz).
esDepartamento(oruro).
esDepartamento(potosi).
esDepartamento(tarija).
esDepartamento(chuquisaca).

esCapitalDe(lapazCiudad, lapaz).
esCapitalDe(potosiCiudad, potosi).
esCapitalDe(oruroCiudad, oruro).
esCapitalDe(santacruzCiudad, santacruz).
esCapitalDe(sucre, chuquisaca).
esCapitalDe(tarijaCiudad, tarija).
esCapitalDe(cochabambaCiudad, cochabamba).
esCapitalDe(trinidad, beni).
esCapitalDe(cobija, pando).

esCiudadDe(riberalta, pando).
esCiudadDe(apolo, lapaz).
esCiudadDe(uyuni, potosi).
esCiudadDe(villamontes, tarija).
esCiudadDe(sanjosechiquitos, santacruz).
esCiudadDe(puertosuarez, santacruz).

tieneCaminoA(riberalta, cobija).
tieneCaminoA(cobija, apolo).
tieneCaminoA(apolo, cobija).
tieneCaminoA(apolo, lapazCiudad).
tieneCaminoA(lapazCiudad, apolo).
tieneCaminoA(lapazCiudad, trinidad).
tieneCaminoA(lapazCiudad, oruroCiudad).
tieneCaminoA(oruroCiudad, lapazCiudad).
tieneCaminoA(lapazCiudad, cochabambaCiudad).
tieneCaminoA(cochabambaCiudad, lapazCiudad).
tieneCaminoA(oruroCiudad, uyuni).
tieneCaminoA(oruroCiudad, sucre).
tieneCaminoA(uyuni, tarijaCiudad).
tieneCaminoA(tarijaCiudad, uyuni).
tieneCaminoA(tarijaCiudad, sucre).
tieneCaminoA(tarijaCiudad, villamontes).
tieneCaminoA(villamontes, tarijaCiudad).
tieneCaminoA(sucre, cochabambaCiudad).
tieneCaminoA(cochabambaCiudad, sucre).
tieneCaminoA(sucre, santacruzCiudad).
tieneCaminoA(santacruzCiudad, sanjosechiquitos).
tieneCaminoA(sanjosechiquitos, puertosuarez).
tieneCaminoA(puertosuarez, sanjosechiquitos).
tieneCaminoA(santacruzCiudad, cochabambaCiudad).
tieneCaminoA(santacruzCiudad, trinidad).

hayCamino(CiudadA, CiudadB):-tieneCaminoA(CiudadA, CiudadB);tieneCaminoA(CiudadB, CiudadA).


