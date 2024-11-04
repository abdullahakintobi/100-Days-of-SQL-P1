/*
We define an employee's total earnings to be their monthly  worked, and the maximum total earnings 
to be the maximum total earnings for any employee in the Employee table. Write a query to find the 
maximum total earnings for all employees as well as the total number of employees who have maximum
total earnings. Then print these values as  space-separated integers.
*/
SELECT 
    salary * months AS TOTAL_SALARY,
    COUNT(1) AS TOTAL_SALARY_NUM
FROM Employee
GROUP BY TOTAL_SALARY
ORDER BY TOTAL_SALARY DESC
LIMIT 1;
