--ALTER--

--add
ALTER TABLE persons 
ADD surname varchar(150);

--rename
ALTER TABLE persons 
RENAME COLUMN surname TO description;

--modify
ALTER TABLE persons
MODIFY COLUMN description varchar(100);

--drop
ALTER TABLE persons
DROP COLUMN description;