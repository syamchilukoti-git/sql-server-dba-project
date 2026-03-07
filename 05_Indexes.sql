USE EmployeeManagementSystem;


CREATE NONCLUSTERED INDEX Employees_FirstName
ON Employees (FirstName);

		EXEC sp_helpindex 'Employees';

DROP INDEX Employees_FirstName
ON Employees;

		SELECT * FROM Employees;


CREATE NONCLUSTERED INDEX Employees_Email
ON Employees (Email);

DROP INDEX Employees_Email
ON Employees;

		EXEC sp_helpindex 'Employees';

