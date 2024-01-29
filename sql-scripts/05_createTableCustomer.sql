-- CREATE Statements --
-- Table: CUSTOMER --

-- Check if the "customer" table exists --

DROP TABLE IF EXISTS customer CASCADE;

-- Creating table: CUSTOMER --

CREATE TABLE customer (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  phone_number VARCHAR(9) NOT NULL,
  city VARCHAR(20) NOT NULL,
  street VARCHAR(50),
  house_number INT NOT NULL,
  apartment_number INT,
  postal_code CHAR(6) NOT NULL
);