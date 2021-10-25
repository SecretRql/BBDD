--Escribe una consulta que obtenga el CIF y el nombre de los clubes que no tienen ningún jugador. El esquema esperado es:
--(CIF, Nombre)

SELECT
    c.cif      cif,
    c.nombre   nombre
FROM
    club      c
    LEFT JOIN jugador   j ON j.cif = c.cif
WHERE
    j.cif IS NULL
GROUP BY
    c.cif,
    c.nombre

--Otra solucion
SELECT
    c.cif,
    c.nombre
FROM
    club c
WHERE
    NOT EXISTS (
        SELECT
            *
        FROM
            jugador
        WHERE
            jugador.cif = c.cif
    )
