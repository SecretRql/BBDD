--Escribe una consulta SQL que devuelva el número de jugadores de cada club. El esquema esperado es:
--(CIF, NumJugadores)
SELECT
    club.cif,
    COUNT(*) AS "NumJugadores"
FROM
    club
    INNER JOIN jugador ON jugador.cif = club.cif
GROUP BY
    club.cif;
