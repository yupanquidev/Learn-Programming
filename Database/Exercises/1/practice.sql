CREATE TABLE people (
	id_people SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE sneakers (
	id_sneakers SERIAL PRIMARY KEY,
	brand VARCHAR(50) NOT NULL
);

CREATE TABLE people_sneakers (
  id_people_sneakers SERIAL PRIMARY KEY,
	id_people int,
	id_sneakers int,
	FOREIGN KEY (id_people) REFERENCES people(id_people),
	FOREIGN KEY (id_sneakers) REFERENCES sneakers(id_sneakers)
);

INSERT INTO people(name)
VALUES
	( 'María'),	('Pedro'), ('Ana'), ('Luis'), ('Julia');
	
INSERT INTO sneakers(brand)
VALUES
	('Nike'),('Adidas'),('Converse'),('Puma'),('Reebok');

INSERT INTO people_sneakers(id_people, id_sneakers)
VALUES 
	(1, 1), (1, 2), (1, 3), (1, 4),
	(2, 1), (2, 2), (2, 3),
	(3, 1), (3, 2),
	(4, 1);

-- Muestra todos las personas que tiene zapatillas
SELECT p.name, s.brand
FROM people AS p
	INNER JOIN people_sneakers AS ps 
	ON p.id_people = ps.id_people
	INNER JOIN sneakers AS s 
	ON ps.id_sneakers=s.id_sneakers;

-- Muestra todas las personas que tiene zapatillas
SELECT p.name, s.brand
FROM people AS p
	LEFT JOIN people_sneakers AS ps 
	ON p.id_people = ps.id_people
	INNER JOIN sneakers AS s 
	ON ps.id_sneakers=s.id_sneakers;

-- Muestra todas las personas que tiene zapatillas
SELECT p.name, s.brand
FROM people AS p
	INNER JOIN people_sneakers AS ps 
	ON p.id_people = ps.id_people
	LEFT JOIN sneakers AS s 
	ON ps.id_sneakers=s.id_sneakers;

-- Muestra todas la personas que tinen zapatillas y las que no tinen
SELECT p.name, s.brand
FROM people AS p
	LEFT JOIN people_sneakers AS ps 
	ON p.id_people = ps.id_people
	LEFT JOIN sneakers AS s 
	ON ps.id_sneakers=s.id_sneakers;
	
-- Muestra todas las personas que no tengan zapatillas
SELECT p.name, s.brand
FROM people AS p
	LEFT JOIN people_sneakers AS ps ON p.id_people = ps.id_people
	LEFT JOIN sneakers AS s ON ps.id_sneakers=s.id_sneakers
WHERE ps.id_sneakers IS NULL;

