--Escribe una consulta que obtenga, por cada club, su CIF, su nombre y la diferencia en valor absoluto 
--entre su número de socios y la media de socios por club. El esquema esperado es:
--(CIF, Nombre, Dif_Socios_Media)
SELECT
    cif,
    nombre,
    abs(num_socios -(
        SELECT
            AVG(num_socios)
        FROM
            club
    )) dif_socios_media
FROM
    club;
