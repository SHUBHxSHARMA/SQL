SELECT * FROM customers ;
SELECT * FROM orders ;

-- self join 
SELECT * 
FROM customers as A
JOIN orders as B 
ON A.customer_id = B.customer_id;