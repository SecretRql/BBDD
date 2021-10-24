--Escribe una consulta SQL que obtenga el CIF de aquellos clubes que tengan más de un jugador.
--El esquema esperado es:
--(CIF)
SELECT
    j.cif
FROM
    jugador   j
GROUP BY
    j.cif
HAVING
    COUNT(*) > 1