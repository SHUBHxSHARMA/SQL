SELECT * FROM customers ;
SELECT * FROM orders ; 

 -- LEFT EXCLUSIVE JOIN
SELECT *
FROM customers as A
LEFT JOIN orders as B 
ON A.customer_id = B.customer_id 
WHERE B.customer_id IS NULL ;

-- RIGHT EXCLUSIVE JOIN
SELECT *
FROM customers as A
RIGHT JOIN orders as B 
ON A.customer_id = B.customer_id 
WHERE A.customer_id IS NULL ;