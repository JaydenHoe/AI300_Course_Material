USE car_insurance;
-- 3.2.1 In-Class Practice : Inner Join
SELECT * 
FROM insurance_claims c
INNER JOIN vehicle v
ON c.vehicle_id = v.vehicle_id;

-- Additional condition for 3.2.1 In Class Practice
-- Filter only SUV

SELECT * 
FROM insurance_claims c
INNER JOIN vehicle v
ON c.vehicle_id = v.vehicle_id
WHERE vehicle_type = 'SUV' ;

-- Lesson 3.2.2 In-Class Practice : Inner join With conditions

SELECT *
FROM insurance_claims c
INNER JOIN vehicle v
ON c.vehicle_id = v.vehicle_id
WHERE travel_time > 30;

-- Lesson 3.3.1 In- Class Practice : Left Join

SELECT *
FROM insurance_claims c
LEFT JOIN vehicle v
ON c.vehicle_id = v.vehicle_id
WHERE vehicle_type = 'SUV' ;

-- Lesson 3.4.1 In- Class Practice : Right join

SELECT *
FROM insurance_claims c
RIGHT JOIN vehicle v
ON c.vehicle_id = v.vehicle_id 
WHERE vehicle_use = 'Private';

-- Lesson 3.6.1 in- Class Practice : Case Expression

SELECT *




