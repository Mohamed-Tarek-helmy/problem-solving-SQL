
/*
link     :https://www.hackerrank.com/challenges/what-type-of-triangle/problem
author   :Mohamed Tarek
*/





SELECT 
CASE 
    WHEN a = b and a = c THEN "Equilateral"
    WHEN (a = b  or a=c or b=c) and(a+b>c and a+c>b and     b+c>a)
    THEN "Isosceles"
    
    WHEN a+b<c or a+c<b or b+c<a THEN "Not A Triangle"
    WHEN a <>b and  a <>c and b<> c THEN "Scalene"
else "Not A Triangle"
END 
FROM TRIANGLES ; 
