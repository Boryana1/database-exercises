USE employees;

# In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title FROM titles;

# Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%e';

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'E%e';

# Find the unique last names with a 'q' but not 'qu'.
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT COUNT(*) AS 'NUMBER OF NAMES', last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name ORDER BY COUNT(last_name) DESC ;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
SELECT COUNT(*) AS 'NUMBER OF EMPLOYEES OF MATCHING FIRST NAME', gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;
