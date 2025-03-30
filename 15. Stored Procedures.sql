-- Store Procedures

SELECT *
FROM employee_salary
WHERE salary >= 50000;



CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries()



DELIMITER $$
CREATE PROCEDURE large_salaries4()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries4();

DELIMITER $$
CREATE PROCEDURE large_salaries5(employee_id INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = employee_id
    ;
END $$
DELIMITER ;

CALL large_salaries5(1);

DELIMITER $$
CREATE PROCEDURE large_salaries7( employee_id INT )
BEGIN 
	SELECT salary 
    FROM employee_salary
    WHERE employee_id = employee_id
	;
END $$ 
DELIMITER ;
CALL large_salaries7(1)
