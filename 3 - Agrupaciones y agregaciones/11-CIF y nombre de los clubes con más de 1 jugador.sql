--Escribe una consulta SQL que obtenga el CIF y el nombre de aquellos clubes que tengan más de un jugador. 
--El esquema esperado es:
--(CIF, Nombre)
SELECT
    j.cif,
    c.nombre
FROM
    jugador   j
    INNER JOIN club      c ON j.cif = c.cif
GROUP BY
    j.cif,
    c.nombre
HAVING
    COUNT(*) > 1