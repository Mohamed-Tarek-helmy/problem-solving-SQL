/*
link     :https://www.hackerrank.com/challenges/earnings-of-employees/problem
author   :Mohamed Tarek

*/


select top 1 (salary * months),
count (salary * months) from Employee 
group by salary * months
order by salary * months desc


/* another solution */

select max(salary * months),count(salary * months) from Employee  
where (salary * months) = max(salary * months) /*108064*/  from Employee)


