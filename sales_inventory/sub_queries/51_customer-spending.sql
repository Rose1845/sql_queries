	-- =====================================================
	-- PART 2
	-- =====================================================
	-- =====================================================
	-- SUBQUERY QUESTIONS
	-- =====================================================
	-- 51. Which customers have spent more than the average spending of all customers?
       
----- average sales amount
            select
	AVG(s.total_amount) as avg_amount
from
	sales s 
------  customer spending cte
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
	*
from
	customers_spending
where
	total_spent > (
	select
		AVG(total_amount) as avg_amount
	from
		sales )