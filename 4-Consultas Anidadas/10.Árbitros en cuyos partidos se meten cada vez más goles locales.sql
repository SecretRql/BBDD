--Escribe una consulta que obtenga el NIF y el nombre de los árbitros tales que en los partidos que han 
--dirigido se han marcado cada vez más goles locales. En otras palabras, todos sus partidos dirigidos
--cumplen que se han marcado más goles que en los anteriores. Esta consulta únicamente debe mostrar
--árbitros que han dirigio al menos dos partidos, ya que han dirigido 0 o 1
--partido cumplirían trivialmente esta propidad y no nos interesa mostrarlos. El esquema esperado es:
SELECT
    p.nif,
    p.nombre
FROM
    persona    p,
    enfrenta   e
WHERE
    p.nif = e.nif
    AND e.fecha = (
        SELECT
            MIN(fecha)
        FROM
            enfrenta
        WHERE
            nif = p.nif
    )
    AND NOT EXISTS (
        SELECT
            *
        FROM
            enfrenta
        WHERE
            nif = p.nif
            AND fecha > e.fecha
            AND goleslocal <= e.goleslocal
    );
