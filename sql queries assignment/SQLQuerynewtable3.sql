SELECT emp.EMPNAME, emp.EMPSALARY, dep.DeptID, dep.DeptName FROM EMPLOYEE emp INNER JOIN DEPT dep ON emp.EMPDEPTID=dep.DeptID;
 
SELECT emp.EMPNAME, emp.EMPSALARY, dep.DeptID, dep.DeptName FROM EMPLOYEE emp LEFT JOIN DEPT dep ON emp.EMPDEPTID=dep.DeptID;
 
SELECT emp.EMPNAME, emp.EMPSALARY, dep.DeptID, dep.DeptName FROM EMPLOYEE emp RIGHT JOIN DEPT dep ON emp.EMPDEPTID=dep.DeptID;
 
SELECT emp.EMPNAME, emp.EMPSALARY, dep.DeptID, dep.DeptName FROM EMPLOYEE emp FULL JOIN DEPT dep ON emp.EMPDEPTID=dep.DeptID;

 
SELECT * FROM EMPLOYEE WHERE EMPSALARY BETWEEN 60000 and 100000;
 
SELECT * FROM EMPLOYEE WHERE EMPNAME LIKE '%N%';
 
SELECT * FROM EMPLOYEE WHERE EMPSALARY IN(30000,40000,7000,50000);


SELECT * FROM EMPLOYEE INTERSECT SELECT * FROM DEPT;


SELECT emp.EmpName, emp.EmpSalary, dep.DeptId, dep.DeptName FROM EMPLOYEE emp LEFT JOIN DEPT dep ON emp.EmpDeptId=dep.DeptID
UNION
SELECT emp.EmpName, emp.EmpSalary, dep.DeptId, dep.DeptName FROM EMPLOYEE emp RIGHT JOIN DEPT dep ON emp.EmpDeptId=dep.DeptID ORDER BY DeptId;
 
 
SELECT emp.EmpName, emp.EmpSalary, dep.DeptId, dep.DeptName FROM EMPLOYEE emp LEFT JOIN DEPT dep ON emp.EmpDeptId=dep.DeptID
INTERSECT
SELECT emp.EmpName, emp.EmpSalary, dep.DeptId, dep.DeptName FROM EMPLOYEE emp RIGHT JOIN DEPT dep ON emp.EmpDeptId=dep.DeptID ORDER BY DeptID;