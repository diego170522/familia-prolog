# HECHOS

juan.
maria.
estela.

arturito.
andres.
jose.
karina.
mariel.

bd.
red.
ia.

ensenia(juan,bd).
ensenia(maria,red).
ensenia(maria,bd).
ensenia(maria,ia).
ensenia(estela,red).
ensenia(estela,ia).

asiste(arturito,bd).
asiste(arturito,red).
asiste(andres,red).
asiste(andres,ia).
asiste(jose,bd).
asiste(jose,red).
asiste(jose,ia).
asiste(karina,red).
asiste(karina,ia).
asiste(mariel,ia).

% El docente enseña una materia X, el estudiante asiste a un a materia X, X en ambos casos es la misma materia
esDocenteDe(Docente, Estudiante):-ensenia(Docente, Materia),asiste(Estudiante, Materia).


% El estudiante A asiste a una materia X, El estudiante B asiste a una materia X
esCompanieroDe(EstudianteA, EstudianteB):-asiste(EstudianteA, Materia),asiste(EstudianteB, Materia).






