USE codeup_test_db;

DROP TABLE IF EXISTS pets;

CREATE TABLE pets
(
    id INT UNSIGNED,
    pet_name VARChAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT
);

DESCRIBE pets;

# displays all unique indentifiers / indices for our pets table (nothing at first until the alter table command ran)
SHOW INDEX FROM pets;

ALTER TABLE pets
MODIFY COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE pets
#     CAN NOT BE DROPPED AS IT IS AN AUTO INCREMENT PRIMARY KEY SO
# DROP PRIMARY KEY;

MODIFY COLUMN id INT UNSIGNED; -- remove auto increment from the id
ALTER TABLE pets
DROP PRIMARY KEY;


DROP TABLE pets;

CREATE TABLE pets
(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT
);
DESCRIBE pets;

-- ======== INDEX / KEY

SHOW INDEX FROM pets;

-- add name index

ALTER TABLE pets
ADD INDEX `pet_name_key` (pet_name);


-- ======== UNIQUE INDEX

-- create pets with unique name and owner to prevent possible duplicate entry of an owner with pet name

DROP TABLE IF EXISTS pets;

# create a unique pair of pet name with owner name
CREATE TABLE pets
(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT,
    UNIQUE unique_pet_name_on (pet_name, owner_name)
);

ALTER TABLE pets
DROP INDEX unique_pet_name_on;

SHOW INDEX FROM pets;

# ADDING A UNIQUE KEY OUTSIDE TABLE CREATION
ALTER TABLE pets
ADD UNIQUE `unique_pet_name_on` (pet_name, owner_name);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('nemo', 'matt', 2);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('sabear', 'mandy', 4);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('punks', 'matt', 7);

SELECT * FROM pets;

-- ===============   CONSTRAINT

/*

Multiple constraint types (maintains referential integrity)...

- not null
- unique
- default values
- foreign key
- primary key (combo of UNIQUE and NOT NULL constraints)

*/


-- ============ FOREIGN KEYS

DROP TABLE IF EXISTS owners;

CREATE TABLE owners (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(255) DEFAULT 'Unknown'
);

DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    age INT,
    owner_id INT UNSIGNED,
    adoption_day DATE,
    UNIQUE unique_pet_name_on (pet_name, adoption_day),
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);


SHOW TABLES;

DESCRIBE pets;
DESCRIBE owners;

SHOW INDEX FROM pets;

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('nemo', 'matt', 2);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('sabear', 'mandy', 4);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('punks', 'matt', 7);


# can not create an owner id for this pet as there is a relational connection to owner table and there is no owner yet
INSERT INTO pets(pet_name, owner_id, age)
VALUES ('pup', 1, 2);

INSERT INTO owners(name, address)
VALUES ('maatt', '112 w west wester');


SELECT * FROM pets;
SELECT * FROM owners;

# how should i drop the tables? pets first then owner