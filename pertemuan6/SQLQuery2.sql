CREATE TABLE Departments (
    DepartmentsID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Projects (
    ProjectsID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    DepartmentsID INT,
    FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentsID INT,
    ManagerID INT,
    FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID),
    FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Salaries (
    EmployeeID INT,
    Salaries DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);



DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Salaries;

DROP TABLE IF EXISTS Projects;

DROP TABLE IF EXISTS Departments;

use pertemuan6;


