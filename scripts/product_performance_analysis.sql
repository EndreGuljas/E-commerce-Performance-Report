/*
MacBook Performance - North America
-----------------------------------
Purpose:
    This script evaluates quarterly sales trends for MacBook products
    within the North American region, including order counts, 
    total revenue, and Average Order Value (AOV).
*/

-- Quarterly MacBook performance in North America
SELECT 
    DATE_TRUNC(o.purchase_ts, QUARTER) AS purchase_quarter, 
    COUNT(o.id)                       AS order_count, 
    ROUND(SUM(o.usd_price), 2)         AS total_sales, 
    ROUND(AVG(o.usd_price), 2)         AS aov
FROM core.orders o
LEFT JOIN core.customers c
    ON o.customer_id = c.id
LEFT JOIN core.geo_lookup g
    ON c.country_code = g.country
WHERE g.region = 'NA' 
  AND LOWER(o.product_name) LIKE '%macbook%'
GROUP BY 1
ORDER BY 1 DESC;
GO

-- Average quarterly metrics for MacBooks in North America
WITH quarterly_metrics AS (
    SELECT 
        DATE_TRUNC(o.purchase_ts, QUARTER) AS purchase_quarter, 
        COUNT(DISTINCT o.id)               AS order_count, 
        ROUND(SUM(o.usd_price), 2)         AS total_sales
    FROM core.orders o
    LEFT JOIN core.customers c
        ON o.customer_id = c.id
    LEFT JOIN core.geo_lookup g 
        ON c.country_code = g.country
    WHERE LOWER(o.product_name) LIKE '%macbook%' 
      AND g.region = 'NA'
    GROUP BY 1
)
SELECT 
    ROUND(AVG(order_count), 2) AS avg_quarterly_orders, 
    ROUND(AVG(total_sales), 2) AS avg_quarterly_sales
FROM quarterly_metrics;
GO
