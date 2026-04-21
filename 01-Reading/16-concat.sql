--CONCAT--

--une tablas en una sola y con el AS visto anterior mente le damos un nuevo nombre
SELECT concat('Nombre: ', name, ' ', 'Apellido: ', surname)AS 'Nombre Completo' FROM users;