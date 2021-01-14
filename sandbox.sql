USE employees;

SELECT first_name, LENGTH(first_name)
FROM employees
ORDER BY LENGTH(first_name), first_name
LIMIT 1;