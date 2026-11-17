
USE retail_sales;

-- Query 1: COUNT with NULL

SELECT
    COUNT(*) AS total_records,
    COUNT(discount) AS non_null_discounts
FROM order_items;

-- Query 2: SUM with NULL

SELECT
    SUM(discount) AS total_discount
FROM order_items;

-- Query 3: AVG with NULL

SELECT
    AVG(discount) AS average_discount
FROM order_items;

-- Query 4: COALESCE with NULL

SELECT
    item_id,
    discount,
    COALESCE(discount, 0) AS updated_discount
FROM order_items;
