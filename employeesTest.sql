USE employees;

DESCRIBE employees;
SHOW TABLES;
SELECT * FROM employees;

SELECT * FROM departments WHERE dept_no = 'd009';

# can add DISTINCT to filter unique names
# in the names, 12 and 14 both Ennio so...
# if the last name is different, then the distinct will still show the first name because of the different last name

SELECT DISTINCT first_name, last_name
FROM employees
# contains er with anything on either side of it ( " % " ) wild card
# WHERE first_name LIKE '%er%';
# starts with E with anything after
WHERE first_name LIKE 'E%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Pearson', 'Luks', 'Peyn');

# FINDING EMPLOYEE NUMBERS FOR THE PEOPLE THAT ARE STILL WORKING, TO DATE IS NULL STILL EMPLOYED
SELECT emp_no
FROM titles
WHERE to_date IS NULL;