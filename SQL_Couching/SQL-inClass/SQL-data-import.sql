create database pizza;
use pizza;

select * from pizzas;

-- Intermediate:
-- Join the necessary tables to find the total quantity of each pizza category ordered.
-- Determine the distribution of orders by hour of the day.
-- Join relevant tables to find the category-wise distribution of pizzas.
-- Group the orders by date and calculate the average number of pizzas ordered per day.
-- Determine the top 3 most ordered pizza types based on revenue.


-- Advanced:
-- Calculate the percentage contribution of each pizza type to total revenue.
-- Analyze the cumulative revenue generated over time.
-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

select count(*) as orders_placed from pizzas;
select sum(price) as total_revenue from pizzas;
select max(price) as highest_priced from pizzas;
select size,count(*) from pizzas group by size limit 1;
select * from order_details;
SELECT pizza_id, COUNT(*) AS order_count
FROM order_details
GROUP BY pizza_id
ORDER BY order_count DESC
LIMIT 1;

SELECT 
    p.pizza_type_id,
    SUM(od.quantity) AS total_quantity
FROM order_details od
JOIN pizzas p
    ON od.pizza_id = p.pizza_id
GROUP BY p.pizza_type_id
ORDER BY total_quantity DESC
LIMIT 5;

select * from pizzas;
select * from order_details;
select * from orders;
select * from pizza_types;
select pt.name, sum(od.quantity) as total_quantity from order_details od 
join pizzas p on od.pizza_id = p.pizza_id join pizza_types pt on p.pizza_type_id = pt.pizza_type_id group by pt.name order by total_quantity desc limit 5;
select hour(time) as order_hour, count(*) as total_orders from orders group by hour(time) order by order_hour;

select pt.category, sum(od.quantity) as total_pizzas from order_details od 
join pizzas p on od.pizza_id = p.pizza_id 
join pizza_types pt on p.pizza_type_id = pt.pizza_type_id group by pt.category order by total_pizzas desc;

select o.date, sum(od.quantity) as total_pizzas from orders o join order_details od on o.order_id = od.order_id group by o.date;


select pt.name, sum(od.quantity * p.price) as revenue from order_details od 
join pizzas p on od.pizza_id = p.pizza_id join pizza_types pt on p.pizza_type_id = pt.pizza_type_id group by pt.name order by revenue desc limit 3;


select pt.name, sum(od.quantity * p.price) as revenue, round(sum(od.quantity * p.price) * 100 / (select sum(od2.quantity * p2.price) from order_details od2 
join pizzas p2 on od2.pizza_id = p2.pizza_id), 2) as revenue_percentage from order_details od
 join pizzas p on od.pizza_id = p.pizza_id join pizza_types pt on p.pizza_type_id = pt.pizza_type_id group by pt.name order by revenue desc;
 
 select o.date, sum(od.quantity * p.price) as daily_revenue, sum(sum(od.quantity * p.price)) over (order by o.date) as cumulative_revenue from orders o 
 join order_details od on o.order_id = od.order_id join pizzas p on od.pizza_id = p.pizza_id group by o.date order by o.date;
 
 select category, name, revenue from (select pt.category, pt.name, sum(od.quantity * p.price) as revenue, rank() over
 (partition by pt.category order by sum(od.quantity * p.price) desc) as rnk from order_details od 
 join pizzas p on od.pizza_id = p.pizza_id join pizza_types pt on p.pizza_type_id = pt.pizza_type_id
 group by pt.category, pt.name) x where rnk <= 3 order by category, revenue desc;
