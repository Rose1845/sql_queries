	-- 52. Which products are priced higher than the average price of all products?
	select * from products p where p.price > (select avg(price) from products)