SELECT
	o.product_name
FROM Orders as o
	inner join Customers as c on c.id = o.customer_id
			AND lower(c.name) = ?
