--soal ke 5 tampilkan semua kombinasi antara name karyawan dan projectname proyek--
SELECT Employee.Name AS EmployeeName, Projects.ProjectName AS ProjectName
FROM Employee
CROSS JOIN Projects;
