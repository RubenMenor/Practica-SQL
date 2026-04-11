--UPDATE--

--a parte de UPDATE tambien es necesario el SET
UPDATE users SET age = 21 WHERE user_id = 8 
--acordarse (casi)siempre el UPDATE con el WHERE, si no la podriamos liar parda

UPDATE users SET age = 21, init_date = '2025-05-15' WHERE user_id = 8 