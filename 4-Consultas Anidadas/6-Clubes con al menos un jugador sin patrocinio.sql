--Escribe una consulta que obtenga el CIF y nombre de los clubes que tienen al menos un jugador
--que no recibe ningún patrocinio. Ten en cuenta que los clubes que no tienen ningún jugador no
--deben aparecer como resultados de esta consulta. 
--Esta consulta requiere de una o dos consultas anidadas, aunque hay varias alternativas. Esquema: 
--(CIF, Nombre)
SELECT
    c.cif,
    c.nombre
FROM
    club c
WHERE
    EXISTS (
        SELECT
            jugador.nif
        FROM
            jugador
        WHERE
            jugador.cif = c.cif
        MINUS
        SELECT
            patrocina.nif
        FROM
            patrocina
    );
