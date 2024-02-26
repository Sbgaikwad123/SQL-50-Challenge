# Write your MySQL query statement below
select e1.name,b1.bonus from Employee e1
left join Bonus b1 
on e1.empid = b1.empid
where B1.bonus<1000 or B1.bonus is null