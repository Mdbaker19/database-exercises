USE employees;

DESCRIBE employees;

SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

# SELECT hire_date FROM employees;
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT birth_date FROM employees;
SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';