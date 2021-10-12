-- Escribe una consulta SQL que obtenga NIF y nombre (sin repeticiones) de los asistentes a partidos que son 
-- jugadores o árbitros. El esquema esperado es:
-- (NIF, Nombre)

( SELECT DISTINCT
    p.nif,
    p.nombre
FROM
    asiste    a
    INNER JOIN persona   p ON a.nif = p.nif
    INNER JOIN jugador   j ON p.nif = j.nif
)
UNION
( SELECT DISTINCT
    p.nif,
    p.nombre
FROM
    asiste    a
    INNER JOIN persona   p ON a.nif = p.nif
    INNER JOIN arbitro   a ON p.nif = a.nif
)
ORDER BY
    nif;