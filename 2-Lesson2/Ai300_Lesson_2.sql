USE car_insurance;
-- 3.2.1 In-Class Practice : Inner Join
SELECT * 
FROM insurance_claims c
INNER JOIN vehicle v
ON c.vehicle_id = v.vehicle_id;

SELECT claim_id, clm_amt,c.vehicle_id, bluebook
FROM insurance_claims c
INNER JOIN vehicle v
ON c.vehicle_id = v.vehicle_id;

-- Below example of interview question on joining two column
SELECT *
FROM positions AS p
INNER JOIN live_price AS l
	ON p.date = l.date AND p.asset = l.asset;


SELECT *
FROM insurance_claims AS cla
INNER JOIN clients AS cli
	ON (cla.client_firstname = cli.first_name
		AND cla.client_lastname = cli.last_name);

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

SELECT 
	claim_id,
    claim_date,
    clm_amt,
	CASE 
		WHEN clm_amt < 2000 THEN 'CAT A claims'
		WHEN clm_amt < 4000 THEN 'CAT B claims'
		WHEN clm >= 4000 THEN 'CAT C claims'
        ELSE 'unknown'
	END AS claims_categories
FROM insurance_claims;



