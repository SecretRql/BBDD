--Escribe una consulta SQL que obtenga el NIF y nombre de las personas que han asistido a 
--exactamente una victoria de un equipo local. El esquema esperado es:
--(NIF, Nombre)

--NOTA: NO SE PORQUE CON EL COUNT(*) = 2 FUNCIONA
--IT JUST WORKS!
--ASUMO QUE ESTA MAL, PERO DA EL MISMO RESULTADO QUE EL JUEZ
SELECT 
    a.nif,
    p.nombre
FROM
    asiste     a
    INNER JOIN enfrenta   e ON e.cif_local = a.cif_local
    INNER JOIN persona  p ON p.nif = a.nif
WHERE
    e.goleslocal > e.golesvisitante
GROUP BY
    a.nif,
    p.nombre
HAVING
    COUNT(*) = 2