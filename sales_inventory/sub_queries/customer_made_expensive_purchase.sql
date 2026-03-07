
	-- 55. Which customer made the single most expensive purchase?
       select c.*,s.total_amount from sales s inner join customers c on s.customer_id = c.customer_id where s.total_amount  = (select max(total_amount) from sales) 
