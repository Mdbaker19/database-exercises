USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS '5 employees born christmas in the 90s'
FROM employees
WHERE birth_date LIKE '%12-25'
AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

SELECT CONCAT(first_name, ' ', last_name) AS '5 employees born christmas in the 90s'
FROM employees
WHERE birth_date LIKE '%12-25'
  AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;