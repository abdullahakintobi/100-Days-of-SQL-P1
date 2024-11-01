/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their 
respective lengths (i.e.: number of characters in the name). If there is more than 
one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/
(
    SELECT CITY, LENGTH(CITY) AS LEN_CITY
    FROM STATION
    ORDER BY LEN_CITY ASC, CITY ASC
    LIMIT 1
)  
UNION ALL
(
    SELECT CITY, LENGTH(CITY) AS LEN_CITY
    FROM STATION
    ORDER BY LEN_CITY DESC, CITY DESC
    LIMIT 1
)
