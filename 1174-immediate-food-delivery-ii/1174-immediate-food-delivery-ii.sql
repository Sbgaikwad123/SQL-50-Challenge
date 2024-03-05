-- SELECT 
--     *,
    -- CASE 
    --     WHEN order_date = customer_pref_delivery_date THEN "immediate"
    --     ELSE "scheduled"
    -- END AS "delivey_type"
--  FROM Delivery
--  GROUP BY customer_id 
--  HAVING order_date = MIN(order_date)
SELECT ROUND(AVG(IF(customer_pref_delivery_date=first_order,100,0)),2) AS immediate_percentage  FROM
(SELECT 
    *,
    MIN(order_date) OVER(PARTITION BY customer_id) AS first_order

FROM
    Delivery) t1
WHERE 
    order_date = first_order