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
--
/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
and their respective average city populations (CITY.Population) rounded down to the nearest
integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
SELECT 
    COUNTRY.Continent,
    FLOOR(AVG(CITY.Population)) AS Avg_City_Population
FROM 
    CITY
JOIN 
    COUNTRY ON CITY.CountryCode = COUNTRY.Code
GROUP BY 
    COUNTRY.Continent;
