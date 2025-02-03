.open dreamhome.sqlite
.mode column


SELECT staffNo, fName, lName, salary - (SELECT AVG(salary)  FROM Staff) AS salDiff FROM Staff  WHERE salary > (SELECT AVG(salary) FROM Staff); 

