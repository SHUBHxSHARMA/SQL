	SELECT * FROM customers ;
    SELECT * FROM orders ;
    
    -- left join
    SELECT * 
    FROM customer c
    LEFT JOIN orders o
    ON  c.customer_id = o.customer_id ;