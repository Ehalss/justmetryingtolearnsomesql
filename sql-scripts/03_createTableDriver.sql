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
  employment_date DATE NOT NULL,
  
-- VEHICLE RELATION COULD HAVE BEEN DONE BY WITH SEPARATE SCRIPT: --
-- ALTER TABLE driver --
-- vehicle_plate VARCHAR(15) NOT NULL,
-- ADD CONSTRAINT vehicle_plate_fk_drivers FOREIGN KEY(vehicle_plate) REFERENCES vehicle(registration_number) ON UPDATE NO ACTION ON DELETE NO ACTION; --

  vehicle_plate VARCHAR(30) NOT NULL,
  CONSTRAINT vehicle_plate_fk_drivers FOREIGN KEY(vehicle_plate) REFERENCES vehicle(registration_number) ON UPDATE NO ACTION ON DELETE NO ACTION
);
