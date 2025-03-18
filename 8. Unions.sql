-- Unions

SELECT first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM employee_salary;


SELECT first_name, last_name, "Old man" AS label
FROM employee_demographics
WHERE age > 50 AND gender = "Male"
UNION
SELECT first_name, last_name, "Old lady" AS label
FROM employee_demographics
WHERE age > 40 AND gender = "Female"
UNION
SELECT first_name, last_name, "High Paid Ppl" AS label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name;
