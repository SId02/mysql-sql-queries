-- Show the list of Database

show databases;

-- Use the Database
use	sql_intro;

--  Show the list of Tables
show tables;


select * from employees;	

-- Find the lowest salary of	the	employees in each department	
select	dept,min(salary) as	lowest_salary from	employees group by	dept;	

--Which	query will help	you fetch unique values	from a columnn in a	table


--sql query to fetch unique dapartments from the Employees table

select	distinct depart	from employees;	

--Sql Query	to fetch the unique	values	of department and print	their length
select	distinct dept,	length(dept) as length_dept	from employees;		

--the use of the DATEDIFF function in SQL
 
 select	datediff('2021-04-10','2021-03-31');

-- sql query to	dispaly	the	department that	has	more than 2	employees

  select dept,count(emp_id) as total_emps from	employees group by	dept having	count(emp_id)>2;	

--display the details of the employees for	all	the	department	except	Marketing

       
select	* from	employees	where	dept<>	'Marketing';
select	* from	employees	where	dept	!='Marketing';

--SQL query	to	print	details	of the employees who have joined in before	April	2010 and after	May 2005	
select	*	from	employees	where	doj>'2005-05-31'and	doj<'2010-03-31';

--Employee	with the 3rd highest salary	from the tables	

select	* from(select *	from employees	order by salary	desc limit 3)as	T order by salary limit	1;	

--Print	all	the	alternate	records	inatable

 select	*from employees where emp_id % 2 =0; 
 
with CTE as(
            select *, ROW_NUMBER() over	(ORDER	BY	emp_id)	as rn from employees
)
select * from CTE Where rn % 2=0;
                 
                