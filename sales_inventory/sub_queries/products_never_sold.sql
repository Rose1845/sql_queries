	-- 54. Which products have never been sold?
	select * from products p where not exists (select 1 from sales s where p.product_id = s.product_id)