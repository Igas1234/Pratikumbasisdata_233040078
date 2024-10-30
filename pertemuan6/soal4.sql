SELECT e.Name, s.Salaries FROM dbo.Employee e
FULL JOIN dbo.Salaries s ON e.EmployeeID = s.EmployeeID