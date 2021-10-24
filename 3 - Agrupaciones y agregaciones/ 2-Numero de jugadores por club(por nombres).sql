--Escribe una consulta SQL que devuelva el número de jugadores de cada club, 
--identificado por su CIF y su nombre. El esquema esperado es:
--(CIF, Nombre, NumJugadores)
SELECT
    club.cif,
    club.nombre AS "Nombre",
    COUNT(*) AS "NumJugadores"
FROM
    club
    INNER JOIN jugador ON jugador.cif = club.cif
GROUP BY
    club.cif, club.nombre;
