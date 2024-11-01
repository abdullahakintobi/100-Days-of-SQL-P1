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
--
/*
Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.
*/
SELECT
    ROUND(SUM(LAT_N), 2) AS lat,
    ROUND(SUM(LONG_W), 2) AS lon
FROM
    STATION;
--
/*
Query the list of CITY names from STATION that either do not start with vowels 
or do not end with vowels. Your result cannot contain duplicates.
*/
SELECT
    DISTINCT(CITY)
FROM
    STATION
WHERE
    CITY NOT REGEXP '^[AEIOUaeiou]'
     OR CITY NOT REGEXP '[AEIOUaeiou]$';
--
/*
Query the list of CITY names from STATION that do not start with vowels 
and do not end with vowels. Your result cannot contain duplicates.
*/
SELECT
    DISTINCT(CITY)
FROM
    STATION
WHERE
    CITY NOT REGEXP '^[AEIOUaeiou]'
        AND CITY NOT REGEXP '[AEIOUaeiou]$';
--
/*
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater
than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.
*/
SELECT
    TRUNCATE(SUM(LAT_N), 4) AS SUM_LAT_N
FROM
    STATION
WHERE
    LAT_N > 38.7880 
        AND LAT_N < 137.2345;
--
/*
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is
less than 137.2345. Truncate your answer to 4 decimal places.
*/
SELECT
    TRUNCATE(MAX(LAT_N), 4) AS MAX_LAT_N
FROM
    STATION
WHERE
    LAT_N < 137.2345;
--
/*
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N)
in STATION that is less than 137.2345. Round your answer to  decimal places.
*/
SELECT
    ROUND(LONG_W, 4) AS ROUND_LONG_W
FROM    
    STATION
WHERE
    LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;
--
/*
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than
38.7780. Round your answer to 4 decimal places.
*/
SELECT
    MIN(ROUND(LAT_N, 4)) AS MAX_LAT_N
FROM    
    STATION
WHERE
    LAT_N > 38.7780;
