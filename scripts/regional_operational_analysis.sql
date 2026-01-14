/*
Regional Performance & Delivery Efficiency
------------------------------------------
Purpose:
    This script performs regional lookups for North America and 
    calculates average delivery times across different platforms 
    and timeframes to measure operational efficiency.
*/

-- SECTION 1: REGIONAL ANALYSIS

-- Top 10 countries in North America (Direct lookup)
SELECT 
    country_code
FROM core.geo_lookup
WHERE region = 'NA'
ORDER BY country_code DESC
LIMIT 10;
GO

-- Top 10 countries in North America (With customer data)
SELECT 
    c.country_code, 
    g.region
FROM core.customers c
JOIN core.geo_lookup g 
    ON c.country_code = g.country
WHERE g.region = 'NA'
ORDER BY c.country_code
LIMIT 10;
GO

-- SECTION 2: OPERATIONAL EFFICIENCY - DELIVERY PERFORMANCE

-- Regional delivery time comparison (2022 website orders OR any mobile orders)
SELECT 
    g.region, 
    ROUND(AVG(DATE_DIFF(os.delivery_ts, os.purchase_ts, DAY)), 1) AS avg_days_to_deliver
FROM core.orders o
LEFT JOIN core.customers c
    ON o.customer_id = c.id 
LEFT JOIN core.order_status os
    ON o.id = os.order_id
LEFT JOIN core.geo_lookup g
    ON c.country_code = g.country
WHERE (o.purchase_platform = 'website' AND EXTRACT(YEAR FROM os.purchase_ts) = 2022) 
   OR (o.purchase_platform = 'mobile app')
GROUP BY 1
ORDER BY 2 DESC;
GO
