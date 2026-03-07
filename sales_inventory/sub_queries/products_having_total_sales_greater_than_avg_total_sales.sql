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