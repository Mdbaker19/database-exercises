CREATE TABLE IF NOT EXISTS transactions (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    date DATE,
    description VARCHAR(255),
    amount DECIMAL(10, 2),
    PRIMARY KEY (id)
--     primary key is the fastest way to access that one record in a table , key must be unique
--     add extra benefit to relational connection to other tables
);

ALTER TABLE transactions AUTO_INCREMENT = 1000;
-- starting point of 1000 not increment by 1000 each;

-- INSERT INTO transactions ( id, date, description, amount ) VALUES ( 0, this date, toy, 10.50 );
-- id's typically not assigned as it is just added one by one with the primary key as id and the auto increment

CREATE TABLE IF NOT EXISTS items (
    id INT(11),
--     int() 11 total number spots, width of the column in the table
    price DECIMAL(10, 2),
    description VARCHAR(255),
    name VARCHAR(255),
    category VARCHAR(128)
--     comment
);

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL,
    is_admin TINYINT NOT NULL DEFAULT 0,
-- tiny int is boolean value => 1 true, 0 false
    zipcode CHAR(15) DEFAULT '12345'
);

CREATE TABLE IF NOT EXISTS blog_post (
    id INT,
    title VARCHAR(100) NOT NULL DEFAULT 'unknown',
    post TEXT
);

--     Possible Combinations of NULL and DEFAULT values:
--     num_1... NOT NULL | DEFAULT VALUE OF 0 | TYPE = NUMBER
--       Upon inserting no value... value was 0
--       Upon inserting null... ERROR
--     num_2... NOT NULL | DEFAULT VALUE OF 1 | TYPE = NUMBER
--       Upon inserting no value... value was 1
--       Upon inserting null... ERROR
--     num_3... NULL | DEFAULT VALUE OF 1 | TYPE = NUMBER
--       Upon inserting no value... value was 1
--       Upon inserting null... value was null
--     num_4... NOT NULL | NO DEFAULT | TYPE = NUMBER
--       Upon inserting no value... ERROR not allowed
--       Upon inserting null... ERROR not allowed
--     num_5... NULL | NO DEFAULT | TYPE = NUMBER
--       Upon inserting no value... value is null
--       Upon inserting null... value is null
