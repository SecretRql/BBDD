--Escribe una consulta SQL que calcule para cada club la cantidad promedio de las financiaciones recibidas y el número de ellas. 
--Únicamente deben aparecer aquellos clubes con al menos una financiación. El esquema esperado es:
--(CIF, Nombre, PromedioFinanciaciones, TotalFinanciaciones)
SELECT
    f.cif_c    cif,
    c.nombre   nombre,
    AVG(f.cantidad) promediofinanciaciones,
    COUNT(f.cif_p) totalfinanciaciones
FROM
    financia   f
    INNER JOIN club       c ON f.cif_c = c.cif
GROUP BY
    c.nombre,
    f.cif_c;