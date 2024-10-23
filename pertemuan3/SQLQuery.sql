-- 1.Menggunakan Tabel HR.Employees, tulis pernyataan SELECT yang mengembalikan gender untuk setiap karyawan berdasarkan titel kesopanan. Berupa 'Ms.' dan 'Mrs.’ untuk ‘female’, ‘Mr.’ unruk ‘Male’ dan dalam semua kasus lain (misalnya, 'Dr.') mengembalikan 'Unknown’:
SELECT 
    empid, 
    firstname, 
    lastname, 
    titleofcourtesy, 
    CASE 
        WHEN titleofcourtesy IN ('Ms.', 'Mrs.') THEN 'Female'
        WHEN titleofcourtesy = 'Mr.' THEN 'Male'
        ELSE 'Unknown'
    END AS gender
FROM 
    HR.Employees;

--2.munculkan pelanggan AS, dan untuk setiap pelanggan kembalikan jumlah total pesanan dan jumlah total:
--  table yang digunakan: Sales.Customers, Sales.Orders, and Sales.OrderDetails

SELECT 
    c.custid, 
    COUNT(o.orderid) AS numorders, 
    SUM(od.quantity) AS totalqty
FROM 
    Sales.Customers AS c
LEFT JOIN 
    Sales.Orders AS o ON c.custid = o.custid
LEFT JOIN 
    Sales.OrderDetails AS od ON o.orderid = od.orderid
GROUP BY 
    c.custid;

-- 3. Mengembalikan pelanggan dan pesanan mereka, termasuk pelanggan yang tidak melakukan pemesanan
SELECT 
    c.custid, 
    c.companyname, 
    o.orderid, 
    o.orderdate 
FROM 
    Sales.Customers AS c 
LEFT JOIN 
    Sales.Orders AS o ON c.custid = o.custid;

-- 4. 4.	Munculkan pelanggan dan pesanan mereka, termasuk pelanggan yang tidak melakukan pemesanan:
--table yang digunakan: Sales.Customers and Sales.Orders

SELECT 
    orderid, 
    orderdate, 
    custid, 
    empid 
FROM 
    Sales.Orders 
WHERE 
    orderdate = (SELECT MAX(orderdate) FROM Sales.Orders);

-- 5. Mengembalikan karyawan yang tidak melakukan pemesanan pada atau setelah 1 Mei 2016
SELECT 
    e.empid, 
    e.firstname, 
    e.lastname 
FROM 
    HR.Employees AS e 
WHERE 
    e.empid NOT IN (SELECT o.empid FROM Sales.Orders o WHERE o.orderdate >= '2016-05-01');