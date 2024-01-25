-- CREATE Statements --
-- Table: DRIVER --

-- Check if the "driver" table exists --

DROP TABLE IF EXISTS driver CASCADE;

-- Creating table: DRIVER --

CREATE TABLE driver (
  driver_id INT PRIMARY KEY,
  PESEL CHAR(11) NOT NULL UNIQUE,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  city VARCHAR(20) NOT NULL,
  street VARCHAR(50),
  employment_date DATE NOT NULL
  );
