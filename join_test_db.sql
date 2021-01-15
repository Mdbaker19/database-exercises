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
('mike', 'mike@example.com', null),
('ran', 'ran@example.com', null),
('author1', 'first@example.com', 2),
('author2', 'second@example.com', 2),
('author3', 'third@example.com', 2);

SELECT * FROM roles;
SELECT * FROM users;

SELECT users.name, roles.name
FROM users
JOIN roles
    ON users.role_id = roles.id;

SELECT users.name, roles.name
FROM users
LEFT JOIN roles on users.role_id = roles.id;

SELECT users.name, roles.name
FROM users
RIGHT JOIN roles
    ON users.role_id = roles.id;