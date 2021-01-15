/*

SELECT column_a, column_b, column_c
FROM table_a
WHERE column_a IN (
    SELECT column_a
    FROM table_b
    WHERE column_b = true
);




joins : often used when data is needed from two or more tables
nested query needs to start with select
tend to be faster than sub queries
syntax can be more complex


sub queries : often used when the data



*/


USE employees;

SELECT * FROM salaries;


SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;



# FIND THE INFORMATION FOR THE DEPARTMENTS WHERE THE DEPARTMENT IS 'CUSTOMER SERVICE'

#     FIND THE DEPARTMENT NUMBER FOR CUSTOMER SERVICE

# SELECT dept_no FROM departments WHERE dept_name = 'Customer Service'

SELECT * FROM departments WHERE dept_no = (
    SELECT dept_no FROM departments WHERE dept_name = 'Customer Service'

);


# SALES DEPARTMENT MANAGER EMPLOYEE NUMBER

SELECT emp_no
FROM dept_manager
WHERE dept_no IN (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
    )
AND to_date > NOW();

# CONCATENATE THE FIRST TWO EMPLOYEE'S HIGHEST SALARIES

SELECT CONCAT(
    (
        SELECT MAX(salary)
        FROM salaries
        WHERE emp_no = 10001
    ), ' ',
    (
        SELECT MAX(salary)
        FROM salaries
        WHERE emp_no = 10002
    )
           );

# FIND THE FIRST NAME AND THE LAST NAME OF ALL DEPARTMENT MANAGERS

SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS name
FROM employees AS emp
JOIN dept_manager dm
    ON emp.emp_no = dm.emp_no;

# NOW AS A SUBQUERY

SELECT CONCAT(first_name, ' ', last_name) AS name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    );