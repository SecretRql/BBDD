--Escribe una consulta que devuelva el NIF y el nombre de aquellos jugadores que no tienen ningún patrocinador.
--Esta consulta se puede resolver usando operaciones de conjuntos pero también mediante consultas anidadas. 
--Tratad de resolverla de las dos maneras. El esquema esperado es:
--(NIF, Nombre)
--Solucion con operaciones de conjuntos
SELECT j.nif NIF, p.nombre Nombre
FROM jugador j
LEFT JOIN patrocina ptr ON ptr.nif = j.nif
LEFT JOIN persona p ON j.nif = p.nif
WHERE ptr.nif IS NULL;
