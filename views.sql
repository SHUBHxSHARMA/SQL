USE prime ;
SELECT * FROM customers;
SELECT * FROM orders ;

CREATE VIEW view1 AS
SELECT customer_id , name FROM customers ;

SELECT * FROM view1 ;