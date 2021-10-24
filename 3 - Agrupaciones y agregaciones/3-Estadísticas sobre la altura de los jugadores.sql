--Escribe una consulta SQL que calcule la altura mínima, altura máxima y promedio de altura 
--de los jugadores cuyo nombre contiene una e o una E. 
--El promedio de altura se debe redondear a 4 decimales. 
--El esquema esperado es:
--(AlturaMinima, AlturaMaxima, AlturaPromedio)
SELECT
    MIN(altura),
    MAX(altura),
    round(AVG(altura), 4)
FROM
    jugador
    INNER JOIN persona ON persona.nif = jugador.nif
--Para no poner el otro like('%E%'), lo convierto todo a mayusculas
WHERE
    upper(persona.nombre) LIKE upper('%e%');