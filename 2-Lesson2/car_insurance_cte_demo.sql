# Original query (without CTE)
/* 
Note: WHERE filter is performed after JOIN.
If source tables have millions of rows each,
this could lead to slow queries that are 
computationally expensive to run.
*/

-- 162 rows
SELECT * FROM insurance_claims AS ins
INNER JOIN vehicle AS veh
	ON ins.vehicle_id = veh.vehicle_id
WHERE clm_amt > 3000 AND vehicle_use = 'Private';

# COMMON TABLE EXPRESSIONS (CTE)
/* Why CTEs? Allows you to save tables as intermediate result under "variables".
   Note: Variables are short-lived and do not get written to your database.
		 These variables valid only during your query and are used in later steps
*/

WITH high_value_claims AS (
	SELECT * FROM insurance_claims
	WHERE clm_amt > 3000
), private_use_vehicles AS (
	SELECT * FROM vehicle
	WHERE vehicle_use = 'Private'
)
SELECT * FROM high_value_claims AS c  -- notice the use of variable as table
INNER JOIN private_use_vehicles AS v
	ON c.vehicle_id = v.vehicle_id;
-- still 162 rows
-- but query has been optimised (runs faster)
