use employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) as fullname, e.hire_date
FROM employees as e
WHERE e.hire_date IN (
    SELECT e.hire_date
    FROM employees as e
    Where e.emp_no = 101010);

SELECT t.title as Titles, Count(*)
FROM titles as t
         JOIN employees as e
              ON t.emp_no = e.emp_no
WHERE e.first_name IN (
    SELECT e.first_name
    FROM employees as e
    Where e.first_name = 'Aamod')
Group BY Titles;

SELECT e.first_name, e.last_name, e.gender
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
WHERE e.gender IN (
    SELECT e.gender
    FROM employees as e
    where e.gender = 'F'
      AND dm.to_date = '9999-01-01')
GROUP BY e.first_name, e.last_name, e.gender;