  select s.product_id, sum(s.quantity_sold) as total_quantiry_sold from sales s group by s.product_id having sum(s.quantity_sold) > (  select avg(quantity_sold) as quantity_sold from sales 
)