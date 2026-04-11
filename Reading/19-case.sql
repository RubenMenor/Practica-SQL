--CASE--

--Es un poco parecido a la programacion (if else)
SELECT *,
CASE
	WHEN age > 17 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS 'Mayoria de edad'
FROM users;

--incluso se podria hacer que nos de un boolean
SELECT *,
CASE
	WHEN age > 17 THEN true
    ELSE 'Es menor de edad'
END AS false
FROM users;

--se le puede añadir mas detalles
SELECT *,
CASE
	WHEN age < 17 THEN 'Es menor de edad'
    WHEN age = 19 THEN 'eres un poco marica'
    ELSE 'Es mayor de edad'
END AS 'Mayoria de edad'
FROM users;