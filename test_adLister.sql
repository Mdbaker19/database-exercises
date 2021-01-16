# use adlist;
drop table if exists ad_category;
drop table if exists category;
drop table if exists ad;
drop table if exists users;
# create table users (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     email VARCHAR(30) NOT NULL,
#     pass VARCHAR(30) NOT NULL,
#     PRIMARY KEY (id)
# );
# create table ad (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     title VARCHAR(255) NOT NULL,
#     description text,
#     user_id INT UNSIGNED DEFAULT NULL,
#     primary key (id),
#     foreign key (user_id) references users (id)
# );
# create table ad_category (
#     id INT UNSIGNED NOT NULL,
#     ad_id INT UNSIGNED NOT NULL,
#     foreign key (ad_id) references ad (id)
# );
# create table category (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     name VARCHAR(255) NOT NULL,
#     primary key (id),
#     foreign key (id) references ad_category (ad_id)
# );
#
#
# INSERT INTO users(email, pass) values ('matt', 'password');
# INSERT INTO ad(title, description, user_id) values ('sale', 'big sale', 1);
# # INSERT INTO ad_category()
#
# SELECT * FROM users;
# SELECT * FROM ad;




CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE ad(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    user_id INT UNSIGNED,
    FOREIGN KEY (user_id) references users (id)
);

CREATE TABLE category(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE ad_category(
    ad_id INT UNSIGNED,
    category_id INT UNSIGNED,
    FOREIGN KEY (ad_id) references ad (id),
    FOREIGN KEY (category_id) references category (id)
);

INSERT INTO users(email, password) VALUES ('matt@matt.matt', 'password1');
INSERT INTO users(email, password) VALUES ('mandy@dog.cat', 'password2');

DESCRIBE users;
SELECT * FROM users;

INSERT INTO ad(title, description, category, user_id) VALUES ('looking for animal', 'want to buy', 'looking for', 2);
INSERT INTO ad(title, description, category, user_id) VALUES ('for sale bike', 'bike for sale', 'sales', 1);
INSERT INTO ad(title, description, category, user_id) VALUES ('for sale car', 'car for sale', 'sales', 1);

DESCRIBE ad;
SELECT * FROM ad;

INSERT INTO category(name) VALUES ('sale');
INSERT INTO category(name) VALUES ('looking for');

DESCRIBE category;
SELECT * FROM category;

INSERT INTO ad_category(ad_id, category_id) VALUES(1, 2);
INSERT INTO ad_category(ad_id, category_id) VALUES(2, 1);
INSERT INTO ad_category(ad_id, category_id) VALUES(3, 1);

DESCRIBE ad_category;
SELECT * FROM ad_category;