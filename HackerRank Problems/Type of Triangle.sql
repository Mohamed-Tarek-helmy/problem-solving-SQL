
/*
link     :https://www.hackerrank.com/challenges/what-type-of-triangle/problem
author   :Mohamed Tarek
*/



select
    case 
      when(a+b>c and a+c>b and b+c>a) then
        CASE 
            WHEN a = b and a = c THEN "Equilateral"
            WHEN (a = b or a=c or b=c) THEN "Isosceles"
            ELSE "Scalene"
        END
      else "Not A Triangle"
    END
FROM TRIANGLES 
