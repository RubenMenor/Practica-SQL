--AND OR NOT--

--and
SELECT * FROM users 
WHERE name='Carlos'
AND email LIKE '%gmail%';

--or
SELECT * FROM users 
WHERE name='Carlos'
OR email LIKE '%hotmail%';

--not
SELECT * FROM users 
WHERE NOT email='%gmail.com'; 

SELECT * FROM users 
WHERE NOT email='%gmail%'; 