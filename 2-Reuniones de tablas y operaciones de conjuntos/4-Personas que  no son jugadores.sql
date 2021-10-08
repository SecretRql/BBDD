-- Escribe una consulta SQL que devuelva el NIF y nombre de las personas que no son jugadores. El esquema esperado es:
--(NIF, Nombre)
--Enlace de ayuda: https://ingenieriadesoftware.es/wp-content/uploads/2018/07/sqljoin.jpeg
SELECT
    p.nif,
    p.nombre
FROM
    persona p
    LEFT JOIN jugador j ON p.nif = j.nif
WHERE
    j.nif IS NULL;