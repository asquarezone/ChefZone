CREATE TABLE customers(
  id CHAR(32) NOT NULL PRIMARY KEY,
  first_name VARCHAR(64),
  last_name VARCHAR(64),
  email VARCHAR(64)
);

INSERT into customers (id,first_name,last_name,email) VALUES(uuid(),'Tony','Stark','tony.stark@avengers.com');
INSERT into customers (id,first_name,last_name,email) VALUES(uuid(),'Natasha','Romanoff','Natasha.Romanoff@avengers.com');
INSERT into customers (id,first_name,last_name,email) VALUES(uuid(),'Steve','Rogers','Captian.America@avengers.com');
