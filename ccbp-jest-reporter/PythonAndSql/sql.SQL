

1. Select * from Employee e WHERE e.EmployeeId in (Select es.EmplpoyeeId from Emp Salary es es.Salary =
(SELECT MAX(es.Salary) FROM Emp Salary es1 WHERE es1.Salary < (SELECT MAX(SALARY) FROM Employee)); 




2. Select * from Employee where ReportingTo = (Select e.EmployeeId from Employee e where e.Name = "KAYLING"); 



3. Select * from Employee where ReportingTo = (Select e.EmployeeId from Employee e 
where e.ReportingTo = (Select e1.EmployeeId from Employee e1 where e1.Name = "KAYLING")); 


 5. Select * from Employee e WHERE e.EmployeeId in (Select es.EmplpoyeeId from Emp Salary es es.Salary =
(SELECT MAX(Salary) FROM Emp Salary WHERE Salary < (SELECT MAX(Salary) FROM Emp Salary  WHERE Salary < (SELECT MAX(Salary) FROM Emp Salary))));


6. SELECT Name, Salary 
FROM (SELECT Name, Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) as Rank 
      FROM EmpSalary) as RankedSalary
WHERE Rank = 3;

7. SELECT d.DesignationName, MEDIAN(e.Salary) AS MedianSalary
FROM EmpSalary e
JOIN Designation d ON e.EmployeeId = d.DesignationId
GROUP BY d.DesignationName; 

8. WITH RankedSalary AS (
    SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) as DescRank,
           DENSE_RANK() OVER (ORDER BY Salary ASC) as AscRank
    FROM EmpSalary
)
SELECT MEDIAN(Salary) as MedianSalary
FROM RankedSalary
WHERE DescRank = 2 OR AscRank = 2; 

