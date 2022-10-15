/*

Query the average population for all cities in CITY, rounded down to the nearest integer.


note: if we didnt use group by the whole column would be calculated in the avg.

*/


select round(avg(population ),2 )from city 



