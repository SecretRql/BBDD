--Escribe una consulta SQL que devuelva el nombre sin repeticiones de los árbitros 
--que han arbitrado alguna victoria local. Es esquema esperado es:
--(Nombre)
SELECT DISTINCT nombre From persona
INNER JOIN arbitro ON persona.nif = arbitro.nif
INNER JOIN enfrenta ON arbitro.nif = enfrenta.nif;