--Backup File

	BACKUP DATABASE [EmployeeManagementSystem] 
	TO  DISK = N'C:\Syam_DB_Backups\EmployeeManagementSystem.bak'
	WITH NOFORMAT,
	NOINIT,  
	NAME = N'EmployeeManagementSystem-Full Database Backup',
	SKIP,
	NOREWIND, 
	NOUNLOAD,  
	STATS = 10
	GO

--Restore File

	USE [master]
	RESTORE DATABASE [EmployeeManagementSystem]
	FROM  DISK = N'C:\Syam_DB_Backups\EmployeeManagementSystem.bak'
	WITH  FILE = 1, 
	NOUNLOAD, 
	STATS = 5
	GO



