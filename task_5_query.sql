select * from sales
select * from customer
select * from product
select order_line,customer_id,product_id, order_date, sales from sales
select customer_id,customer_name,city from customer

-- product to sales
select order_line, customer_id, product_id, sales from sales

select product_id,product_name from product

select sum(sales), product_id from sales group by product_id

select  s.order_line, s.customer_id, s.product_id, s.sales , p.* from sales as s
inner join product as p
on s.product_id = p.product_id

-- get sales,discount and order_date from sales also get product_name and customer_name 

-- group by , having, limit, join , sum and avg

-- using left join
select s.order_line,s.customer_id,s.product_id,s.order_date,
s.sales,c.customer_name,c.city from sales as s
left join customer as c
on s.customer_id = c.customer_id
 -- product to sales

select s.order_line,s.customer_id,s.product_id,s.sales,p.product_name 
from sales as s
left join product as p
on s.product_id = p.product_id

-- select sum(sales), product_id from sales group by product_id

select sum(s.sales),p.product_name from sales as s
left join product as p
on s.product_id = p.product_id
group by p.product_name

select  s.order_line, s.customer_id, s.product_id, s.sales , p.* from sales as s
left join product as p
on s.product_id = p.product_id

-- get sales,discount and order_date from sales also get product_name and customer_name 
select s.sales,s.discount,s.order_date,p.product_name,c.customer_name
from sales as s
left join product as p
on p.product_id = s.product_id
left join customer as c
on c.customer_id = s.customer_id

-- group by , having, limit, join , sum and avg
-- select product_id,order_id,sales,quantity from sales
-- select product_name,product_id, category from product
select sum( s.sales), avg(s.quantity), p.product_name, p.category from sales as s
left join product as p
on s.product_id = p.product_id
group by  p.product_name,p.category
having sum(s.sales) > 500
order by avg(s.quantity) ASC
limit 10
offset 10

-- using right join
select s.order_line,s.customer_id,s.product_id,s.order_date,
s.sales,c.customer_name,c.city from sales as s
right join customer as c
on s.customer_id = c.customer_id

-- product to sales 
select s.order_line,s.customer_id,s.product_id,s.sales,p.product_name 
from sales as s
right join product as p
on s.product_id = p.product_id

-- select sum(sales), product_id from sales group by product_id
	
select sum(s.sales),p.product_name from sales as s
right join product as p
on s.product_id = p.product_id
group by p.product_name

select  s.order_line, s.customer_id, s.product_id, s.sales , p.* from sales as s
right join product as p
on s.product_id = p.product_id

-- get sales,discount and order_date from sales also get product_name and customer_name 

	
select s.sales,s.discount,s.order_date,p.product_name,c.customer_name
from sales as s
right join product as p
on p.product_id = s.product_id
left join customer as c
on c.customer_id = s.customer_id

-- group by , having, limit, join , sum and avg
-- select product_id,order_id,sales,quantity from sales
-- select product_name,product_id, category from product
select sum( s.sales), avg(s.quantity), p.product_name, p.category from sales as s
right join product as p
on s.product_id = p.product_id
group by  p.product_name,p.category
having sum(s.sales) > 500
order by avg(s.quantity) ASC
limit 10
offset 10

-- using full join
select s.order_line,s.customer_id,s.product_id,s.order_date,
s.sales,c.customer_name,c.city from sales as s
full join customer as c
on s.customer_id = c.customer_id
-- product to sales
select s.order_line,s.customer_id,s.product_id,s.sales,p.product_name 
from sales as s
full join product as p
on s.product_id = p.product_id

-- select sum(sales), product_id from sales group by product_id
	
select sum(s.sales),p.product_name from sales as s
full join product as p
on s.product_id = p.product_id
group by p.product_name

select  s.order_line, s.customer_id, s.product_id, s.sales , p.* from sales as s
full join product as p
on s.product_id = p.product_id

-- get sales,discount and order_date from sales also get product_name and customer_name 


select s.sales,s.discount,s.order_date,p.product_name,c.customer_name
from sales as s
left join product as p
on p.product_id = s.product_id
full join customer as c
on c.customer_id = s.customer_id

-- group by , having, limit, join , sum and avg
-- select product_id,order_id,sales,quantity from sales
-- select product_name,product_id, category from product
select sum( s.sales), avg(s.quantity), p.product_name, p.category from sales as s
full join product as p
on s.product_id = p.product_id
group by  p.product_name,p.category
having sum(s.sales) > 500
order by avg(s.quantity) ASC
limit 10
offset 10