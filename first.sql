CREATE DATABASE IF NOT EXISTS instagram ;

USE instagram ;
CREATE TABLE user (
      id INT ,
      name VARCHAR(30) NOT NULL,
      email VARCHAR(50) UNIQUE  ,
      followers INT DEFAULT 0  ,
      following INT ,
      age INT ,
      CONSTRAINT age_check CHECK (age >= 13  )
    );
