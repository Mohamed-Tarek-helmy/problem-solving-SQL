/*
Weather Observation Station 12
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

*/

select DISTINCT CITY FROM STATION WHERE 
CITY NOT LIKE '[aoeiu]%'
and
CITY NOT LIKE '%[aoeiu]'





