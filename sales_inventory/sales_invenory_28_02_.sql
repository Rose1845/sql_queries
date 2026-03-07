
-- 1. Write a query to select all data from the `Customers` table.
select * from assignment.products;
-- 2. Write a query to select the total number of products from the `Products` table.
select
	count(*)
from
	assignment.Products;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
 select
	p.product_name ,
	p.price
from
	assignment.products p
where
	p.price > 500
	-- 4. Write a query to find the average price of all products from the `Products` table.
 select
	AVG(p.price)
from
	assignment.products p
	-- 5. Write a query to find the total sales amount from the `Sales` table.
 
 select
	SUM(s.total_amount)
from
	assignment.sales s
	-- 6. Write a query to select distinct membership statuses from the `Customers` table.
 
 select
	distinct c.membership_status
from
	assignment.customers c
	-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
 
 select
	c.customer_id ,
	concat(c.first_name , ' ', c.last_name ) as full_name,
	c.email ,
	c.phone_number ,
	c.registration_date
from
	assignment.customers c
	-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select
	*
from
	assignment.products p
where
	p.category = 'Electronics';
-- 9. Write a query to find the highest price from the `Products` table.

select
	p.price
from
	assignment.products p
order by
	p.price desc
select
	MAX(p.price)
from
	assignment.products p
	-- 10. Write a query to count the number of sales for each product from the `Sales` table.
 select
	s.product_id ,
	count(*) as total_sales
from
	assignment.sales s
group by
	s.product_id
	-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
 select
	SUM(s.total_amount)
from
	assignment.sales s
	-- 12. Write a query to find the lowest price of products in the `Products` table.
select
	MIN(p.price)
from
	assignment.products p
	-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
select
	*
from
	assignment.products p
where
	p.price > 1000
	-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and select the product name and total sales amount.
select
	p.product_name as name ,
	SUM(s.total_amount) as total_sales
from
	assignment.sales s
inner join assignment.products p on
	s.product_id = p.product_id
group by
	p.product_name
	-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
select
	c.first_name as name ,
	SUM(s.total_amount) as total_sales
from
	assignment.sales s
inner join assignment.customers c on
	c.customer_id = s.customer_id
group by
	c.first_name
	-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
select
	c.first_name ,
	c.last_name,
	p.product_name ,
	s.quantity_sold
from
	assignment.sales s
inner join assignment.customers c on
	c.customer_id = s.customer_id
join assignment.products p on
	s.product_id = p.product_id
	-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
select
	c1.customer_id as customer1,
	c2.customer_id as customer2,
	c1.membership_status
from
	assignment.customers c1
join assignment.customers c2
on
	c1.membership_status = c2.membership_status
	and c1.customer_id < c2.customer_id;
-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
select
	p.product_name as name ,
	COUNT(s.sale_id) as total_no_sales
from
	assignment.sales s
inner join assignment.products p on
	s.product_id = p.product_id
group by
	p.product_name
	-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
select
	*
from
	assignment.products p
where
	p.stock_quantity < 10
	-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with sales greater than 5.
select
	p.product_name,
	COUNT(s.sale_id) as total_sales
from
	assignment.sales s
join assignment.products p on
	s.product_id = p.product_id
group by
	p.product_name
having
	COUNT(s.sale_id) > 5;
-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
select
	c.*
from
	assignment.customers c
inner join assignment.sales s on
	c.customer_id = s.customer_id
inner join assignment.products p on
	s.product_id = p.product_id
where
	p.product_name in ('Electronics', 'Appliances', 'Appliances')
	-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
	select
	p.product_name ,
	SUM(s.total_amount) as total_sales
from
	assignment.products p
inner join assignment.sales s on
	p.product_id = s.product_id
group by
	p.product_name
	-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
	select * from assignment.sales
	select * from assignment.customers c join assignment.sales s on s.customer_id = s.customer_id where EXTRACT(year from s.sale_date) = '2023'
	-- 24. Write a query to find the customers with the highest total sales in 2023.
select concat(c.first_name, ' ', c.last_name) as full_name, SUM(s.total_amount ) as total_sales  from assignment.customers c join assignment.sales s on s.customer_id = s.customer_id where EXTRACT(year from s.sale_date) = '2023' group by c.customer_id, c.first_name,c.last_name order by total_sales DESC

	-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
select * from assignment.products p inner join assignment.sales s on p.product_id = s.product_id order by p.price desc limit 1
	-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
select count(s.customer_id) as no_of_customers  from assignment.sales s inner join assignment.products p on s.customer_id = p.product_id where s.total_amount > 500
	-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
    select
	SUM(s.total_amount)
from
	assignment.customers c
inner join assignment.sales s on
	c.customer_id = s.customer_id
inner join assignment.products p on
	s.product_id = p.product_id
