--soal no 1 tampilkan name dari karyawan berserta dapartemenNAME mereka hanya untuk karyawanyang terdaftar dalam departemen--
SELECT Employee.Name AS EmployeeName, Departments.DepartmentName AS DepartmentName
FROM Employee
INNER JOIN Departments ON Employee.DepartmentsID = Departments.DepartmentsID;
