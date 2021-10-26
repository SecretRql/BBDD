--Escribe una consulta que obtenga el NIF, 
--el nombre y altura de los jugadores estrictamente más altos que la media. 
--El esquema esperado es: 
--(Nombre)
SELECT
    persona.nif, persona.nombre, j.altura
FROM
    Jugador j
JOIN persona ON persona.nif = j.nif
WHERE
    j.altura  > (
        SELECT
            AVG(jugador.altura)
        FROM
            jugador
    );
