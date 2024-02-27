# Write your MySQL query statement below
SELECT T1.product_id, IFNULL(ROUND(SUM(units*price)/SUM(units),2),0) AS average_price
FROM Prices T1 
LEFT JOIN UnitsSold T2
ON T1.product_id = T2.product_id 
AND
T2.purchase_date BETWEEN start_date AND end_date
group by product_id