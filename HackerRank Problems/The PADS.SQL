
/*
https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
*/

SELECT 
name || '(' || substr(occupation,1,1)|| ')' 
FROM OCCUPATIONs
ORDER BY  name ASC;

select 
'There are a total of '||  count(OCCUPATION ) ||' '|| lower(occupation)||'s.'
from OCCUPATIONs 
GROUP BY  occupation
order by count(OCCUPATION ),occupation asc;
