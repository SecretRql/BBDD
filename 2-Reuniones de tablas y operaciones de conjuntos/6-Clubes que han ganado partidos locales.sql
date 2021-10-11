-- Escribe una consulta SQL que obtenga el nombre (sin repeticiones) de los clubes que han ganado todos sus 
-- partidos como local, habiendo jugado al menos uno. El esquema esperado es: 
-- (Nombre)
( SELECT
    l.nombre
FROM
    enfrenta   e
    INNER JOIN club       l ON ( e.cif_local = l.cif )
    INNER JOIN club       v ON ( e.cif_visitante = v.cif )
WHERE
    e.goleslocal > e.golesvisitante
)
MINUS
( SELECT
    l.nombre
FROM
    enfrenta   e
    INNER JOIN club       l ON ( e.cif_local = l.cif )
    INNER JOIN club       v ON ( e.cif_visitante = v.cif )
WHERE
    e.goleslocal = e.golesvisitante
);