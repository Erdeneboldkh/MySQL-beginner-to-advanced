-- Stored Procedures

SELECT*
FROM employee_salary
WHERE SALARY>=50000;

CREATE PROCEDURE large_salaries()
SELECT*
FROM employee_salary
WHERE SALARY>=50000;
CALL large_salaries();


DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT*
	FROM employee_salary
	WHERE SALARY>=50000;
	SELECT*
	FROM employee_salary
	WHERE SALARY>=10000;
END $$
DELIMITER ;
CALL large_salaries3();


DELIMITER $$
CREATE PROCEDURE large_salaries4(P_EMPLOYEE_ID INT)
BEGIN
	SELECT SALARY
	FROM employee_salary
    WHERE EMPLOYEE_ID=P_EMPLOYEE_ID
    ;
END $$
DELIMITER ;
CALL large_salaries4(1);