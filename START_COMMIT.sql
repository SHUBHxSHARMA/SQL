
SET autocommit = 0 ;
SELECT * FROM accounts ;

 -- here we are starting a transaction between 2 people 
 
 START TRANSACTION ;
 
UPDATE accounts SET balance = balance - 50 WHERE id = 1 ;
UPDATE accounts SET balance = balance + 50 WHERE id = 2 ;

COMMIT ;

