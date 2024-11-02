/*
Write a query that prints a list of employee names (i.e.: the name attribute) 
from the Employee table in alphabetical order.
*/
SELECT
    name
FROM
    Employee
ORDER BY name;
--
/*
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in
Employee having a salary greater than 2000 per month who have been employees for less than 10
months. Sort your result by ascending employee_id.
*/
SELECT
    name
FROM
    Employee
WHERE
    salary > 2000
        AND months < 10
ORDER BY employee_id;
--
/*
Query the average population of all cities in CITY where District is California.
*/
SELECT
    AVG(POPULATION) AS AVG_POPULATION
FROM
    CITY
WHERE
    DISTRICT = 'California';
--
/*
Query the average population for all cities in CITY, rounded down to the nearest integer.
*/
SELECT
    ROUND(AVG(POPULATION), 0) AS AVG_POPULATION
FROM
    CITY;
--
/*
Query a count of the number of cities in CITY having a Population larger than 100,000.
*/
SELECT
    COUNT(POPULATION) AS COUNT_POPULATION
FROM
    CITY
WHERE
    POPULATION > 100000;
--
/*
Query the total population of all cities in CITY where District is California.
*/
SELECT
    SUM(POPULATION) AS SUM_POPULATION
FROM
    CITY
WHERE
    DISTRICT = 'California';
--
/*
Query the sum of the populations for all Japanese cities in CITY. 
The COUNTRYCODE for Japan is JPN.
*/
SELECT
    SUM(POPULATION) AS SUM_POPULATION
FROM
    CITY
WHERE
    COUNTRYCODE = 'JPN';
--
/*
Query the difference between the maximum and minimum populations in CITY.
*/
SELECT
    MAX(POPULATION) - MIN(POPULATION)
        AS POPULATION_DIFF
FROM
    CITY;
/*
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES
table, but did not realize her keyboard's 0 key was broken until after completing the calculation. She
wants your help finding the difference between her miscalculation (using salaries with any zeros removed),
and the actual average salary. 

Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), 
and round it up to the next integer. 
*/
SELECT 
    CEIL(AVG(Salary) - AVG(CAST(REPLACE(CAST(Salary AS CHAR), '0', '') AS UNSIGNED))) AS AVG_ERROR
FROM 
    EMPLOYEES;
