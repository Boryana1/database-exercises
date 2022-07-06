USE employees;

# Write a query that shows each department along with the name of the current manager for that department.
SELECT departments.dept_name                                  AS department_name,
       CONCAT(employees.first_name, ' ', employees.last_name) AS department_manager
FROM employees
         JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
         JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE YEAR(dept_manager.to_date) = '9999';

# Find the name of all departments currently managed by women.
SELECT departments.dept_name                                  AS department_name,
       CONCAT(employees.first_name, ' ', employees.last_name) AS department_manager
FROM employees
         JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
         JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE YEAR(dept_manager.to_date) = '9999'
  AND gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title           AS 'Job Title',
       COUNT(dept_emp.emp_no) AS 'Number of employees'
FROM titles
         JOIN dept_emp ON dept_emp.emp_no = titles.emp_no
         JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Customer Service'
  AND YEAR(titles.to_date)
  AND YEAR(dept_emp.to_date) = '9999'
GROUP BY titles.title
ORDER BY COUNT(dept_emp.emp_no) DESC;

# Find the current salary of all current managers.
SELECT salaries.salary AS 'Manager salary',
#        COUNT(dept_emp.emp_no)                       AS 'Number of employees'
FROM salaries
         JOIN dept_emp ON dept_emp.emp_no = titles.emp_no
         JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE salaries.emp_no = dept_manager.emp_number
  AND YEAR(titles.to_date)
  AND YEAR(dept_emp.to_date) = '9999'
GROUP BY titles.title
ORDER BY COUNT(dept_emp.emp_no) DESC;