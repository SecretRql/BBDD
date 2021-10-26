--Escribe una consulta que obtenga el NIF y el nombre de los jugadores que reciben patrocinio 
--de todos los patrocinadores de la rama 'Deportes'. 
--El esquema esperado es:
--(NIF, Nombre)
--Escribe una consulta que obtenga el NIF y el nombre de los jugadores que reciben patrocinio 
--de todos los patrocinadores de la rama 'Deportes'. 
--El esquema esperado es:
--(NIF, Nombre)
SELECT
    j.nif,
    persona.nombre
FROM
    jugador j
    INNER JOIN persona ON persona.nif = j.nif
WHERE
    NOT EXISTS (
        SELECT
            patrocinador.cif
        FROM
            patrocinador
        WHERE
            patrocinador.rama = 'Deportes'
        MINUS
        SELECT
            patrocina.cif
        FROM
            patrocina
        WHERE
            patrocina.nif = j.nif
    );
