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