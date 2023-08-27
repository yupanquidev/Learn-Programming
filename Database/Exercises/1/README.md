# Ejercicio  N° 1
- Diseñar diagrama ER simple: `Personas *:* Zapatillas`.

  ![Diagrama ER](1-practice_ER.png)
- Crear tablas:
  - Personas: 

    ```sql
    CREATE TABLE people (
	  id_people SERIAL PRIMARY KEY,
	  name VARCHAR(50) NOT NULL
    );
    ```
  - Zapatillas:

    ```sql
    CREATE TABLE sneakers (
	  id_sneakers SERIAL PRIMARY KEY,
	  brand VARCHAR(50) NOT NULL
    );
    ```
  - PersonasZapatillas:

    ```sql
    CREATE TABLE people_sneakers (
      id_people_sneakers SERIAL PRIMARY KEY,
	  id_people int,
	  FOREIGN KEY (id_people) REFERENCES people(id_people),
	  id_sneakers int,
	  FOREIGN KEY (id_sneakers) REFERENCES sneakers(id_sneakers)
    );
    ```
- Llenar datos: 
  - 5 personas:
    - Con todas las zapatillas.
    - Con algunas zapatillas.
    - Sin zapatillas.
  - Zapatillas:
    - Que tenga todas las personas.
    - Sin personas.

  ```sql
  -- Agregar 5 personas
  INSERT INTO people(name)
  VALUES
    ( 'María'), ('Pedro'), ('Ana'), ('Luis'), ('Julia');

  -- Agregar 4 zapatillas
  INSERT INTO sneakers(brand)
  VALUES
    ('Nike'), ('Adidas'), ('Puma'), ('Reebok');

  -- Relacionar personas con zapatillas
  INSERT INTO people_sneakers(id_people, id_sneakers)
  VALUES 
  -- Una persona con todas las zapatillas
  -- Maria tiene todas las zapatillas
    (1, 1), (1, 2), (1, 3), (1, 4),
  -- Personas con algunas zapatillas
  -- Pedro, Ana, Luis tienen algunas zapatillas
    (2, 1), (2, 2), (2, 3),
    (3, 1), (3, 2),
    (4, 1), (4, 2),
    (4, 1);
  -- Personas sin zapatillas
  -- Julia no tiene zapatillas
  ```
- Hacer el Query -> probar (INNER JOIN, LEFT JOIN)
  - Opcion 1: `INNER JOIN` Y `LEFT JOIN`:

    ```sql
    -- Muestra todos las personas que tiene zapatillas
    SELECT p.name, s.brand
    FROM people AS p
     INNER JOIN people_sneakers AS ps 
     ON p.id_people = ps.id_people
     INNER JOIN sneakers AS s 
     ON ps.id_sneakers=s.id_sneakers;
    ```
    Resultado:
    ```powershell
     name  |  brand
    -------+----------
     María | Nike
     María | Adidas
     María | Converse
     María | Puma
     Pedro | Nike
     Pedro | Adidas
     Pedro | Converse
     Ana   | Nike
     Ana   | Adidas
     Luis  | Nike
    ```
  - Opcion 2: `LEFT JOIN` Y `INNER JOIN`:

    ```sql
    -- Muestra todas las personas que tiene zapatillas
    SELECT p.name, s.brand
    FROM people AS p
     LEFT JOIN people_sneakers AS ps 
     ON p.id_people = ps.id_people
     INNER JOIN sneakers AS s 
     ON ps.id_sneakers=s.id_sneakers;
    ```
    Resultado:
    ```powershell
     name  |  brand
    -------+----------
     María | Nike
     María | Adidas
     María | Converse
     María | Puma
     Pedro | Nike
     Pedro | Adidas
     Pedro | Converse
     Ana   | Nike
     Ana   | Adidas
     Luis  | Nike
    ```

  - Opcion 3: `INNER JOIN` Y `LEFT JOIN`:

    ```sql
    -- Muestra todas las personas que tiene zapatillas
    SELECT p.name, s.brand
    FROM people AS p
     INNER JOIN people_sneakers AS ps 
     ON p.id_people = ps.id_people
     LEFT JOIN sneakers AS s 
     ON ps.id_sneakers=s.id_sneakers;
    ```
    Resultado:
    ```powershell
     name  |  brand
    -------+----------
     María | Nike
     María | Adidas
     María | Converse
     María | Puma
     Pedro | Nike
     Pedro | Adidas
     Pedro | Converse
     Ana   | Nike
     Ana   | Adidas
     Luis  | Nike
    ```
  - Opcion 4: `LEFT JOIN` Y `LEFT JOIN`:
    ```sql
    -- Muestra todas la personas que tinen zapatillas y las que no tinen
    SELECT p.name, s.brand
    FROM people AS p
     LEFT JOIN people_sneakers AS ps 
     ON p.id_people = ps.id_people
     LEFT JOIN sneakers AS s 
     ON ps.id_sneakers=s.id_sneakers;
    ```
    Resultado:
    ```powershell
     name  |  brand
    -------+----------
     María | Nike
     María | Adidas
     María | Converse
     María | Puma
     Pedro | Nike
     Pedro | Adidas
     Pedro | Converse
     Ana   | Nike
     Ana   | Adidas
     Luis  | Nike
     Julia |
    ```
- Query de todas las personas que no tengan zapatillas.

  ```sql
  -- Muestra todas las personas que no tengan zapatillas
  SELECT p.name, s.brand
  FROM people AS p
   LEFT JOIN people_sneakers AS ps ON p.id_people = ps.id_people
   LEFT JOIN sneakers AS s ON ps.id_sneakers=s.id_sneakers
  WHERE ps.id_sneakers IS NULL;
  ```
  Resultado:
  ```powershell
   name  | brand
  -------+-------
   Julia |
  ```
