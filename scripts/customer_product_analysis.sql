/*
Customer & Product Insights
---------------------------
Purpose:
    This script performs segmentation analysis on loyalty programs 
    and evaluates product performance across specific platforms 
    and regions (Australia/Apple catalog).
*/

-- SECTION 1: CUSTOMER & LOYALTY PROGRAM ANALYSIS

-- Account creation analysis (desktop/mobile users)
SELECT 
    id              AS customer_id, 
    loyalty_program AS is_loyalty_customer, 
    created_on      AS account_created_on
FROM core.customers
WHERE account_creation_method IN ('desktop', 'mobile');
GO

-- Loyalty program segmentation with readable labels
SELECT 
    id              AS customer_id, 
    created_on,
    CASE 
        WHEN loyalty_program = 0 THEN 'Non_loyalty_member'
        ELSE 'Loyalty_member'
    END             AS loyalty_program_status
FROM core.customers
WHERE account_creation_method IN ('mobile', 'desktop')
ORDER BY created_on;
GO

-- SECTION 2: PRODUCT PERFORMANCE ANALYSIS

-- Unique products sold via mobile app in Australia
SELECT DISTINCT 
    product_name
FROM core.orders
WHERE currency          = 'AUD' 
  AND purchase_platform = 'mobile app'
ORDER BY product_name ASC;
GO

-- Apple product catalog (including MacBooks)
SELECT DISTINCT 
    product_id, 
    product_name
FROM core.orders
WHERE LOWER(product_name) LIKE '%apple%' 
   OR LOWER(product_name) LIKE '%macbook%';
GO
