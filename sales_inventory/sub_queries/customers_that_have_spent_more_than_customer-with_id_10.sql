select concat(c.first_name,' ', c.last_name) as full_name,sum(s.total_amount) as total_spent from customers c inner join sales s on c.customer_id=s.customer_id group by c.first_name,c.last_name
