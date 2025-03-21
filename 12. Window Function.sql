-- Window Functions

SELECT gender, AVG(salary) AS avg_salary, dem.first_name, dem.last_name
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY dem.first_name, dem.last_name, gender;


SELECT dem.first_name, dem.last_name, AVG(salary) OVER(PARTITION BY gender) 
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
    
SELECT dem.first_name, dem.last_name, gender, salary, salary, ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC),
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank_num
FROM employee_demographics dem -- you know what? I juz bad at allign with medilore ppls
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
   

