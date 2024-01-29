-- CREATE Statements --
-- Table: VEHICLE --

-- Check if the "vehicle" table exists --

DROP TABLE IF EXISTS vehicle CASCADE;

-- Creating table: VEHICLE --

CREATE TABLE vehicle (
	vehicle_id INT PRIMARY KEY,
	registration_number VARCHAR(15) NOT NULL UNIQUE,
	maker VARCHAR(30) NOT NULL,
	model VARCHAR(30) NOT NULL,
	year_of_production INT NOT NULL,
	capacity_kg INT NOT NULL
);
