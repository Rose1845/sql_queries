	-- 57. Which customers registered earlier than the average registration date?
	select * from customers c where c.registration_date < (	select to_timestamp(avg(extract(epoch from c.registration_date)))::date from customers c
)