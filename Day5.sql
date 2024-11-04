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
--
/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
Output one of the following statements for each record in the table:

- Equilateral: It's a triangle with 3 sides of equal length. 
- Isosceles: It's a triangle with 2 sides of equal length. 
- Scalene: It's a triangle with 3 sides of differing lengths. 
- Not A Triangle: The given values of A, B, and C don't form a triangle.
*/
SELECT 
    CASE 
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END AS TRIANGLE_TYPE
FROM 
    TRIANGLES;
