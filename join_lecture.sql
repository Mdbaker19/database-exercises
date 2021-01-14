USE codeup_test_db;

SHOW TABLES;

DESCRIBE users;

DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS users;

CREATE TABLE roles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

SELECT * FROM roles;
SELECT * FROM users;


# does not return the null users as they do not fit this join selection
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles on users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM users
LEFT JOIN roles on users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM users
RIGHT JOIN roles on users.role_id = roles.id;



/*
 ----- from the pets and owner tables
SELECT pets.name, owners.address
FROM pets
JOIN owners ON pets.owner_id = owner.id;


 list number of pets at each address

 counting the amount of times that address from that owner shows up in the query
 grouped so they are only displaying the unique instances

 SELECT owners.address, COUNT(owners.address) FROM pets
 JOIN owners ON owners.id = pets.owner_id
 GROUP BY owners.address;



*/