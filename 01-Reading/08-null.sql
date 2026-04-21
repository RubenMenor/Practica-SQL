--NULL--

--mustra los campos que esten en null
SELECT * FROM users 
WHERE init_date IS NULL;

--tambien se le puede indicar que muestre los campos qu eno esten en null
SELECT * FROM users 
WHERE init_date IS NOT NULL;


--con el IFNULL decimos "si hay un campo en NULL pon por defecto esto->()" en este caso 'Cataplasma'
SELECT name, IFNULL(surname, 'Cataplasma') AS surname FROM users;