USE EmployeeManagementSystem;

--index
		EXEC sp_helpindex 'Employees';

	SELECT * FROM EMPLOYEES;

--Table Size and Rows

		EXEC sp_spaceused 'Employees';
--Missing index

		SELECT *
		FROM sys.dm_db_missing_index_details;

--index fragmentation

SELECT *
FROM sys.dm_db_index_physical_stats
(DB_ID(), OBJECT_ID('Employees'), NULL, NULL, 'DETAILED');

--Improve Performance

	ALTER INDEX ALL
	ON Employees
	REBUILD;

--Query Execution

	SELECT * 
	FROM Employees
	WHERE Email = 'syamchilukoti01@gmail.com';

	SELECT * 
	FROM Employees
	WHERE Email = 'sundarp@gmail.com';