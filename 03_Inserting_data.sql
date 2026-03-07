--Inserting data

		--Department

		INSERT INTO Departments
		(DepartmenetName)
		VALUES
		('IT'),
		('HR'),
		('Finance'),
		('marketing');

		SELECT * FROM Departments;

		--Empoyess data

		INSERT INTO Employees
		(FirstName,LastName,Email,Phone,HireDate,Salary,DepartmentID)
		VALUES
		('Syam','Chilukoti','syamchilukoti01@gmail.com','6305569445','05-07-2025',150000.544,2),
		('sundar','Prasad','sundarp@gmail.com','6354789525','10-07-2023',100000.32,4),
		('Vithal','kumar','vithal@gmail.com','7572547657','11-02-2025',70000.12,1),
		('Ramesh','babu','ramesh423@gmail.com','7853321447','12-05-2022',50000.78,3);

		SELECT * FROM Employees;

		--Attandance data

		INSERT INTO Attandance
		(EmployeeID,AttandanceDate,status)
		VALUES
		(1,'2003-07-19','Present'),
		(2,'2003-07-20','Absent'),
		(3,'2005-08-10','Present'),
		(4,'2026-03-05','Absent');

		SELECT * FROM Attandance;