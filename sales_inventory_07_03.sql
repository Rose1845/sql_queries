-- CREATE schema assignment

set
search_path to assignment;

create schema assignment;
-- CREATE Customers table in the assignment schema
create table assignment.customers (
    customer_id INT primary key,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
create table assignment.products (
    product_id INT primary key,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
create table assignment.sales (
    sale_id INT primary key,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    foreign key (customer_id) references assignment.customers(customer_id),
    foreign key (product_id) references assignment.products(product_id)
);
-- CREATE Inventory table in the assignment schema
create table assignment.inventory (
    product_id INT primary key,
    stock_quantity INT,
    foreign key (product_id) references assignment.products(product_id)
);
-- Inserting data into assignment.Customers table
insert
	into
	assignment.Customers 
(customer_id,
	first_name,
	last_name,
	email,
	phone_number,
	registration_date,
	membership_status)
values
(1,
'Karen',
'Molina',
'gonzalezkimberly@glass.com',
'(728)697-1206',
'2020-08-27',
'Bronze'),
(2,
'Elizabeth',
'Archer',
'tramirez@gmail.com',
'778.104.6553',
'2023-08-28',
'Silver'),
(3,
'Roberta',
'Massey',
'davislori@gmail.com',
'+1-365-606-7458x399',
'2024-06-12',
'Bronze'),
(4,
'Jacob',
'Adams',
'andrew72@hotmail.com',
'246-459-1425x462',
'2023-02-10',
'Gold'),
(5,
'Cynthia',
'Lowery',
'suarezkiara@ramsey.com',
'001-279-688-8177x4015',
'2020-11-13',
'Silver'),
(6,
'Emily',
'King',
'igoodwin@howard.com',
'(931)575-5422x5900',
'2021-05-01',
'Silver'),
(7,
'Linda',
'Larsen',
'pware@yahoo.com',
'289-050-2028x7673',
'2021-08-20',
'Silver'),
(8,
'Angela',
'Hanson',
'zanderson@gmail.com',
'+1-403-917-3585',
'2023-03-17',
'Bronze'),
(9,
'Whitney',
'Wilson',
'norma70@yahoo.com',
'001-594-317-6656',
'2024-01-27',
'Bronze'),
(10,
'Angela',
'Atkins',
'burnsjorge@medina.org',
'344.217.5788',
'2025-02-05',
'Silver'),
(11,
'Gary',
'Lucero',
'ssnyder@hotmail.com',
'001-842-595-7853',
'2024-10-08',
'Silver'),
(12,
'Matthew',
'Romero',
'jennifer22@gmail.com',
'556.328.91896',
'2022-04-07',
'Bronze'),
(13,
'Ronald',
'Thompson',
'hramos@hayes.biz',
'298-487-2483',
'2023-07-31',
'Bronze'),
(14,
'Suzanne',
'Anderson',
'michaelcole@ruiz-ware.com',
'+1-018-029-7257',
'2023-11-02',
'Bronze'),
(15,
'Mary',
'Kelly',
'matthewmurphy@gmail.com',
'(845)934-9x286',
'2021-01-20',
'Bronze'),
(16,
'John',
'George',
'burnettlauren@gmail.com',
'+1-708-200-4286',
'2022-05-17',
'Bronze'),
(17,
'James',
'Rodriguez',
'brownbrian@blair-sanford.com',
'8826047658',
'2022-11-25',
'Gold'),
(18,
'Steven',
'Burnett',
'zblackburn@yahoo.com',
'(055)912-6726x1246',
'2020-01-28',
'Gold'),
(19,
'Jonathan',
'White',
'millsseth@choi-kelly.org',
'755-979-1934x772',
'2022-02-06',
'Bronze'),
(20,
'Christopher',
'Santiago',
'heidimaddox@hotmail.com',
'118-589-6973x058',
'2021-10-16',
'Silver'),
(21,
'John',
'Diaz',
'gsmith@hotmail.com',
'369.915.4337',
'2022-09-17',
'Gold'),
(22,
'Curtis',
'Rose',
'ryanmartinez@moore.com',
'(921)461-2128',
'2021-12-14',
'Bronze'),
(23,
'Charles',
'Hughes',
'jonesangela@frank-lynn.com',
'(152)603-5387x8994',
'2024-07-29',
'Silver'),
(24,
'Sarah',
'Cooke',
'whitedennis@tucker.org',
'(641)830-6756x56741',
'2024-12-15',
'Bronze'),
(25,
'Luis',
'Harrison',
'melvin70@gmail.com',
'516.509.9493',
'2021-08-19',
'Silver'),
(26,
'Annette',
'Greene',
'aaron68@hall.com',
'(733)734-1847x1078',
'2025-04-12',
'Bronze'),
(27,
'Melissa',
'Jacobson',
'becklarry@gmail.com',
'562-245-7784x4729',
'2023-04-28',
'Bronze'),
(28,
'Julie',
'Gardner',
'adamsrodney@hall.com',
'+1-014-029-3206x188',
'2024-03-31',
'Gold'),
(29,
'Margaret',
'Taylor',
'lfuller@hotmail.com',
'(299)340-8900x297',
'2021-09-06',
'Bronze'),
(30,
'Erika',
'Mckee',
'wsmith@gmail.com',
'(160)040-7321',
'2021-05-25',
'Silver'),
(31,
'Donna',
'Whitney',
'justinnicholson@gmail.com',
'7086491657',
'2022-08-07',
'Gold'),
(32,
'Kristina',
'Wade',
'ashley30@richards-young.com',
'603-604-2831x303',
'2024-03-16',
'Silver'),
(33,
'Joshua',
'Green',
'ihartman@yahoo.com',
'988-232-8285x00933',
'2024-05-14',
'Silver'),
(34,
'John',
'Leblanc',
'herickson@green.info',
'229.016.2527x20209',
'2022-12-24',
'Silver'),
(35,
'Nicholas',
'Campbell',
'ghernandez@hotmail.com',
'(982)215-6626',
'2022-06-06',
'Gold'),
(36,
'Christopher',
'Hicks',
'ryan48@gmail.com',
'884.881.7758',
'2021-04-03',
'Silver'),
(37,
'Craig',
'Miller',
'scampbell@johnson.net',
'390-328-7286x021',
'2024-04-30',
'Silver'),
(38,
'Jennifer',
'Bailey',
'dwright@hotmail.com',
'001-992-011-9250',
'2022-09-07',
'Silver'),
(39,
'Emma',
'Davis',
'lisalester@hotmail.com',
'911.706.3025',
'2021-06-04',
'Gold'),
(40,
'Michael',
'Wilson',
'lmerritt@wallace-wang.com',
'462.021.3233',
'2025-01-14',
'Bronze'),
(41,
'Sarah',
'Church',
'deniseramos@gmail.com',
'(840)285-3653x61868',
'2021-03-14',
'Silver'),
(42,
'Carolyn',
'Stevenson',
'george62@garrison.net',
'040.179.1155',
'2024-07-26',
'Silver'),
(43,
'Sarah',
'Cole',
'amandamartin@hotmail.com',
'481-651-5206x4800',
'2024-07-27',
'Silver'),
(44,
'Jeremiah',
'Lozano',
'bethany38@lopez.net',
'846-327-7426',
'2023-01-02',
'Bronze'),
(45,
'Leslie',
'Boyd',
'cartermorgan@scott-franco.com',
'+1-583-786-3525',
'2022-10-22',
'Silver'),
(46,
'Carrie',
'Anderson',
'stevenlivingston@yahoo.com',
'+1-086-709-5530x6149',
'2024-08-23',
'Gold'),
(47,
'Jared',
'Davis',
'mooretodd@cook.com',
'001-069-544-8807x2397',
'2022-08-29',
'Bronze'),
(48,
'James',
'Soto',
'patriciaburns@yahoo.com',
'129.857.8193x421',
'2023-01-27',
'Gold'),
(49,
'Cody',
'Kline',
'bradfordleslie@hotmail.com',
'+1-710-706-3703x7998',
'2022-06-28',
'Bronze'),
(50,
'Jennifer',
'Perkins',
'austinowens@hill.info',
'762.009.1882',
'2020-10-19',
'Silver');

select
	*
from
	assignment.customers;
-- Inserting data into assignment.Products table
insert
	into
	assignment.Products 
(product_id,
	product_name,
	category,
	price,
	supplier,
	stock_quantity)
values
(1,
'Laptop',
'Electronics',
999.99,
'Dell',
50),
(2,
'Smartphone',
'Electronics',
799.99,
'Samsung',
150),
(3,
'Washing Machine',
'Appliances',
499.99,
'LG',
30),
(4,
'Headphones',
'Accessories',
199.99,
'Sony',
100),
(5,
'Refrigerator',
'Appliances',
1200.00,
'Whirlpool',
40),
(6,
'Smart TV',
'Electronics',
1500.00,
'Samsung',
20),
(7,
'Microwave',
'Appliances',
180.00,
'Panasonic',
75),
(8,
'Blender',
'Appliances',
50.00,
'Ninja',
200),
(9,
'Gaming Console',
'Electronics',
350.00,
'Sony',
60),
(10,
'Wireless Mouse',
'Accessories',
25.00,
'Logitech',
300),
(11,
'Keyboard',
'Accessories',
49.99,
'Logitech',
250),
(12,
'Monitor',
'Electronics',
250.00,
'Acer',
120),
(13,
'External Hard Drive',
'Electronics',
80.00,
'Seagate',
90),
(14,
'Tablet',
'Electronics',
400.00,
'Apple',
70),
(15,
'Smartwatch',
'Electronics',
199.99,
'Apple',
120);

select
	*
from
	assignment.products;
-- Inserting data into assignment.Sales table
insert
	into
	assignment.Sales 
(sale_id,
	customer_id,
	product_id,
	quantity_sold,
	sale_date,
	total_amount)
values
(1,
1,
1,
1,
'2023-07-15',
999.99),
(2,
2,
2,
2,
'2023-08-20',
1599.98),
(3,
3,
3,
1,
'2023-09-10',
499.99),
(4,
4,
4,
3,
'2023-07-25',
599.97),
(5,
5,
5,
1,
'2023-06-18',
1200.00),
(6,
6,
6,
1,
'2023-10-05',
1500.00),
(7,
7,
7,
1,
'2023-08-01',
180.00),
(8,
8,
8,
2,
'2023-09-02',
100.00),
(9,
9,
9,
1,
'2023-10-10',
350.00),
(10,
10,
10,
3,
'2023-11-12',
75.00),
(11,
11,
11,
2,
'2023-12-01',
100.00),
(12,
12,
12,
1,
'2023-12-07',
250.00),
(13,
13,
13,
1,
'2024-01-15',
80.00),
(14,
14,
14,
1,
'2024-02-05',
400.00),
(15,
15,
15,
1,
'2024-01-05',
199.99);
-- Inserting data into assignment.Inventory table
insert
	into
	assignment.inventory 
(product_id,
	stock_quantity)
values
(1,
50),
(2,
150),
(3,
30),
(4,
100),
(5,
40),
(6,
20),
(7,
75),
(8,
200),
(9,
60),
(10,
300),
(11,
250),
(12,
120),
(13,
90),
(14,
70),
(15,
120);
-- Select all data from assignment.Customers table
select
	*
from
	assignment.Customers;
-- Select all data from assignment.Products table
select
	*
from
	assignment.Products;
-- Select all data from assignment.Sales table
select
	*
from
	assignment.Sales;
-- Select all data from assignment.Inventory table
select
	*
from
	assignment.Inventory;
-- 1. Write a query to select all data from the `Customers` table.
-- 2. Write a query to select the total number of products from the `Products` table.
select
	count(*)
from
	assignment.Products;

// 5
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
	select
	*
from
	assignment.sales
	select
	*
from
	assignment.customers c
join assignment.sales s on
	s.customer_id = s.customer_id
where
	extract(year from s.sale_date) = '2023'
	-- 24. Write a query to find the customers with the highest total sales in 2023.
select
	concat(c.first_name, ' ', c.last_name) as full_name,
	SUM(s.total_amount) as total_sales
from
	assignment.customers c
join assignment.sales s on
	s.customer_id = s.customer_id
where
	extract(year from s.sale_date) = '2023'
group by
	c.customer_id,
	c.first_name,
	c.last_name
order by
	total_sales desc
	-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
select
	*
from
	assignment.products p
inner join assignment.sales s on
	p.product_id = s.product_id
order by
	p.price desc
limit 1
-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
select
	count(s.customer_id) as no_of_customers
from
	assignment.sales s
inner join assignment.products p on
	s.customer_id = p.product_id
where
	s.total_amount > 500
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
	select
	*
from
	assignment.products
	select
	*
from
	inventory
	select
	*
from
	products p
inner join inventory i on
	p.product_id = i.product_id
where
	i.stock_quantity < 10
	-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
	select
	*
from
	sales
	select
	*
from
	customers
	select
	c.first_name,
	SUM(s.quantity_sold) as quantity_sold
from
	sales s
join customers c on
	s.customer_id = c.customer_id
group by
	c.first_name
having
	SUM(s.quantity_sold) > 5
	-- 30. Write a query to find the average quantity sold per product.
	select
	distinct p.product_name,
	AVG(s.quantity_sold)
from
	sales s
inner join products p on
	s.product_id = s.product_id
group by
	p.product_name
    select
	distinct p.product_name,
	AVG(s.quantity_sold) over (partition by p.product_name) as average_sold
from
	sales s
inner join products p on
	s.product_id = s.product_id
	-- 31. Write a query to find the number of sales made in the month of December 2023.
    select
	*
from
	sales
	select
	COUNT(*)
from
	sales s
where
	extract(month from s.sale_date) = 12
	and extract( year from s.sale_date) = 2023
	-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
   select
	c.first_name,
	COUNT(s.total_amount)
from
	sales s
inner join customers c on
	s.customer_id = s.customer_id
where
	extract( year from s.sale_date) = 2023
group by
	c.first_name
order by
	c.first_name desc
	-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
     select
	p.*,
	(p.stock_quantoty - i.stock_quantity) as diff
from
	sales s
inner join products p on
	s.product_id = p.product_id
inner join inventory i on
	p.product_id = i.product_id
where
	i.stock_quantity < 5
	-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
     select
	p.product_name,
	SUM(s.total_amount) as total_sales
from
	products p
inner join sales s on
	p.product_id = s.product_id
group by
	p.product_name
order by
	total_sales desc
	-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
     select
	*
from
	customers c
inner join sales s on
	c.customer_id = s.customer_id
where
	s.sale_date <= c.registration_date + interval '7 days'
	and s.sale_date >= c.registration_date
	-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
     select
	p.*
from
	sales s
inner join products p on
	s.product_id = s.product_id
where
	p.price between 100 and 500
	-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
     select
	customer_id,
	count(*) as s_count
from
	sales
group by
	customer_id
order by
	s_count desc
limit 1
-- 38. Write a query to find the total quantity of products sold per customer.
     select
	distinct c.first_name,
	SUM(s.quantity_sold) over(partition by c.first_name order by c.first_name asc)
from
	sales s
inner join customers c on
	s.customer_id = s.customer_id
     select
	distinct c.first_name,
	SUM(s.quantity_sold)
from
	sales s
join customers c on
	s.customer_id = s.customer_id
group by
	c.first_name
	-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
      select
	p1.product_name,
	p1.stock_quantity as higest_product_stock1
from
	products p1
order by
	p1.stock_quantity desc
limit 1
      select
	p.product_name ,
	MAX(p.stock_quantity)
from
	products p
group by
	p.product_name
limit 1
      select
	p2.product_name as lowest_product_stock2,
	p2.stock_quantity
from
	products p2
order by
	p2.stock_quantity asc
limit 1
-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
     select
	p.product_name,
	SUM(s.total_amount) as total_sales
from
	sales s
join products p on
	s.product_id = s.product_id
where
	p.product_name = '%Phone%'
group by
	p.product_name
	-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
     select
	p.product_name,
	SUM(s.total_amount) as total_sales
from
	sales s
inner join customers c on
	s.customer_id = s.customer_id
inner join products p on
	p.product_id = s.product_id
where
	c.membership_status = 'Gold'
group by
	p.product_name
	-- 42. Write a query to find the total sales of products by category.
     select
	*
from
	sales
     select
	*
from
	products
          select
	distinct p.category,
	SUM(s.total_amount) as total_sales
from
	sales s
inner join products p on
	s.product_id = p.product_id
group by
	p.category
     select
	distinct p.category,
	SUM(s.total_amount) over(partition by p.category) as total_sales
from
	sales s
inner join products p on
	s.product_id = p.product_id
	-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
     select
	p.product_name,
	extract(month from s.sale_date) as month_d,
	extract(year from s.sale_date) as year_d,
	SUM(s.total_amount) over(partition by p.product_name, extract(month from s.sale_date), extract(year from s.sale_date)) as total_sales
from
	sales s
inner join products p on
	s.product_id = p.product_id 
     select
	distinct p.product_name,
	extract(month from s.sale_date) as month_d,
	extract(year from s.sale_date) as year_d,
	SUM(s.total_amount) as total_sales
from
	sales s
inner join products p on
	s.product_id = p.product_id
group by
	p.product_name,
	month_d,
	year_d
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
    select
	p.product_name
from
	products p
where
	p.product_id not in (
	select
		s.product_id
	from
		sales s
	where
		s.sale_date >= current_date + interval '6 months')
	-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
     select
	p.product_name,
	sum(s.quantity_sold) as quantity_sold
from
	products p
join sales s on
	p.product_id = s.product_id
where
	p.price between 200 and 800
group by
	p.product_name
	-- 49. Write a query to find the customers who spent the most money in the year 2023.
     select
	c.first_name,
	SUM(s.total_amount) as total_sales
from
	customers c
join sales s on
	c.customer_id = s.customer_id
where
	extract(year from s.sale_date) = '2023'
group by
	c.first_name
order by
	total_sales desc
	-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
       select
	p.product_name,
	sum(s.quantity_sold) as quantity_sold
from
	products p
join sales s on
	p.product_id = s.product_id
where
	p.price > 200
group by
	p.product_name
having
	sum(s.quantity_sold) > 100
	-- =====================================================
	-- PART 2
	-- =====================================================
	-- =====================================================
	-- SUBQUERY QUESTIONS
	-- =====================================================
	-- 51. Which customers have spent more than the average spending of all customers?
       
      select
	*
from
	sales
            select
	AVG(s.total_amount) as avg_amount
from
	sales s 
      
      with customers_spending as (
	select
		s.customer_id,
		concat(c.first_name, ' ', c.last_name) as full_name,
		SUM(s.total_amount) as total_spent
	from
		sales s
	left join customers c on
		s.customer_id = c.customer_id
	group by
		s.customer_id,
		c.first_name,
		c.last_name
      )
      select
		s.customer_id,
		concat(c.first_name, ' ', c.last_name) as full_name,
		SUM(s.total_amount) as total_spent
	from
		sales s
	left join customers c on
		s.customer_id = c.customer_id
	where total_spent > (  select
	AVG(total_amount)
from
	sales )
	group by
		s.customer_id,
		c.first_name,
		c.last_name
 
	-- 52. Which products are priced higher than the average price of all products?
	select * from products p where p.price > (select avg(price) from products)
	-- 53. Which customers have never made a purchase?
	select * from customers c left join sales s on c.customer_id = s.customer_id where s.customer_id is null
	select * from customers c where not exists (select 1 from sales s where c.customer_id = s.customer_id )
	-- 54. Which products have never been sold?
	select * from products p where not exists (select 1 from sales s where p.product_id = s.product_id)
    select * from products c left join sales s on c.product_id = s.product_id where s.product_id is null

	-- 55. Which customer made the single most expensive purchase?
    select
	c.*
from
	sales s
inner join customers c on
	s.customer_id = c.customer_id
order by
	s.total_amount desc
limit 1
    select
	c.*,
	s.total_amount
from
	sales s
inner join customers c on
	s.customer_id = c.customer_id
where
	s.total_amount = (
	select
		max(total_amount)
	from
		sales)
	-- 56. Which products have total sales greater than the average total sales across all products?

    select
	p.product_name,
	sum(s.total_amount) as total_sales
from
	products p
inner join sales s on
	p.product_id = s.product_id
group by
	p.product_name
	having sum(s.total_amount) > (    select
	avg(total_amount)
from
	sales)
	-- 57. Which customers registered earlier than the average registration date?
	select * from customers c where c.registration_date < (	select to_timestamp(avg(extract(epoch from c.registration_date)))::date from customers c
)
	-- 58. Which products have a price higher than the average price within their own category?
select p.category, avg(p.price) as price from products p group by p.category
select * from products p where p.price > (select avg(p2.price) from products p2 where p2.category = p.category)
	-- 59. Which customers have spent more than the customer with ID = 10?
select s.customer_id,sum(s.total_amount) as total_spent from sales s group by customer_id
select sum(s.total_amount) as total_spent from sales s where s.customer_id=10
select concat(c.first_name,' ', c.last_name) as full_name,sum(s.total_amount) as total_spent from customers c inner join sales s on c.customer_id=s.customer_id group by c.first_name,c.last_name

	-- 60. Which products have total quantity sold greater than the overall average quantity sold?
  select avg(quantity_sold) as quantity_sold from sales 
  
  select s.product_id, sum(s.quantity_sold) as total_quantiry_sold from sales s group by s.product_id having sum(s.quantity_sold) > (  select avg(quantity_sold) as quantity_sold from sales 
)

	-- =====================================================
	-- COMMON TABLE EXPRESSIONS (CTEs)
	-- =====================================================
	-- 61. Create an intermediate result that calculates the total amount spent by each customer,
	--     then determine which customers are the top 5 highest spenders.
      
      with customers_spending as (
	select
		s.customer_id,
		concat(c.first_name, ' ', c.last_name) as full_name,
		SUM(s.total_amount) as total_spent
	from
		sales s
	left join customers c on
		s.customer_id = c.customer_id
	group by
		s.customer_id,
		c.first_name,
		c.last_name
      )
      select * from customers_spending order by total_spent desc limit 5
	-- 62. Create an intermediate result that calculates total quantity sold per product,
	--     then determine which products are the top 3 most sold.
      
      with total_quantity_sold_per_product as (      select p.product_name, sum(s.quantity_sold) as total_quantity_sold from sales s join products p on s.product_id = p.product_id group by p.product_name
 )
      
select * from total_quantity_sold_per_product order by total_quantity_sold desc limit 3
	-- 63. Create an intermediate result showing total sales per product category,
	--     then determine which category generates the highest revenue.
 with total_sales_per_category as (
   select p.category, sum(s.total_amount) as total_sales from sales s join products p on s.product_id = p.product_id group by p.category
 )
 select * from total_sales_per_category order by total_sales desc limit 1
      
	-- 64. Create an intermediate result that calculates the number of purchases per customer,
	--     then identify customers who purchased more than twice.
 with no_of_purchases_per_customer as (  select s.customer_id , count(*) as no_of_purchase from sales s group by s.customer_id
)
select * from no_of_purchases_per_customer where no_of_purchase > 2
	-- 65. Create an intermediate result that calculates the total quantity sold per product,
	--     then determine which products sold more than the average quantity sold.
      	with total_quantity_sold_per_product as (
      	select s.product_id, sum(s.quantity_sold) as total_quantity_sold from sales s group by s.product_id
      	)
      	select * from total_quantity_sold_per_product where total_quantity_sold > ( select avg(quantity_sold) as quantity_sold from sales 
)

	-- 66. Create an intermediate result that calculates total spending per customer,
	--     then determine which customers spent more than the average spending.
      	  with customers_spending as (
	select
		s.customer_id,
		concat(c.first_name, ' ', c.last_name) as full_name,
		SUM(s.total_amount) as total_spent
	from
		sales s
	left join customers c on
		s.customer_id = c.customer_id
	group by
		s.customer_id,
		c.first_name,
		c.last_name
      )
      select * from customers_spending where total_spent > (select avg(total_amount) from sales )
	-- 67. Create an intermediate result that calculates total revenue per product,
	--     then list the products ordered from highest revenue to lowest.
      with total_revevue_per_product as (
    select
	p.product_name,
	sum(s.total_amount) as total_revenue
from
	products p
inner join sales s on
	p.product_id = s.product_id
group by
	p.product_name
)
      
select * from total_revevue_per_product order by total_revenue desc 
      
	-- 68. Create an intermediate result showing monthly sales totals,
	--     then determine which month had the highest revenue.
with monthly_sales_totals as (
select TO_CHAR(DATE_TRUNC('month', s.sale_date),'Month') as month,SUM(s.total_amount) as total_sales from sales s group by s.sale_date

)
select * from monthly_sales_totals order by total_sales desc limit 1
	-- 69. Create an intermediate result that calculates the number of sales per product,
	--     then determine which products were purchased by more than three customers.
 with no_of_sales_per_product as (select s.product_id , count(s.customer_id) as no_of_customer_purchase from sales s group by s.product_id
)
select * from no_of_sales_per_product where no_of_customer_purchase > 3
	-- 70. Create an intermediate result showing total quantity sold per product,
	--     then identify products that sold less than the average quantity sold.
with total_quantity_sold_per_product as (
  select s.product_id, sum(s.quantity_sold) as total_quantity_sold from sales s group by s.product_id )
  
  select * from total_quantity_sold_per_product where total_quantity_sold > ( select avg(quantity_sold) as quantity_sold from sales 
)


	-- =====================================================
	-- WINDOW FUNCTION QUESTIONS
	-- =====================================================
	-- 71. Rank customers based on the total amount they have spent.

     select
		s.customer_id,
		concat(c.first_name, ' ', c.last_name) as full_name,
		SUM(s.total_amount) as total_spent,
		RANK() OVER(order by sum(s.total_amount) desc ) as index
	from
		sales s
	 join customers c on
		s.customer_id = c.customer_id
	group by s.customer_id,c.first_name,c.last_name
	-- 72. Rank products based on total quantity sold.
	  select s.product_id,p.product_name, sum(s.quantity_sold) as total_quantity_sold, RANK() OVER(order by sum(s.quantity_sold) desc) as index from sales s join products p on s.product_id=p.product_id group by s.product_id,p.product_name 

	-- 73. Identify the 3rd highest spending customer.
	  with highest_customer_spendin as ( select
		s.customer_id,
		concat(c.first_name, ' ', c.last_name) as full_name,
		SUM(s.total_amount) as total_spent,
		RANK() OVER(order by sum(s.total_amount) desc ) as index
	from
		sales s
	 join customers c on
		s.customer_id = c.customer_id
	group by s.customer_id,c.first_name,c.last_name)
	select * from highest_customer_spendin cs where cs.index = 3
	-- 74. Identify the 2nd most expensive product.
	 with expensive_product as ( select p.product_name , RANK() over(order by p.price desc) as index from products p)
	select * from expensive_product cs where cs.index = 3
	-- 75. Show the ranking of products within each category based on price.
	select p.category,p.price , RANK() over(partition by p.category order by p.price desc) as index from products p 
	
	-- 76. Show the ranking of customers based on the number of purchases they made.

	select
	s.customer_id,
	count(*) as no_of_purchases,
	rank() over(order by count(*) desc) as index
from
	sales s
	group by s.customer_id

	-- 77. Show the running total of sales amounts ordered by sale_date.
	select s.sale_date, SUM(s.total_amount) over(order by s.sale_date) as total_sales from sales s 
	-- 78. Show the previous sale amount for each sale ordered by sale_date.
	select s.sale_date, lag(s.total_amount) over(order by s.sale_date) as total_sales from sales s 

	-- 79. Show the next sale amount for each sale ordered by sale_date.
	select s.sale_date, LEAD(s.total_amount) over(order by s.sale_date) as total_sales from sales s 

	-- 80. Divide customers into 4 groups based on total spending.
	select
		s.customer_id,
		concat(c.first_name, ' ', c.last_name) as full_name,
		SUM(s.total_amount) as total_spent,
		NTILE(4) OVER(order by sum(s.total_amount) desc ) as index
	from
		sales s
	 join customers c on
		s.customer_id = c.customer_id
	group by s.customer_id,c.first_name,c.last_name
	-- =====================================================
	-- ADVANCED ANALYTICAL QUESTIONS
	-- =====================================================
	-- 81. Which customers bought products in more than one category?
	select * from sales
	select * from products
	select s.product_id,p.category,s.customer_id,count(*) as bought_more from sales s join products p on s.product_id=p.product_id  group by s.product_id,p.category,s.customer_id having count(*) > 1
	
	-- 82. Which customers purchased products within 7 days of registering?
	     select
	*
from
	customers c
inner join sales s on
	c.customer_id = s.customer_id
where
	s.sale_date <= c.registration_date + interval '7 days'
	-- 83. Which products have lower stock remaining than the average stock quantity?

	with products_stock_remaining as (
	
     select
     p.product_name,
	s.product_id,
	s.quantity_sold,
	i.stock_quantity,
	i.stock_quantity - s.quantity_sold as rem
from
	sales s
join inventory i on
	s.product_id = i.product_id
join products p on p.product_id = i.product_id
	)
	
	select * from products_stock_remaining where rem > (select avg(stock_quantity) from products)

	-- 84. Which customers purchased the same product more than once?
	with customer_total_products_purchased as (select s.customer_id, count(s.product_id) as total_products_purchased from sales s group by s.customer_id
 )
select c.first_name,c.last_name,ctqs.total_products_purchased from customer_total_products_purchased  ctqs join customers c on ctqs.customer_id = c.customer_id where ctqs.total_products_purchased > 1
	
	-- 85. Which product categories generated the highest total revenue?
	select p.category ,SUM(s.total_amount) as total_revenue from sales s join products p on s.product_id=s.product_id group by p.category order by total_revenue desc limit 1
	-- 86. Which products are among the top 3 most sold products?
	select p.product_name ,SUM(s.total_amount) as total_revenue from sales s join products p on s.product_id=s.product_id group by p.product_name order by total_revenue desc limit 3

	-- 87. Which customers purchased the most expensive product?
	with most_expensive as (	select * from products p order by p.price desc limit 1
)
select concat(c.first_name,' ',c.last_name) as full_name,c.email,c.phone_number from customers c join sales s on c.customer_id=s.customer_id join most_expensive ms on s.product_id = ms.product_id
	-- 88. Which products were purchased by the highest number of unique customers?
select distinct s.customer_id,s.product_id from sales s 
	-- 89. Which customers made purchases above the average sale amount?
with customer_made_purchase as (
select s.customer_id from sales s where s.total_amount > (select avg(total_amount) from sales)

)
select * from customers c join customer_made_purchase cmp on c.customer_id=cmp.customer_id
	-- 90. Which customers purchased more products than the average quantity purchased per customer?
with customer_total_quantity_sold as (select s.customer_id, sum(s.quantity_sold) as total_purchased from sales s group by s.customer_id
 )
select c.first_name,c.last_name,ctqs.total_purchased from customer_total_quantity_sold  ctqs join customers c on ctqs.customer_id = c.customer_id where ctqs.total_purchased > ( select avg(total_purchased) from customer_total_quantity_sold)
	-- =====================================================
	-- ADVANCED WINDOW + ANALYTICAL PROBLEMS
	-- =====================================================
	-- 91. Which customers rank in the top 10% of spending?
	-- 92. Which products contribute to the top 50% of total revenue?
	-- 93. Which customers made purchases in consecutive months?
	-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
      
       with products_stock_diff as (      select p.product_name, p.stock_quantity - s.quantity_sold as stock_diff from products p join sales s on p.product_id = s.product_id
 )
 
 select psd.product_name,psd.stock_diff, rank() over(order by psd.stock_diff desc) as index  from products_stock_diff psd
       
       --- 95. Which customers have spending above the average spending of their membership tier?
    with customer_with_sales_and_memebrship_avg as (
        select c.first_name,c.membership_status, sum(s.total_amount) as total_sales, avg(sum(s.total_amount)) over(partition by c.membership_status) as avg_member_ship_tier from customers c join sales s on c.customer_id =s.customer_id group by  c.first_name,c.membership_status
    )
    
    select * from customer_with_sales_and_memebrship_avg sv   where sv.total_sales > sv.avg_member_ship_tier 
     
	-- 96. Which products have higher sales than the average sales within their category?
    
    with products_with_sales_and_category_avg as (
        select p.product_name,p.category, sum(s.total_amount) as total_sales, avg(sum(s.total_amount)) over(partition by p.category) as avg_catgory from products p join sales s on p.product_id=s.product_id group by p.product_name,p.category
    )
    
    select * from products_with_sales_and_category_avg sv   where sv.total_sales > sv.avg_catgory 
     
	-- 97. Which customer made the largest single purchase relative to their total spending?
with total_customer_spedning as (select s.customer_id,sum(s.total_amount) as total_spending from sales s group by s .customer_id
 ),
 laregst_songle_purchase as (
 select s.customer_id, max(s.total_amount) from sales s group by s.customer_id order by max(s.total_amount) desc 
 ),
 customers_relative_s as (
 
 select cs.customer_id, lsp.max / cs.total_spending as relatibe_s from total_customer_spedning cs join laregst_songle_purchase lsp on cs.customer_id=lsp.customer_id),
  
 customer_made as (
 select c.*,rank() over(order by cr.relatibe_s desc) from customers_relative_s cr join customers c on cr.customer_id = c.customer_id )
 
 select * from customer_made where rank = 1
	-- 98. Which products rank among the top 3 most sold products within each category?
	select p.category ,SUM(s.total_amount) as total_revenue, rank() over(order by SUM(s.total_amount) desc ) from sales s join products p on s.product_id=s.product_id group by p.category 

	-- 99. Which customers are tied for the highest total spending?
select s.customer_id,sum(s.total_amount) as total_spending, rank() over(order by sum(s.total_amount) desc) from sales s group by s.customer_id
	-- 100. Which products generated sales every year present in the dataset?