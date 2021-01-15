USE employees;

DESCRIBE employees;

SELECT dept_name AS Department_Name, CONCAT(emp.first_name, ' ', emp.last_name) AS Department_Manager
FROM departments AS dept
JOIN dept_manager AS dmng
    ON dept.dept_no = dmng.dept_no
JOIN employees AS emp
        ON dmng.emp_no = emp.emp_no
WHERE dmng.to_date = '9999-01-01'
ORDER BY dept.dept_name;






SELECT dept_name AS Department_Name, CONCAT(emp.first_name, ' ', emp.last_name) AS Manager_Name
FROM departments AS dept
JOIN dept_manager AS dm
    ON dept.dept_no = dm.dept_no
JOIN employees emp
    ON dm.emp_no = emp.emp_no
WHERE emp.gender = 'F' AND dm.to_date = '9999-01-01'
ORDER BY dept.dept_name;







SELECT DISTINCT dept_name FROM departments;

SELECT DISTINCT title from titles;

SELECT title AS Title, COUNT(title)
FROM titles
LEFT JOIN employees AS emp ON titles.emp_no = emp.emp_no
LEFT JOIN dept_manager AS dm ON emp.emp_no = dm.emp_no
LEFT JOIN departments AS d on dm.dept_no = d.dept_no
# WHERE titles.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
# WHERE d.dept_name = 'Customer Service'
WHERE titles.to_date = '9999-01-01'
GROUP BY title;









SELECT DISTINCT dept_name, CONCAT(emp.first_name, ' ', emp.last_name), s.salary
FROM departments AS dpt
JOIN dept_manager dm
    ON dpt.dept_no = dm.dept_no
JOIN employees emp
    ON dm.emp_no = emp.emp_no
JOIN titles t
    on emp.emp_no = t.emp_no
JOIN salaries s
    on emp.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01' AND t.title = 'Manager'
GROUP BY dept_name, CONCAT(emp.first_name, ' ', emp.last_name), s.salary;











-- 3. Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees AS e
         JOIN dept_manager AS m
              ON m.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = m.dept_no
WHERE m.to_date > NOW()
  AND e.gender = 'F'
ORDER BY d.dept_name;

-- 4. Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS "Title", COUNT(*) AS "Count"
FROM departments AS d
         JOIN dept_emp AS de
              ON de.dept_no = d.dept_no
         JOIN titles AS t
              ON t.emp_no = de.emp_no
WHERE de.to_date > NOW()
  AND t.to_date > NOW()
  AND d.dept_name = 'Customer Service'
GROUP BY t.title;


-- 5. Find the current salary of all current managers.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Manager', s.salary
FROM salaries AS s
         JOIN dept_manager AS m
              ON m.emp_no = s.emp_no
         JOIN employees AS e
              ON e.emp_no = m.emp_no
         JOIN departments AS d
              ON d.dept_no = m.dept_no
WHERE m.to_date > NOW()
  AND s.to_date > NOW()
ORDER BY d.dept_name;


-- Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(managers.first_name, ' ', managers.last_name) AS 'Manager Name'
FROM employees AS e
         JOIN dept_emp AS de
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
         JOIN dept_manager AS m
              ON m.dept_no = d.dept_no
         JOIN employees AS managers
              ON m.emp_no = managers.emp_no
WHERE de.to_date > NOW()
  AND m.to_date > NOW();
