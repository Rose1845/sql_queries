-- 53. Which customers have never made a purchase?
		select * from customers c where not exists (select 1 from sales s where c.customer_id = s.customer_id )
