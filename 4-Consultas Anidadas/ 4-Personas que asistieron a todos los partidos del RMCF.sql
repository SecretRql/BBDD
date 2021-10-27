--Escribe una consulta que devuelva el NIF y el nombre de las personas que han asisitido a todos los partidos que ha disputado el club de nombre 
--'Real Madrid CF' tanto local como visitante. El esquema esperado es:
--(NIF, Nombre)
SELECT
    nif
FROM
    persona
WHERE
    NOT EXISTS (
        SELECT
            a.cif_local,
            a.cif_visitante
        FROM
            asiste a
        WHERE
            a.cif_visitante = '11111111X'
            OR a.cif_local = '11111111X'
        MINUS
        SELECT
            a2.cif_local,
            a2.cif_visitante
        FROM
            asiste a2
        WHERE
            a2.nif = persona.nif
            AND ( a2.cif_local = '11111111X'
                  OR a2.cif_visitante = '11111111X' )
    );
