 -- INDEX 
 CREATE TABLE new_accounts (
 account_id INT PRIMARY KEY ,
 name VARCHAR(50),
 balance DECIMAL(10,2),
 branch VARCHAR(50)
 );
 
 INSERT INTO new_accounts VALUES
 (1, "Adam" , 500.00 , "Mumbai"),
 (2 , "Bob" ,300.00 , "Delhi"),
 (3,  "Charlie" , 700.00 , "Banglore"),
 (4 ,"David",1000.00 , "Noida"); 
 
 SELECT * FROM new_accounts ;
 
 CREATE INDEX idx_branch ON new_accounts(branch);
 
 SHOW INDEX FROM new_accounts;
 
 SELECT * 
 FROM new_accounts 
 WHERE branch = "Mumbai";
 
 CREATE INDEX idx2 ON new_accounts(branch , balance);
 
 DROP INDEX idx2 ON new_accounts ; 