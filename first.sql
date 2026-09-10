CREATE DATABASE IF NOT EXISTS instagram ;

USE instagram ;
CREATE TABLE user (
      id INT ,
      name VARCHAR(30) NOT NULL,
      email VARCHAR(50) ,
      followers INT ,
      following INT 
    );
