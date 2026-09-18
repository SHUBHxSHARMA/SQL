-- PROCEDURE 
 
 -- we change the delimetor so that sql dont get confused when we are making a procedure
 
DELIMITER $$
 
SELECT * FROM new_accounts ;

CREATE  PROCEDURE check_balance(IN acc_id INT , OUT bal DECIMAL(10,2))
BEGIN
	SELECT balance INTO bal 
    FROM new_accounts
    WHERE account_id = acc_id ;
END $$     
    
DELIMITER ;

CALL check_balance(1 , @balance) ;
SELECT @balance ;