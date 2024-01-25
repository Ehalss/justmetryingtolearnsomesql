-- SELECT and JOIN Statements --
-- As well as some other silly stuff to practice SQL --

-- Clients that had been serviced with additional cost lesser than 50 --

SELECT customer.*, service.additional_cost
FROM customer
JOIN service ON customer.customer_id = service.customer_id
WHERE service.additional_cost < 50.00;


-- Relocations that were done during weekend SAT-SUN --

SELECT *
FROM move
WHERE WEEKDAY(start_date_and_time) IN (5, 6);


-- Services of total price (rate per km + additional costs) were above 200  --

SELECT *, (distance_in_km * rate_per_km + additional_cost) AS total_cost
FROM service
WHERE (distance_in_km * rate_per_km + additional_cost) > 200.00;


-- Drivers employed for the longest time, list ascending -- 

SELECT *
FROM driver
ORDER BY employment_date ASC
LIMIT 5;


-- Customers who used services in towns different from their place of residence: --

SELECT customer.*, service.from_location, service.to_location
FROM customer
JOIN service ON customer.customer_id = service.customer_id
WHERE customer.city NOT IN (service.from_location, service.to_location);


-- Altering table "service" with driver who completed the service --

-- Dodanie kolumny driver_id do tabeli service
ALTER TABLE service
ADD COLUMN driver_id INT,
ADD CONSTRAINT driver_id_fk FOREIGN KEY(driver_id) REFERENCES driver(driver_id) ON UPDATE NO ACTION ON DELETE NO ACTION;