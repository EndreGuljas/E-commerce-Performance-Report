-- ----------------------------------------------------------------------------
-- SECTION 1: DATA EXPLORATION & VALIDATION
-- ----------------------------------------------------------------------------

-- Determine data date range
SELECT 
    MIN(purchase_ts) AS earliest_order,
    MAX(purchase_ts) AS latest_order
FROM core.orders;

-- ----------------------------------------------------------------------------
-- SECTION 2: SALES TRENDS ANALYSIS
-- ----------------------------------------------------------------------------

-- AOV for US market in 2019
SELECT
    ROUND(AVG(usd_price), 2) AS usd_aov
FROM core.orders
WHERE currency = 'USD'
    AND EXTRACT(YEAR FROM purchase_ts) = 2019;

-- Overall AOV across all years
SELECT
    ROUND(AVG(usd_price), 2) AS overall_aov
FROM core.orders;

-- Monthly order volume trends (recent to oldest)
SELECT
    DATE_TRUNC(ship_ts, MONTH) AS ship_month,
    COUNT(order_id) AS order_count
FROM core.order_status
GROUP BY 1
ORDER BY 1 DESC;

-- Refund identification for order analysis
SELECT 
    *,
    CASE
        WHEN refund_ts IS NULL THEN 0
        ELSE 1
    END AS is_refund
FROM core.order_status
LIMIT 20;

-- Calculate fulfillment efficiency (days to ship)
SELECT 
    *,
    DATE_DIFF(ship_ts, purchase_ts, DAY) AS days_to_ship
FROM core.order_status;
