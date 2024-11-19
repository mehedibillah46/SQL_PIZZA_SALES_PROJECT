-- Analyze the cumulative revenue generated over time.

SELECT order_date, revenue, sum(revenue) OVER (order by order_date) AS cum_revenue
FROM
(SELECT orders.Order_Date, round(sum(order_details.quantity*pizzas.price),2) as revenue
FROM order_details JOIN pizzas
ON order_details.pizza_Id = pizzas.pizza_id
JOIN orders
ON orders.Order_id = order_details.ORder_Id
Group BY orders.Order_Date) AS sales