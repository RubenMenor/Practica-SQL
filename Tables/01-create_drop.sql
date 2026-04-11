--CREATE TABLE--

/* 
--RESTRICCIONES--

01- NOT NULL
    No se puede dejar un valor en NULL, es obligatorio especificarlo

02- UNIQUE
    No permite que haya dos valores iguales, lo que los hace unicos

03- AUTO_INCREMENT
    incrementa automaticamente el siguiente valor que añadamos

04- PRIMARY KEY
    El identificador o clave principal de la tabla (asigna automaticamente el UNIQUE)

05- FOREING KEY
    El identificador principal de otra tabla

06- CHECK
    Añade una restriccion a la tabla (Por ejemplo: "CHECK ('age' >= 18)" no permite que se añadan usuarios menores de 18)

07- DEFAULT
    Siempre añadira un dato por defecto si no a sido especificado

*/

CREATE TABLE IF NOT EXISTS persons (
	id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(50),
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY(id), CHECK ('age' >= 18)
);


--DROP TABLE--

DROP TABLE persons;