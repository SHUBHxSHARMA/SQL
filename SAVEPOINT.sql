SELECT * FROM accounts ;

 -- here we are starting a transaction between 2 people 
 
 START TRANSACTION ;
 
UPDATE accounts SET balance = balance +1000 WHERE id = 1 ;
SAVEPOINT after_wallet_topup ; 

UPDATE accounts SET balance = balance + 10 WHERE id = 1 ;

-- error occcurs

ROLLBACK TO after_wallet_topup ;
COMMIT ;
