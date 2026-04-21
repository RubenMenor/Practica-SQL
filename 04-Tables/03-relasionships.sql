--RELASIONSHIPS

create table if not exists users (
	user_id int unique auto_increment primary key,
    name varchar(50) not null,
    surname varchar(100),
    age INT,
    init_date DATE,
    email varchar(100)
);

--RELACION 1:1
create table dni (
	dni_id int auto_increment primary key unique,
    dni_number int not null,
    user_id int,
    foreign key(user_id) references users(user_id)
);

--RELACION 1:N
create table companies (
	company_id int auto_increment primary key,
    name varchar(100) not null
);

ALTER TABLE users
ADD company_id int;

ALTER TABLE users 
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);

--RELACION N:M
create table lenguajes (
	lenguajes_id int auto_increment primary key,
    name varchar(100) not null
);

--Tabla intermedia
create table user_lenguajes (
	user_lenguajes_id int auto_increment primary key,
    user_id int not null,
    lenguajes_id int not null,
    foreign key(user_id) references users(user_id),
    foreign key(lenguajes_id) references lenguajes(lenguajes_id),
    unique(user_id, lenguajes_id)
);



--INSERT--

INSERT INTO dni (dni_number, user_id) VALUES (12345678, 1);
INSERT INTO dni (dni_number, user_id) VALUES (87654321, 2);
INSERT INTO dni (dni_number, user_id) VALUES (18273645, 3);
INSERT INTO dni (dni_number) VALUES (81726354);

INSERT INTO companies (name) VALUES ('BohemianDev');
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');

INSERT INTO lenguajes (name) VALUES ('Swift');
INSERT INTO lenguajes (name) VALUES ('Kotlin');
INSERT INTO lenguajes (name) VALUES ('JavaScript');
INSERT INTO lenguajes (name) VALUES ('Java');
INSERT INTO lenguajes (name) VALUES ('Python');
INSERT INTO lenguajes (name) VALUES ('C#');
INSERT INTO lenguajes (name) VALUES ('COBOL');

INSERT INTO user_lenguajes (user_id, lenguajes_id) VALUES (1, 1);
INSERT INTO user_lenguajes (user_id, lenguajes_id) VALUES (1, 2);
INSERT INTO user_lenguajes (user_id, lenguajes_id) VALUES (1, 5);
INSERT INTO user_lenguajes (user_id, lenguajes_id) VALUES (2, 3);
INSERT INTO user_lenguajes (user_id, lenguajes_id) VALUES (2, 5);

--UPDATE--

UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 4;
UPDATE users SET company_id = 1 WHERE user_id = 7;