CREATE DATABASE IF NOT EXISTS instagram ;

USE instagram ;
CREATE TABLE users (
      id INT ,
      name VARCHAR(30) NOT NULL,
      email VARCHAR(50) UNIQUE  ,
      followers INT DEFAULT 0  ,
      following INT ,
      age INT ,
      CONSTRAINT age_check CHECK (age >= 13  ),
      PRIMARY KEY (id) 
    );

CREATE TABLE post (
	id INT ,
    content VARCHAR(100) ,
    user_id INT ,
    FOREIGN KEY (user_id) REFERENCES users(id) 
);

INSERT INTO post 
( id , content , user_id)
VALUES
(101 ,"Hello World" , 3),
(102 , "BYE BYE" , 1),
(103 , "Hello DElta" , 2) ;

SELECT * FROM  post ;

INSERT INTO users 
( id , age , name , email , followers , following)
VALUES
( 1 , 14 , "adam" , "adam@yahoo.in" , 123 , 145) ,
( 2 , 15 , "bob" , "bob@yahoo.in" , 200 , 200) ,
( 3 , 16 , "casey" , "casey@yahoo.in" , 300 , 306) ,
( 4 , 17 , "donald" , "donald@yahoo.in" , 200 , 105) ;

SELECT *
FROM users
WHERE followers >= 200 ;

SELECT name , age
FROM users
WHERE age < 16 ;