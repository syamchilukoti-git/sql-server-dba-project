
--Employee table

	CREATE TABLE Employees (
		EmployeeID INT PRIMARY KEY IDENTITY(1,1),
		FirstName VARCHAR(10) NOT NULL,
		LastName VARCHAR(10) NOT NULL,
		Email VARCHAR(50) UNIQUE,
		Phone BIGINT NOT NULL,
		HireDate DATE,
		Salary DECIMAL(10,3),
		DepartmentID INT
		);
	
--Departmentstable

	CREATE TABLE Departments (
		DepartmentID INT PRIMARY KEY IDENTITY(1,1),
		DepartmenetName VARCHAR(50),
		);


--Attandancetable

	CREATE TABLE Attandance (
		AttandanceID INT PRIMARY KEY IDENTITY(1,1),
		EmployeeID INT,
		AttandanceDate DATE,
		Status VARCHAR(20),
		FOREIGN KEY(AttandanceID) REFERENCES Employees(EmployeeID)
		);