USE ai300_capstone;

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

SHOW columns
FROM account;

SHOW columns
FROM account_usage;

SHOW columns
FROM churn_status;

SHOW columns
FROM city;

SHOW columns
FROM customer;

SELECT
	-- account table
    t1.account_id,
    t1.tenure_months,
    t1.num_referrals,
    t1.has_internet_service,
    t1.internet_type,
    t1.has_unlimited_data,
    t1.has_phone_service,
    t1.has_multiple_lines,
    t1.has_premium_tech_support,
    t1.has_online_security,
    t1.has_online_backup,
    t1.has_device_protection,
    t1.contract_type,
    t1.paperless_billing,
    t1.payment_method,
    -- account usage
    t2.avg_long_distance_fee_monthly,
    t2.total_long_distance_fee,
    t2.avg_gb_download_monthly,
    t2.stream_tv,
    t2.stream_movie,
    t2.stream_music,
    t2.total_monthly_fee,
    t2.total_charges_quarter,
    t2.total_refunds,
    -- customer
    t3.gender,
    t3.age,
    t3.senior_citizen,
    t3.married,
    t3.num_dependents,
    t3.zip_code,
    -- city
    t4.zip_code,
    t4.city,
    t4.latitude,
    t4.longitude,
    t4.population,
    -- churn_status
    t5.churn_category,
    t5.churn_reason,
    t5.status,
    t5.churn_label
FROM account t1
LEFT JOIN account_usage t2
	ON t1.account_id = t2.account_id
LEFT JOIN customer t3
	ON t1.customer_id = t3.customer_id
LEFT JOIN city t4
	ON t3.zip_code = t4.zip_code
LEFT JOIN churn_status t5
	ON t1.customer_id = t5.customer_id ;
    
SELECT *
FROM churn_status
WHERE churn_label = '';


    