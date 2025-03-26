-- Temporary Tables

CREATE TEMPORARY TABLE temp_table
(
first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

SELECT *
FROM temp_table
;
INSERT INTO temp_table
VALUE("Keo","Freberg","Lord of the ring: The Two Towers");

SELECT *
FROM temp_table
;

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;





