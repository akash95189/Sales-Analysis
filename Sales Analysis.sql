create database sales_db;
show databases;
use sales_db;
show tables;

select * from sales limit 10;

-- Question 1: What was the best month for sales? How much was earned that month?
select month, count(total_sales) as total_sales
from sales
group by 1
order by 1;

-- Question 2: What city has the highest sales?
select city, count(total_sales) as total_sales
from sales
group by 1;

-- Question 3: What time should we display advertisements to maximize likehood of customers buying products?
select hour as hours, count(total_sales) as total_sales
from sales
group by 1
order by 1;

-- Question 4: What product sold the most? Why do you think it sold the most?
select product, count(total_sales)
from sales
group by 1;