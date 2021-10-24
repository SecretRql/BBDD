--Escribe una consulta SQL que calcule, para cada club, el promedio de las financiaciones recibidas y número de ellas. 
--Los clubes que no hayan obtenido ninguna financiación deben aparecer con un 0 en las columnas 
--PromedioFinanciaciones y PromedioFinanciaciones. El esquema esperado es:
--(CIF, Nombre, PromedioFinanciaciones, TotalFinanciaciones)
SELECT
    c.cif      cif,
    c.nombre   nombre,
    nvl(AVG(f.cantidad), 0) promediofinanciaciones,
    COUNT(f.cif_p) totalfinanciaciones
FROM
    financia   f
    RIGHT JOIN club       c ON f.cif_c = c.cif
GROUP BY
    c.nombre,
    c.cif;
