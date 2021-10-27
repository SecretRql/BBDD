--Escribe una consulta que devuelve el nombre de los clubes en los que todos sus jugadores tienen la letra 'e' en su nombre, 
--independientemente de que aparezca en mayúscula o en minúscula. 
--Tened en cuenta que los clubes sin jugadores cumplen trivialmente esta condición y por tanto deben aparecer en los resultados
--(Nombre)
SELECT
    c.nombre
FROM
    club c
WHERE
    NOT EXISTS (
        SELECT
            p.nombre
        FROM
            persona   p
            INNER JOIN jugador   j ON p.nif = j.nif
        WHERE
            c.cif = j.cif
            AND upper(p.nombre) NOT LIKE '%E%'
    );
