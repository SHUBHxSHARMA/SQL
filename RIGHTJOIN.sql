	SELECT * FROM customers ;
    SELECT * FROM orders ;
    
    -- right join
    SELECT * 
    FROM customer c
    RIGHT JOIN orders o
    ON  c.customer_id = o.customer_id ;