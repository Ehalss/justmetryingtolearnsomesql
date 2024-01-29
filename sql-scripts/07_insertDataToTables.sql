-- INSERT Statements --
-- Inserting records into the table: DRIVER --
-- Only 6 drivers for the simplicity of the excercisem all data is fake for obvious reasons --

-- Inserting records into the table: VEHICLE --
-- Randomly, but logically generated cars data, all data is (obviously) fake--

INSERT INTO vehicle (registration_number, maker, model, year_of_production, capacity_kg)
VALUES
  ('ABC123', 'Ford', 'Transit', 2020, 1500),
  ('XYZ789', 'Mercedes', 'Sprinter', 2019, 1800),
  ('JKL456', 'Iveco', 'Daily', 2021, 2000),
  ('MNO789', 'Renault', 'Master', 2018, 1700),
  ('PQR123', 'Volkswagen', 'Crafter', 2022, 1600),
  ('STU456', 'Fiat', 'Ducato', 2017, 1900);

INSERT INTO driver (driver_id, PESEL, first_name,  last_name, city, street, employment_date, vehicle_plate) VALUES
('00001','87062300576','Damian','Krzychowski','Kazimierz Dolny','Tyszkiewicza','2013-08-22'),
('00002','90040310459','Anna','Nowak','Warszawa','Woloska','2015-08-12'),
('00003','81061020874','Jan','Kowalski','Krakow','Lubelska','2011-11-30'),
('00004','95081530682','Katarzyna','Szymańska','Gdańsk','Piastowska','2018-02-17'),
('00005','88070140896','Marek','Wiśniewski','Poznań','Nowa','2014-06-05'),
('00006','92052750983','Alicja','Lis','Wrocław','Zielona','2016-09-20');


-- Inserting records into the table: MOVE --
-- Only 6 moves because it's funny for 6 drivers to make only one move --

INSERT INTO move (move_id, availability, start_date_and_time, end_date_and_time)
VALUES
  (1, 'Available', '2024-01-25 08:00:00', '2024-01-25 16:00:00'),
  (2, 'Booked', '2024-02-01 10:30:00', '2024-02-01 15:45:00'),
  (3, 'Available', '2024-02-10 12:00:00', '2024-02-10 18:45:00'),
  (4, 'Available', '2024-03-05 09:15:00', '2024-03-05 14:30:00'),
  (5, 'Booked', '2024-03-20 11:30:00', '2024-03-20 16:45:00'),
  (6, 'Available', '2024-04-02 14:45:00', NULL);


-- Inserting records into the table: CUSTOMERS --
-- Randomly generated customers, all data is fake--

INSERT INTO customer (customer_id, first_name, last_name, phone_number, city, street, house_number, apartment_number, postal_code)
VALUES
  (1, 'Agnieszka', 'Kowalska', '111111111', 'Bieszkowice', 'Długa', 55, 2, '12-345'),
  (2, 'Tomasz', 'Nowak', '222222222', 'Warszawa', 'Kwiatowa', 789, NULL, '01-234'),
  (3, 'Magdalena', 'Lis', '333333333', 'Krakow', 'Zielona', 123, 5, '23-456'),
  (4, 'Piotr', 'Szymański', '444444444', 'Gdańsk', 'Morska', 321, NULL, '45-678'),
  (5, 'Karolina', 'Wiśniewska', '555555555', 'Poznań', 'Słoneczna', 456, 7, '56-789'),
  (6, 'Łukasz', 'Krzysztof', '666666666', 'Wrocław', 'Polska', 654, NULL, '67-890');
  
-- Inserting records into the table: SERVICE --
-- Randomly, but logically generated services, all data is fake--

INSERT INTO service (service_id, move_id, customer_id, from_location, to_location, distance_in_km, rate_per_km, additional_cost)
VALUES
  (1, 1, 1, 'Kazimierz Dolny', 'Warszawa', 300, 2.50, 50.00),
  (2, 2, 2, 'Warszawa', 'Krakow', 280, 2.30, 45.00),
  (3, 3, 3, 'Krakow', 'Gdańsk', 450, 2.80, 60.00),
  (4, 4, 4, 'Gdańsk', 'Poznań', 200, 2.20, 40.00),
  (5, 5, 5, 'Poznań', 'Wrocław', 150, 2.00, 30.00),
  (6, 6, 6, 'Wrocław', 'Warszawa', 320, 2.60, 55.00);


