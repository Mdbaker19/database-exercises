USE employees;

DESCRIBE employees;

# SELECT first_name
# FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees;
SELECT first_name, last_name, gender
FROM employees
WHERE gender = 'M' AND (
            first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya')
ORDER BY last_name DESC, first_name;




SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%E' OR last_name LIKE 'E%';


SELECT CONCAT(first_name, ' ', last_name) AS 'EMPLOYEES WITH LAST NAME START AND END WITH E'
FROM employees
WHERE last_name LIKE '%E' AND last_name LIKE 'E%';

# SELECT hire_date FROM employees;
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

# SELECT birth_date FROM employees;
SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%12-25';




SELECT CONCAT(
    first_name, ' ', last_name,
    ' has been working ',
    datediff(NOW(), hire_date),
    ' days since they have been hired'
    )
FROM employees
WHERE birth_date LIKE '%12-25' AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date ASC, hire_date DESC;

SELECT first_name, last_name, hire_date
FROM employees
WHERE birth_date LIKE '%12-25' AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date ASC, hire_date DESC;











SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';