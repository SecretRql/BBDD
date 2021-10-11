-- Escribe una consulta SQL que obtenga el nombre (sin repeticiones) de los clubes arbitrados por el árbitro de nombre 
-- Velasco Carballo. El esquema esperado es: 
-- (Nombre)
SELECT
    l.nombre
FROM
    arbitro    a
    INNER JOIN persona    p ON p.nif = a.nif
    INNER JOIN enfrenta   e ON e.nif = p.nif
    INNER JOIN club       l ON l.cif = e.cif_local
    INNER JOIN club       v ON v.cif = e.cif_visitante
WHERE
    p.nombre = 'Velasco Carballo';