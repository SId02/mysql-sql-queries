-- Show the list of Database

show databases;

-- Use the Database
use	sql_intro;

--  Show the list of Tables
show tables;


select * from employees;	

-- Find the lowest salary of	the	employees in each department	
select	dept,min(salary) as	lowest_salary from	employees group by	dept;	

--	Which	query will help	you fetch unique values	from a columnn in a	table


--	sql query to fetch unique dapartments from the Employees table

select	distinct depart	from employees;	

--	Sql Query	to fetch the unique	values	of department and print	their length
select	distinct dept,	length(dept) as length_dept	from employees;		

--	the use of the DATEDIFF function in SQL
 
 select	datediff('2021-04-10','2021-03-31');

-- sql query to	dispaly	the	department that	has	more than 2	employees

  select dept,count(emp_id) as total_emps from	employees group by	dept having	count(emp_id)>2;	

--	display the details of the employees for	all	the	department	except	Marketing

       
select	* from	employees	where	dept<>	'Marketing';
select	* from	employees	where	dept	!='Marketing';

--	SQL query	to	print	details	of the employees who have joined in before	April	2010 and after	May 2005	
select	*	from	employees	where	doj>'2005-05-31'and	doj<'2010-03-31';

--	Employee	with the 3rd highest salary	from the tables	

select	* from(select *	from employees	order by salary	desc limit 3)as	T order by salary limit	1;	

--	Print	all	the	alternate	records	inatable

 select	*from employees where emp_id % 2 =0; 
 
--	with CTE as(
--			select *, ROW_NUMBER() over	(ORDER	BY	emp_id)	as rn from employees
--	)
--	select * from CTE Where rn % 2=0;

--	Query	to	fetch	all	duplicate	rows	in	all	table

select	*	from	dup_employees;
select	e_id,	name,	age,	count(*)	as	dup_count	from	dup_employees	group by	e_-id,name,age	having	count(e_id)>1	and	count(name)>1	and	count(age)>1;

--	The	employees	with	exactly	2	A	in	their	names

select	*	from	employees	where	length(emp_name)-length(replace(upper(emp_name),'A',''))=2;

--	extract	four	characters	starts	from	2	position	
select	substr("Michael	Ballack",2,4);
select	substring("Michael	Ballack",2,4);

--	Self	joins

select	* from emp_manager;

select	e.Emp_ID,e.Emp_name,e.Manager_id,m.Emp_name	as	Manager_Name From emp_manager as e
JOIN emp_manager as	m ON e.Manager_id=m.Emp_id;	
	
-- Sql query to fetch the list of employees	with same salary

select distinct	e.emp_id,e.emp_name,e.salary from employees	e,employees	e1 where e.salary = e1.salary
and	e.emp_id !=e1.emp_id;		

-- sql query to print one row twice in result form a table
		select	emp_name,Dept from	employees e	where e.Dept='HR'
        union	all
        select	emp_name,Dept from employees e1	where e1.Dept='HR';
				
--	Using the num table	write alter query to add 10	where number is	0,20 when numberbis 1,else print the number	itself.
			
select	n_id, case when	n_id = 0 then n_id+10 when n_id	=1 then	n_id+20
else n_id end as num_add from num;














