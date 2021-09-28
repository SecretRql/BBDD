--Escribe una consulta SQL que devuelva la rama sin repeticiones de los 
--patrocinadores que financian a clubes de estrictamente más de 50000 socios.
--Es esquema esperado es:
--(Rama)
SELECT DISTINCT rama FROM patrocinador
INNER JOIN financia ON financia.cif_p = patrocinador.cif
INNER JOIN club ON club.cif = financia.cif_c
WHERE club.num_socios > 50000;