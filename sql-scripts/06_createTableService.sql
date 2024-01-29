-- CREATE Statements --
-- Table: SERVICE --

-- Check if the "service" table exists --

DROP TABLE IF EXISTS service CASCADE;

-- Creating table: SERVICE --

CREATE TABLE service (
  service_id SERIAL PRIMARY KEY,
  
  move_id INT,
	CONSTRAINT move_id_fk FOREIGN KEY(move_id) REFERENCES move(move_id) ON UPDATE NO ACTION ON DELETE NO ACTION,
  
  customer_id INT, 
	CONSTRAINT customer_id_fk FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON UPDATE NO ACTION ON DELETE NO ACTION,
  
  vehicle_id INT,
	CONSTRAINT vehicle_id_fk FOREIGN KEY(vehicle_id) REFERENCES vehicle(vehicle_id) ON UPDATE NO ACTION ON DELETE NO ACTION,

-- vehicle table has been added later, so the service table could be modified by using: --
-- ALTER TABLE service --
-- ADD COLUMN vehicle_id INT, --
-- ADD CONSTRAINT vehicle_id_fk FOREIGN KEY(vehicle_id) REFERENCES vehicle(vehicle_id) ON UPDATE NO ACTION ON DELETE NO ACTION; --
  
  from_location VARCHAR(30) NULL,
  to_location VARCHAR(30) NULL,
  distance_in_km INT NULL,
  rate_per_km DECIMAL(8,2) NULL,
  additional_cost DECIMAL(8,2) NULL
);
