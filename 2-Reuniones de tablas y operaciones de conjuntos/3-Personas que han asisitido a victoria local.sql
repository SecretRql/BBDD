--Escribe una consulta SQL que devuelva el NIF y nombre (sin repeticiones) de las personas que han asistido a alguna
--victoria local. El esquema esperado es:
--(NIF, Nombre)
SELECT DISTINCT
    persona.nif,
    persona.nombre
FROM
    persona
    INNER JOIN asiste ON persona.nif = asiste.nif
    INNER JOIN enfrenta ON enfrenta.cif_local = asiste.cif_local
                           AND enfrenta.cif_visitante = asiste.cif_visitante
WHERE
    enfrenta.goleslocal > enfrenta.golesvisitante;