# Write your MySQL query statement below
select product_name,year,price 
from Sales t1
join product t2
on t1.product_id = t2.product_id