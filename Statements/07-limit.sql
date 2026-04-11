--LIMIT--

--limita los resultados que queremos

SELECT * FROM users 
WHERE name='Carlos'
OR email LIKE '%gmail%' 
LIMIT 2;