where
	c.membership_status = 'Gold'
	-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).\
	select * from assignment.products
	select * from inventory
	select * from products p inner join inventory i on p.product_id = i.product_id where i.stock_quantity < 10
	-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
	select * from sales
	select * from customers
	select c.first_name, SUM(s.quantity_sold) as quantity_sold from sales s join customers c on s.customer_id = c.customer_id  group by c.first_name having SUM(s.quantity_sold) > 5
	-- 30. Write a query to find the average quantity sold per product.
	select DISTINCT p.product_name, AVG(s.quantity_sold) from sales s inner join products p on s.product_id = s.product_id group by p.product_name
    select DISTINCT p.product_name, AVG(s.quantity_sold) over (partition by p.product_name) as average_sold from sales s inner join products p on s.product_id = s.product_id

	-- 31. Write a query to find the number of sales made in the month of December 2023.
    select * from sales
	select COUNT(*) from sales s where extract(month from s.sale_date) = 12 and extract( year from s.sale_date) = 2023
	-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
   select c.first_name, COUNT(s.total_amount) from sales s inner join customers c on s.customer_id = s.customer_id where extract( year from s.sale_date) = 2023 group by c.first_name order by c.first_name DESC

	-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
     select p.*, (p.stock_quantoty - i.stock_quantity) as diff from sales s inner join products p on s.product_id = p.product_id inner join inventory i on p.product_id = i.product_id where i.stock_quantity < 5
	-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
     select p.product_name,SUM(s.total_amount) as total_sales from products p inner join sales s on p.product_id = s.product_id group by p.product_name order by total_sales DESC
	-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
     select * from customers c inner join sales s on c.customer_id = s.customer_id where s.sale_date <= c.registration_date + interval '7 days' and s.sale_date >= c.registration_date
	-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
     select p.* from sales s inner join products p on s.product_id = s.product_id where p.price between 100 and 500
	-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
     select customer_id,count(*) as s_count from sales group by customer_id order by s_count desc limit 1
	-- 38. Write a query to find the total quantity of products sold per customer.
     select DISTINCT c.first_name, SUM(s.quantity_sold) OVER(partition by c.first_name order by c.first_name ASC) from sales s inner join customers c on s.customer_id = s.customer_id
     select DISTINCT c.first_name, SUM(s.quantity_sold)  from sales s  join customers c on s.customer_id = s.customer_id group by c.first_name

	-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
      select p1.product_name,p1.stock_quantity as higest_product_stock1 from products p1 order by p1.stock_quantity desc limit 1
      select p.product_name , MAX(p.stock_quantity)  from products p group by p.product_name limit 1
      select p2.product_name as lowest_product_stock2,p2.stock_quantity  from products p2 order by p2.stock_quantity asc limit 1

	-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
     select p.product_name,SUM(s.total_amount) as total_sales from sales s join products p on s.product_id = s.product_id where p.product_name = '%Phone%' group by p.product_name

	-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
     select p.product_name, SUM(s.total_amount) as total_sales from sales s inner join customers c on s.customer_id =  s.customer_id inner join products p on p.product_id= s.product_id where c.membership_status = 'Gold' group by p.product_name 
	-- 42. Write a query to find the total sales of products by category.
     select * from sales
     select * from  products
          select DISTINCT p.category, SUM(s.total_amount) as total_sales from sales s inner join products p on s.product_id =  p.product_id group by p.category
     select DISTINCT p.category, SUM(s.total_amount) OVER(partition by p.category) as total_sales from sales s inner join products p on s.product_id =  p.product_id 
	-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
     select p.product_name,extract(month from s.sale_date) AS month_d,extract(year from s.sale_date) AS  year_d, SUM(s.total_amount) OVER(partition by p.product_name,extract(month from s.sale_date),extract(year from s.sale_date)) as total_sales from sales s inner join products p on s.product_id =  p.product_id 
     select DISTINCT p.product_name,extract(month from s.sale_date) AS month_d,extract(year from s.sale_date) AS  year_d, SUM(s.total_amount) as total_sales from sales s inner join products p on s.product_id =  p.product_id group by p.product_name,month_d,year_d

	-- 44. Write a query to join the `Sales` and `Invenory` tables and find products that have been sold but still have stock remaining.
     select
	*
from
	sales
     select
	s.product_id,
	s.quantity_sold,
	i.stock_quantity,
	i.stock_quantity - s.quantity_sold as rem
from
	sales s
join inventory i on
	s.product_id = i.product_id
where
	i.stock_quantity - s.quantity_sold > 0
	-- 45. Write a query to find the top 5 customers who have made the highest purchases.
     select
	s.customer_id,
	SUM(s.total_amount) as total_sales
from
	sales s
group by
	s.customer_id
order by
	total_sales desc
limit 5
-- 46. Write a query to calculate the total number of unique products sold in 2023.
     select
	distinct COUNT(s.product_id)
from
	sales s
where
	extract( year from s.sale_date) = '2024'
	-- 47. Write a query to find the products that have not been sold in the last 6 months.
    select p.product_name from products p where p.product_id not in (	select
		s.product_id
	from
		sales s
	where
		s.sale_date >= current_date + interval '6 months')
	-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
     select p.product_name,sum(s.quantity_sold) as quantity_sold from products p join sales s on p.product_id=s.product_id where p.price between 200 and 800 group by p.product_name 
	-- 49. Write a query to find the customers who spent the most money in the year 2023.
     select c.first_name, SUM(s.total_amount) as total_sales from customers c join sales s on c.customer_id =s.customer_id where extract(year from s.sale_date) = '2023' group by c.first_name order by total_sales desc
	-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
       select p.product_name,sum(s.quantity_sold) as quantity_sold from products p join sales s on p.product_id=s.product_id where p.price > 200 group by p.product_name having sum(s.quantity_sold) > 100
       
       