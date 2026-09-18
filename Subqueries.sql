-- SUB QUERIES

SELECT * FROM customers;
SELECT * FROM orders ;


SELECT * 
FROM orders 
WHERE amount > (
	SELECT AVG(AMOUNT)
    FROM orders
    ) ;
   
SELECT name ,(
	SELECT COUNT(*)
    FROM orders o 
    WHERE o.customer_id = c.customer_id )
    AS order_count
FROM customer c ;    
    
    