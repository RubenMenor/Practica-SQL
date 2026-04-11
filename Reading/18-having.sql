--HAVING--

--limitacion sobre una columna agregada que nosotros estamos definiendo
SELECT COUNT(age) FROM users HAVING COUNT(age) > 3;

--no se utiliza mucho pero va bastante con el GROUP BY