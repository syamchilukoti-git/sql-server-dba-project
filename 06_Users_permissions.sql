USE [EmployeeManagementSystem]
GO

CREATE LOGIN Vithal 
WITH
PASSWORD = '19072003';
USE [EmployeeManagementSystem]


CREATE USER [Vithal] FOR LOGIN [19072003]
GO

use [EmployeeManagementSystem]
GO
GRANT ALTER ON [dbo].[Employees] TO [Vithal]
GO
use [EmployeeManagementSystem]
GO
GRANT CONTROL ON [dbo].[Employees] TO [Vithal]
GO
use [EmployeeManagementSystem]
GO
GRANT DELETE ON [dbo].[Employees] TO [Vithal]
GO
use [EmployeeManagementSystem]
GO
GRANT INSERT ON [dbo].[Employees] TO [Vithal]
GO
use [EmployeeManagementSystem]
GO
GRANT REFERENCES ON [dbo].[Employees] TO [Vithal]
GO
use [EmployeeManagementSystem]
GO
GRANT SELECT ON [dbo].[Employees] TO [Vithal]
GO
use [EmployeeManagementSystem]
GO
GRANT TAKE OWNERSHIP ON [dbo].[Employees] TO [Vithal]
GO
use [EmployeeManagementSystem]
GO
GRANT UNMASK ON [dbo].[Employees] TO [Vithal]
GO
use [EmployeeManagementSystem]
GO
GRANT UPDATE ON [dbo].[Employees] TO [Vithal]
GO
use [EmployeeManagementSystem]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Employees] TO [Vithal]
GO
use [EmployeeManagementSystem]
GO
GRANT VIEW DEFINITION ON [dbo].[Employees] TO [Vithal]
GO

EXEC sp_helprotect 'Employees';

CREATE SCHEMA HR;

ALTER SCHEMA HR
TRANSFER dbo.Employees;

ALTER SCHEMA HR
TRANSFER dbo.Departments;

ALTER SCHEMA HR
TRANSFER dbo.Attandance;

ALTER SCHEMA dbo
TRANSFER HR.Employees;

ALTER SCHEMA DBO
TRANSFER HR.Departments;

ALTER SCHEMA dbo
TRANSFER HR.Attandance;

DROP SCHEMA HR;