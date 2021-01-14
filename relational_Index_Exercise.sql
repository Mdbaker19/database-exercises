USE albums;

DESCRIBE albums;

SHOW TABLES;


DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    artist VARCHAR(128),
    name VARCHAR(128),
    release_date INT,
    sales FLOAT,
    genre VARCHAR(50)
);


SHOW INDEX FROM albums;

ALTER TABLE albums
ADD UNIQUE `album_key` (artist, name);

SELECT * FROM albums;

# can not enter a duplicate entry with a matching album_key pair
INSERT INTO albums (artist, name)
VALUES ('Avenged Sevenfold', 'City of Evil');










# SHOW TABLES;
#
# DESCRIBE departments;
# SHOW INDEX FROM departments;
#
# DESCRIBE dept_manager;
#
# DESCRIBE dept_emp;
#
# DESCRIBE employees;
#
# DESCRIBE salaries;
#
# DESCRIBE titles;
#
# SELECT * FROM employees;