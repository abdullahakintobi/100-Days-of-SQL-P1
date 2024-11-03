/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT 
is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
SELECT 
    CITY.Name
FROM 
    CITY
JOIN 
    COUNTRY ON CITY.CountryCode = COUNTRY.Code
WHERE 
    COUNTRY.CONTINENT = 'Africa';
--
/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the
CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
SELECT 
    SUM(CITY.Population) AS Total_Population
FROM 
    CITY
JOIN 
    COUNTRY ON CITY.CountryCode = COUNTRY.Code
WHERE 
    COUNTRY.CONTINENT = 'Asia';
