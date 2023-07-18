-- 1 List all employee first and last names only that live in Calgary.
select last_name first_name from employee where city = 'Calgary'

-- 2 Find the birthdate for the youngest employee.
select * from employee order by birth_date desc limit 1

-- 3 Find the birthdate for the oldest employee.
select * from employee order by birth_date asc limit 1

-- 4 Find everyone that reports to Nancy Edwards (use the ReportsTo column). 
-- * You will need to query the employee table to find the id for Nancy Edwards
select * from employee where reports_to = 2

-- 5 Count how many people live in Lethbridge.
select count(*) from employee where city = 'Lethbridge'
