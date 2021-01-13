USE employees;

# displays the data as what is in the select, creating an alias and displaying the data together in a column
SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Full Name'
FROM employees;

# FIND ALL LAST NAMES WHERE STARTS WITH 'A' AND ENDS WITH AN 'a'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'A%a';

# case insensitive doc
# https://dev.mysql.com/doc/refman/5.7/en/case-sensitivity.html

# RETURNS CURR DATE-TIME
SELECT NOW();

# RETURNS CURR DATE
SELECT CURDATE();

# RETURNS CURR TIME
SELECT CURTIME();
