SELECT
    c.ID customer_id,
    c.FIRST_NAME first_name,
    c.LAST_NAME last_name,
    MIN(o.ORDER_DATE) first_order,
    MAX(o.ORDER_DATE) most_recent_order,
    COUNT(o.ID) number_of_orders
FROM `dbt-tutorial.jaffle_shop.customers` c
LEFT JOIN `dbt-tutorial.jaffle_shop.orders` o ON c.ID = o.USER_ID
GROUP BY customer_id, first_name, last_name