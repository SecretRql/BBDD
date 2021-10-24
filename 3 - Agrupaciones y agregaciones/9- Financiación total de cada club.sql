--Escribe una consulta SQL que calcule, para cada club, la suma total de las financiaciones recibidas.
--Los resultados deben aparecer ordenados de mayor a menor financiación total.
--Si un club no ha recibido ninguna financiación debe aparecer con SumaFinanciaciones a 0. El esquema esperado es:
--(CIF, Nombre, SumaFinanciaciones)
SELECT
    c.cif      cif,
    c.nombre   nombre,
    nvl(SUM(f.cantidad), 0) sumafinanciaciones
FROM
    financia   f
    RIGHT JOIN club       c ON f.cif_c = c.cif
GROUP BY
    c.nombre,
    c.cif
ORDER BY
    sumafinanciaciones DESC,
    nombre DESC;