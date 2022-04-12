# Show Database		
show databases;
# To Use Database		
use	world;
# To Show Tables in	database
show tables;

#To display all the colunm in a table		

select * from city;
describe city;

#CreateaDatabase
create	database sql_intro;

show databases;	

use	sql_intro;

CREATE TABLE emp_details (
  Name varchar(25) ,
  Age int(11) ,
  sex char(1) ,
  DOJ date,
  City varchar(15) ,
  salary float 
) ;

describe emp_details;

insert into emp_details	
values("Jimmy",35,"M","2005-05-30","Chicago",70000),		
	("Shane",30,"M","1999-06-25","Seattle",55000),	
    ("Marry",28,"F","2009-03-10","Boston",62000),	
    ("Dwayne",37,"M","2011-07-12","Austin",57000),	
    ("Sara",32,"F","2017-10-27","NewYork",72000),	
    ("Ammy",35,"F","2014-12-20","Seattle",80000);
    
    
  select * from emp_details;
  DELETE FROM emp_details;
  
  TRUNCATE TABLE emp_details;
  describe emp_details;
  
   select * from emp_details;
   
   # To Display Distinct	
   select distinct city	from emp_details;	
#	Tocheckthecountofemployee
select	count(name)	from emp_details;		
 select	count(name)as count_name from emp_details;	  

#tofindsumsalary

select sum(salary) from emp_details;	  

#Tofind	AvgofSlary
select avg(salary) from emp_details;	
# View Data	using column name		
select	name,age,city from emp_details;	

select * from emp_details where	age>30;

select name,sex,city from  emp_details where sex="F";

select * from emp_details where city='Chicago'	or	city='Austin';
select * from emp_details where city in('Chicago','Austin');		

select * from emp_details where doj between	'2000-01-01' and '2010-12-31';

select * from emp_details where	age>30	and	sex='M';

select sex, sum(salary)	as total_salary from emp_details group by sex;

select * from emp_details order by salary desc;

select	(10+20) as addition;

select length('India')	as total_length;	

select	repeat('@',10);		

select	upper('India');

select	lower('India');

select	curdate();
select	day(curdate());

select	now();


select	concat("India","is "," in Asia")as	merged;

select	reverse('India');





