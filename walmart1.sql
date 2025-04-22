show databases;
use walmart;
select * from walmart;
alter table walmart rename column MyUnknownColumn to serielno;
alter table walmart drop column serielno;
select count(*) from walmart;

#Question-1
-- What is the total revenue across all stores?
select sum(total) as total_revenue from walmart;

#Question-2
-- What is the average transaction value?
select avg(total) as avg_revenue from walmart;

#Question-3
-- Which branch had the highest total sales?
select branch,max(total) as highest_total_sales from walmart group by branch order by highest_total_sales desc limit 1 ;

#Question-4
-- Which category generated the most revenue?
select category,sum(total) as most_revenue from walmart group by category order by most_revenue desc limit 1 ;

#Question-5
-- What is the total quantity sold per product category?
select category,sum(quantity) as total_quantity from walmart group by category;

#Question-6
-- Which city had the highest number of transactions?
select city,count(*) as transactions_count from walmart group by city order by transactions_count desc limit 1;

#Question-7
-- What is the average rating per city?
select city, avg(rating) as avg_rating from walmart group by city order by avg_rating desc;

#Question-8
-- Which branch has the highest profit margin on average?
select branch ,avg(profit_margin) as highest_margin from walmart group by branch order by highest_margin desc limit 1;

#Question-9
-- What is the average customer rating for each product category?
select category ,avg(rating) as customer_rating from walmart group by category order by customer_rating desc;

#Question-10
-- Which payment method has the highest average rating?
select payment_method, avg(rating) as hig_avg_rating from walmart group by payment_method order by hig_avg_rating desc limit 1;

#Question-11
-- What is the total sales per month?
select DATE_FORMAT(date, '%Y-%m') as month, SUM(total) as total_sales from walmart group by month order by month;

#Question-12
-- What are the busiest hours of the day (based on transaction count)?
select hour(time) as hour , count(*) as transaction_count from walmart group by hour order by transaction_count desc limit 1;

#Question-13
-- Which day of the week has the highest sales?
select DAYNAME(date) as day, SUM(total) as total_sales from walmart group by day order by total_sales desc limit 1;

#Question-14
-- What is the most common payment method?
select payment_method ,count(*) as most_com_method from walmart group by payment_method order by most_com_method desc limit 1;

#Question-15
-- Which payment method has the highest total revenue?
select payment_method ,sum(total)as total_revenue from walmart group by payment_method order by total_revenue desc limit 1;

#Question-16
-- What is the average profit margin by product category?
select category,avg(profit_margin) as p_m from walmart group by category order by p_m ;

#Question-17
-- Which branch is the most profitable overall?
select branch ,sum(total) as profit from walmart group by branch order by profit desc limit 1;

select * from walmart;