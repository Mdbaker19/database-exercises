USE employees;

SELECT first_name, last_name, birth_date
FROM employees
ORDER BY last_name DESC, first_name, birth_date;
# ASC is a default ORDER BY
# GOES IN PRIORITY ORDER
# birth_date is not really in order here as it is later in priority

# sort in reverse alphabetical order with desc WHILE the first names are in alphabetical order
# order with ASC IS DEFAULT

SELECT first_name, last_name, birth_date
FROM employees
ORDER BY birth_date;

# this is an enum data type in the table, enum('M', 'F') so M comes first
SELECT * FROM employees
ORDER BY gender;