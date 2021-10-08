-- Escribe una consulta SQL tal que por cada partido ganado por el club local, muestre el nombre de los clubes enfrentados y el resultado. Los resultados deben aparecer ordenados de más a menos goles locales, en caso de igualdad de más a menos goles visitantes, y en caso de resultados iguales deben aparecer por nombre de club local descendente. El esquema esperado es:
-- (ClubLocal, GolesLocal, GolesVisitante, ClubVisitante)
SELECT
    cl.nombre          AS "ClubLocal",
    e.goleslocal       AS "GolesLocal",
    e.golesvisitante   AS "GolesVisitante",
    cv.nombre          AS "ClubVisitante"
FROM
    club       cl
    INNER JOIN club       cv ON cl.nombre <> cv.nombre
    INNER JOIN enfrenta   e ON ( e.cif_local = cl.cif
                               AND e.cif_visitante = cv.cif )
WHERE
    e.goleslocal > e.golesvisitante
ORDER BY
    e.goleslocal DESC,
    e.golesvisitante DESC,
    cl.nombre DESC;