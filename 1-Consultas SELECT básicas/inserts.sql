--Considera una tabla que almacena 
--algunos datos sobre clubes de fútbol definida de la siguiente manera:
	
CREATE TABLE Club(
	CIF CHAR(9) PRIMARY KEY,
	Nombre VARCHAR(40) NOT NULL UNIQUE,
	Sede VARCHAR(30) NOT NULL,
	Num_Socios INTEGER NOT NULL,
);

INSERT INTO Club VALUES ('11111111X', 'Real Madrid CF', 'Concha Espina', 70000);
INSERT INTO Club VALUES ('11111112X', 'Futbol Club Barcelona', 'Aristides Maillol', 80000);
INSERT INTO Club VALUES ('11111113X', 'Paris Saint-Germain Football Club', 'Rue du Commandant Guilbaud', 1000);

--Esto es para los dos ultimos ejercicios
CREATE TABLE Persona(
    NIF CHAR(9) PRIMARY KEY,
    Nombre VARCHAR(20) NOT NULL
);

CREATE TABLE Arbitro(
    NIF CHAR(9) PRIMARY KEY REFERENCES Persona(NIF) ON DELETE CASCADE,
    Colegio VARCHAR(20) NOT NULL,
    Fecha_colegiatura DATE NOT NULL
);


INSERT INTO Persona VALUES ('00000003X', 'Mejuto Gonzalez');
INSERT INTO Persona VALUES ('00000004X', 'Velasco Carballo');
INSERT INTO Persona VALUES ('00000009X', 'José Luis Munuera');
INSERT INTO Persona VALUES ('00000010X', 'Joaquín Moreno');
INSERT INTO Persona VALUES ('00000011X', 'Luis Méndez');

INSERT INTO Arbitro VALUES ('00000003X', 'Navarro', TO_DATE('2012-06-05', 'YYYY-MM-DD'));
INSERT INTO Arbitro VALUES ('00000004X', 'Andaluz', TO_DATE('2015-08-12', 'YYYY-MM-DD'));
INSERT INTO Arbitro VALUES ('00000009X', 'Valenciano', TO_DATE('2017-01-11', 'YYYY-MM-DD'));
INSERT INTO Arbitro VALUES ('00000010X', 'Navarro', TO_DATE('2019-06-24', 'YYYY-MM-DD'));
INSERT INTO Arbitro VALUES ('00000011X', 'Gallego', TO_DATE('2020-06-01', 'YYYY-MM-DD'));
