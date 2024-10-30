--tampi;kan semua 'name' dari karyawan dan proyek yang mereka kerjakan.sertakan semua karyawan. meskipun mereka tidak bekerja di proyek manapun
-- soal no 2

SELECT Employee.Name AS EmployeeName, Projects.ProjectName AS ProjectName
FROM Employee
LEFT JOIN Projects ON Employee.DepartmentsID = Projects.DepartmentsID;
