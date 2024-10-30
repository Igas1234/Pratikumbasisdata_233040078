--soal no 7 tampilkan name dari setiap karyawan beserta departemenname dari departemen mereka ,tanpa harus menentukan kolom join secara eksplisit--

SELECT Employee.Name AS EmployeeName, Departments.DepartmentName
FROM Employee, Departments
WHERE Employee.DepartmentsID = Departments.DepartmentsID;
