	SELECT * FROM customers ;
    SELECT * FROM orders ;
    
	-- OUTER JOIN
    SELECT * 
    FROM customer c
    LEFT JOIN orders o
    ON  c.customer_id = o.customer_id 
    UNION
    SELECT * 
    FROM customer c
    RIGHT JOIN orders o
    ON  c.customer_id = o.customer_id ;