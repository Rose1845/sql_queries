	-- 58. Which products have a price higher than the average price within their own category?

select * from products p where p.price > (select avg(p2.price) from products p2 where p2.category = p.category)
