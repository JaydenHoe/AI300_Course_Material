USE car_insurance	;
SELECT 
	client_id, 
	first_name, 
    last_name
FROM clients ;

SELECT *
FROM insurance_claims
WHERE clm_amt > 3000 ; 

-- Example of query

SELECT MIN(clm_amt), MAX(clm_amt), AVG(clm_amt)
FROM insurance_claims;

-- Lesson 4.1.1 In-Class Practice
SELECT client_id, first_name, last_name, income
FROM clients;

-- Lesson 4.2.1 In-Class Practice
SELECT claim_id, travel_time, clm_amt
FROM insurance_claims
WHERE clm_amt > 3000;

-- Lesson 4.3.1 In-Class Practice
#Question 1
SELECT MIN(vehicle_manu_date)
FROM vehicle
WHERE vehicle_type = "SUV" ;
#Question 2
SELECT MAX(vehicle_manu_date)
FROM vehicle;
#Question 3
SELECT COUNT(*)
FROM vehicle
WHERE vehicle_type = 'Minivan'
	AND vehicle_use = 'Commercial' ;
#Question 4
SELECT AVG(vehicle_manu_date)
FROM vehicle
WHERE vehicle_type = "SUV" ;
#Question 5
SELECT SUM(bluebook)
FROM vehicle
WHERE vehicle_type = "SUV" ;

## Note that some of the Question above can be combined :)

-- Demo of Groupby
SELECT
	vehicle_type AS type_of_vehicle,
    COUNT(*) AS count
FROM vehicle
GROUP BY vehicle_type;

-- 4.4.1 In class practice

SELECT vehicle_type, MIN(vehicle_manu_date) AS oldest_vehicle_manu_date
FROM vehicle
GROUP BY vehicle_type;

## Below is just a self practices question that include some conditions including having.
SELECT vehicle_type, SUM(bluebook) AS total_bluebook
FROM vehicle
WHERE vehicle_use = 'commercial'
GROUP BY vehicle_type
HAVING total_bluebook > 200000
AND total_bluebook < 1000000 ;

-- Lesson 4.5.1

SELECT 
	vehicle_type, 
	AVG(vehicle_manu_date) AS avg_vehicle_manu_date
FROM vehicle
GROUP BY vehicle_type
HAVING avg_vehicle_manu_date > 2014 ; 

-- Lesson 4.6.1
#Question 1
SELECT *
FROM vehicle
ORDER BY vehicle_type,
	vehicle_manu_date DESC;
    
#Question 2
SELECT 
	vehicle_type,
	MIN(vehicle_manu_date)
FROM vehicle
GROUP BY vehicle_type
HAVING MIN(vehicle_manu_date) > 1998
ORDER BY vehicle_type








