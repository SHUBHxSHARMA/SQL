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

