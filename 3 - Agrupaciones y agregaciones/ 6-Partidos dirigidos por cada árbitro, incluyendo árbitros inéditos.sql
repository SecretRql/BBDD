--Escribe una consulta SQL que calcule el número de partidos arbitrados por cada árbitro, 
--pero mostrando únicamente aquellos árbitros que han participado en al menos un partido. 
--De cada árbitro debes mostrar el NIF y el nombre. 
--Además, los árbitros deben aparecer de mayor a menor número de partidos arbitrados. 
--El esquema esperado es:
--(NIF, Nombre, PartidosArbitrados)
SELECT
    a.nif,
    p.nombre,
    COUNT(e.nif) partidosarbitrados
FROM
    arbitro    a
    JOIN persona    p ON p.nif = a.nif
    LEFT JOIN enfrenta   e ON p.nif = e.nif
GROUP BY
    a.nif,
    p.nombre
ORDER BY
    partidosarbitrados DESC;
