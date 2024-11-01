/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their 
respective lengths (i.e.: number of characters in the name). If there is more than 
one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/
(
    SELECT 
        CITY,
        LENGTH(CITY) AS LEN_CITY
    FROM 
        STATION
    ORDER BY 
        LEN_CITY ASC,
        CITY ASC
    LIMIT 1
)
UNION ALL
(
    SELECT 
        CITY,
        LENGTH(CITY) AS LEN_CITY
    FROM 
        STATION
    ORDER BY 
        LEN_CITY DESC,
        CITY DESC
    LIMIT 1
);
--
/*
Find the difference between the total number of CITY entries in the table and the 
number of distinct CITY entries in the table.
*/
SELECT 
    COUNT(CITY) - COUNT(DISTINCT(CITY))
FROM 
    STATION;
--
/*
Query a list of CITY names from STATION for cities that have an even ID number. 
Print the results in any order, but exclude duplicates from the answer.
*/
SELECT
    DISTINCT(CITY)
FROM
    STATION
WHERE
    MOD(ID, 2) = 0;
--
/*
Query a list of CITY and STATE from the STATION table.
*/
SELECT 
    CITY,
    STATE
FROM
    STATION;
--
/*
Query all columns for all American cities in the CITY table with populations 
larger than 100000. The CountryCode for America is USA.
*/
SELECT
    *
FROM
    CITY
WHERE
    COUNTRYCODE = 'USA'
        AND POPULATION > 100000;
