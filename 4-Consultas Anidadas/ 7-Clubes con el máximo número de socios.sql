--Escribe una consulta que obtenga el nombre de los clubes con el número máximo de socios. Ten en cuenta que puede haber varios clubes que tengan el máximo número de socios. 
--Esta consulta también se puede entender como encontrar aquellos clubes tales que no existe otro club con más socios. 
--Se requiere usar consultas anidadas, pero hay varias alternativas. 
--El esquema esperado es:
--(Nombre)
SELECT
    c.Nombre
FROM
    club c
WHERE
    c.num_socios = (
        SELECT
            MAX(num_socios)
        FROM
            club c2
    );
