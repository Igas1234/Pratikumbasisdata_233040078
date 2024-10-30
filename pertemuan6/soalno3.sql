-- soal no 3 tampilkan semua projectName beserta dapartementNAME departemen yang bertanggung jawab atas proyektersebut.sertakan semua proyek,meskipun tidak ada departemen yang terhubung--
SELECT Projects.ProjectName AS ProjectName, Departments.DepartmentName AS DepartmentName
FROM Projects
LEFT JOIN Departments ON Projects.DepartmentsID = Departments.DepartmentsID;
