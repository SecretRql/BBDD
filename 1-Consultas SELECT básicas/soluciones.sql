

	--TABLA COMPLETA
	--Escribe una consulta SQL que devuelve todo el contenido de la tabla Club. 
	--El esquema del resultado debe ser el siguiente:
	--(CIF, Nombre, Sede, Num_Socios)
	SELECT * 
	FROM Club;

	--FILTRAR COLUMNAS
	--Escribe una consulta SQL que devuelve la sede y el nombre de todos los clubes. 
	--El esquema del resultado debe ser el siguiente (ten cuidado con el orden):
	--(Sede, Nombre)
	SELECT sede, nombre 
	FROM Club;

	--SELECCIONAR FILAS
	--Escribe una consulta SQL que devuelve todos los datos de aquellos clubes que tienen entre 70.000 y 80.000 socios (ambos incluidos). 
	--El esquema del resultado debe ser el siguiente:
	--(CIF, Nombre, Sede, Num_Socios)
	SELECT * 
	FROM Club
	WHERE num_socios <= 80000 AND num_socios >= 70000;



	--SELECCIONAR FILAS Y COLUMNAS
	--Escribe una consulta SQL que devuelve únicamente el CIF de los clubes que tienen entre estrictamente menos de 70.000 socios. 
	--El esquema del resultado debe ser el siguiente:
	--(CIF)
	SELECT cif
	FROM Club
	WHERE num_socios < 70000;

	--CONDICIONES SOBRE CADENAS
	--Escribe una consulta SQL que devuelve el CIF y la Sede de los clubes cuyo nombre contiene la letra u minúscula. 
	--El esquema del resultado debe ser el siguiente:
	--(CIF, Sede)
	SELECT cif, sede 
	FROM CLUB
	WHERE nombre LIKE '%u%';

	--OMITIR DUPLICADOS
	--Escribe una consulta SQL que devuelve los valores distintos de número de socios. 
	--Es decir, si varios clubes tienen el mismo número de socios, ese número únicamente debe aparecer una vez. 
	--El esquema del resultado debe ser el siguiente:
	--(Num_Socios)
	INSERT INTO Club (CIF, NOMBRE, SEDE, NUM_SOCIOS) VALUES ('11111114X', 'Club Atlético de Madrid SAD', 'Avenida Luis Aragonés', '70000');

	SELECT DISTINCT num_socios
	from Club;

	--ORDENAR RESULTADOS
	SELECT nombre
	FROM Club
	ORDER BY num_socios DESC;

	--ORDENAR RESULTADOS USANDO VARIOS CAMPOS
	--Escribe una consulta SQL que devuelva los nombres de los clubes ordenados de mayor a menor número de socios. 
	--En caso de empate a número de socios, estos deben aparecer en orden alfabético inverso. 
	--El esquema del resultado debe ser el siguiente:
	--(nombre)

	SELECT nombre
	FROM Club
	ORDER BY num_socios DESC, nombre DESC;

	--ORDENAR RESULTADOS USANDO FUNCIONES
	--Escribe una consulta SQL que devuelva los nombres de los clubes ordenados de mayor a menor longitud. 
	--Es decir, primero deben aparecer los clubes de nombre más largo y luego los de nombre más corto. 
	--El esquema del resultado debe ser el siguiente
	--(nombre)

	SELECT nombre
	FROM Club
	ORDER BY LENGTH(nombre) DESC; 


	--RENOMBRAR COLUMNAS
	--Escribe una consulta SQL que devuelva los nombres de los clubes y su número de socios.
	-- Sin embargo, el número de socios debe aparecer en una columna llamada "Número de aficionados".
	--Ten en cuenta que el nuevo nombre de columna contiene espacios. 
	--El esquema del resultado debe ser el siguiente:
	--(nombre, Número de aficionados)

	SELECT nombre, num_socios AS "Número de aficionados"
	FROM Club;

	--OPERACIONES SOBRE COLUMNAS
	--Escribe una consulta SQL que devuelva la sede y el nombre de los clubes. 
	--Esta consulta debe devolver los nombres de los clubes en mayúsculas en una columna llamada Nombre_Club. 
	--El esquema del resultado debe ser el siguiente:
	--(Sede, Nombre_Club)

	SELECT sede, UPPER(nombre) as "Nombre_Club"
	FROM Club;

	--CONSULTA COMBINADA
	--Escribe una consulta SQL que devuelva la sede y el CIF de los clubes con estrictamente más de 50.000 socios.
	--La sede debe aparecer completamente en minúsculas en una columna llamada Lugar, 
	--y la columna que contiene el CIF se debe llamar Identificador. 
	--Además, los clubes deben aparecer de mayor a menor número de socios, y en caso de empate, por CIF ascendente. 
	--El esquema del resultado debe ser el siguiente:
	--(Lugar, Identificador)

	SELECT LOWER(sede) AS "Lugar", cif AS "Identificador"
	FROM Club
	WHERE num_socios > 50000
	ORDER BY num_socios DESC, cif ASC;

	--EXTRAER MESES DE UNA FECHA
	--Escribe una consulta SQL que devuelva el Colegio sin repeticiones de los árbitros que se colegiaron en
	--un mes de junio. El esquema del resultado debe ser el siguiente:
	--(Colegio)
	
	SELECT DISTINCT Colegio 
	FROM Arbitro
	WHERE EXTRACT(MONTH FROM fecha_colegiatura) = 6;

	--OPERAR CON FECHAS
	-- Escribe una consulta SQL que devuelva el NIF y fecha en la que cada árbitro cumplió (o cumplirá) 
	--su aniversario de 10 años desde su colegiatura. El esquema del resultado debe ser el siguiente
	--(ten cuidado con el nombre de la columna del aniversario):
	--(NIF, Aniversario)
	SELECT NIF, ADD_MONTHS(fecha_colegiatura, 120) AS "ANIVERSARIO"
	FROM ARBITRO;