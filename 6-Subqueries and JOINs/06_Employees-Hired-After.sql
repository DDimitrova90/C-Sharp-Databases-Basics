SELECT e.FirstName, e.LastName, e.HireDate, d.Name AS DeptName 
FROM Employees AS e
INNER JOIN Departments AS d
ON e.DepartmentID = d.DepartmentID
WHERE e.HireDate > '1999-01-01'
AND (d.Name = 'Sales' OR d.Name = 'Finance')
ORDER BY e.HireDate

/*
SELECT e.FirstName, e.LastName, e.HireDate, d.Name AS DeptName 
FROM Employees AS e
INNER JOIN Departments AS d
ON e.DepartmentID = d.DepartmentID
AND e.HireDate > '1999-01-01'
AND d.Name IN ('Sales', 'Finance')
ORDER BY e.HireDate
*/