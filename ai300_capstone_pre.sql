USE ai300_capstone;

-- Pre-check on the all table
SELECT *
FROM customer;

DESCRIBE account;
DESCRIBE account_usage;
DESCRIBE churn_status;
DESCRIBE city;
DESCRIBE customer;

SELECT COUNT(*)
FROM account;

SELECT COUNT(*)
FROM account_usage;

SELECT COUNT(*)
FROM churn_status;

SELECT COUNT(*)
FROM city;

SELECT COUNT(*)
FROM customer;

SELECT COUNT(DISTINCT zip_code) AS total_unique_zip_code
FROM customer;

SELECT
    zip_code,
    COUNT(customer_id) AS NumberOfCustomers
FROM
    customer
INNER JOIN
    Orders O ON C.CustomerID = O.CustomerID -- Join on the common CustomerID
GROUP BY
    C.ZipCode -- Group the results by each unique ZIP code
ORDER BY
    C.ZipCode; -- Optional: Order by ZIP code





