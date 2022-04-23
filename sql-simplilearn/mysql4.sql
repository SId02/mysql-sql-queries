show databases;
use	sql_intro;
show tables;

select * from employees;

select emp_name, dept, salary
from employees where salary < (select avg(salary) from employees);


#update	subquery

create table products(prod_id int,item	varchar(30),sell_price	float,product_type	varchar(30)	);


insert	into	products	value(101,"Jewellery",1800,'Luxury'),
(102,"T-Shirt",100,'Non-Luxury'),
(103,"laptop",1300,'Luxury'),
(104,"table",400,'Non-Luxury');


select * from products;

create	table orders(order_id int,product_sold	varchar(30),selling_price float);

insert into orders
select prod_id,item,sell_price
from products where	prod_id	in
(select	prod_id	from products where	sell_price>1000);

	select	*	from	orders;
    
    
 #update	queryusing	subquerys
 
 select * from	employees_b;
 
 update	employees	set	salary	=salary	*0.35
 where	age	in	(select	age	from	employees_b	where	age>=27	);
 
 #	delete	subqueries
 
 delete	from	employees
 where	age	in (select	age	from	employees_b	where	age<=32	);
 
 
 
 
 
 