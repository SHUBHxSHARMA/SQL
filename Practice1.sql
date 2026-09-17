CREATE DATABASE college ;
USE college ;
CREATE TABLE teacher(
id INT UNIQUE ,
name VARCHAR(20) ,
subject VARCHAR(20) ,
salary INT ) ;


INSERT INTO teacher 
VALUES 
(23 , "ajay" , "math" , 50000) , 
(47 , "bharat" , "english" , 60000 ) ,
(18 , "chetan" , "chemistry" , 45000) , 
(9 , "divya" , "physics" , 75000) ;

SELECT * FROM teacher ; 

SELECT  * FROM teacher 
WHERE salary > 55000 ;

ALTER TABLE teacher 
CHANGE COLUMN salary  ctc INT ;

UPDATE teacher 
SET ctc = ctc + ( ctc * 20/100);  
SELECT * FROM teacher ; 

ALTER TABLE teacher
ADD COLUMN city VARCHAR(10) DEFAULT "Gurgaon" ; 
SELECT * FROM teacher ; 

ALTER TABLE teacher
DROP ctc ;
SELECT * FROM teacher ; 