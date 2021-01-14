USE employees;
SHOW TABLES;
DESCRIBE titles;

SELECT DISTINCT title
FROM titles;

SELECT last_name AS 'starts and ends with e'
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY `starts and ends with e`;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%'
GROUP BY last_name;

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE 'e%e' OR last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(*) AS amount_of_male_female, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
