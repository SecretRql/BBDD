--Para cada patrocinador, número de clubes diferentes a los que patrocina algún jugador.
--Si un patrocinador no patrocina a ningún jugador de ningún club, ese patrocinador debe aparecer con 0 patrocinados. 
--Los resultados deben mostrarse por orden descendente de número de clubes, 
--y luego por orden ascendente de CIF de patrocinador
--(CIF_Patrocinador, NumClubesConPatrocinio)

--TRADUCCION: Por cada club, sacar cuantos clubes patrocina. Porque cada club patrocina a jugadores
-- y hay jugadores del mismo equipo que son patrocinados por un mismo patrocinador, esto contaría como uno

SELECT ptrdor.cif CIF_Patrocinador, count( distinct j.cif) NumClubesConPatrocinio
FROM patrocinador ptrdor
LEFT JOIN patrocina ptr ON ptrdor.cif = ptr.cif
LEFT JOIN jugador j ON ptr.nif = j.nif
LEFT JOIN club c ON j.cif = c.cif
GROUP BY ptrdor.cif
ORDER BY NumClubesConPatrocinio DESC;
