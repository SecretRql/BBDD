-- Escribe una consulta SQL tal que por cada partido ganado por el club local, muestre el nombre de los clubes 
-- enfrentados y el resultado. Los resultados deben aparecer ordenados de más a menos goles locales, en caso de igualdad 
-- de más a menos goles visitantes, y en caso de resultados iguales deben aparecer por nombre de club local descendente. 
-- El esquema esperado es:
-- (ClubLocal, GolesLocal, GolesVisitante, ClubVisitante)


SELECT
    l.nombre,
    e.goleslocal,
    e.golesvisitante,
    v.nombre
FROM
    enfrenta   e
    INNER JOIN club       l ON (e.cif_local = l.cif)
    INNER JOIN club       v ON (e.cif_visitante = v.cif)
WHERE
    e.golesvisitante < e.goleslocal
ORDER BY
    e.goleslocal DESC,
    e.golesvisitante DESC,
    l.nombre DESC;